<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('29001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
		case 'seltimes':
			try {
				$restime = $conn->query("SELECT id, nome_time FROM tbl_times WHERE ativo = 1 ORDER BY nome_time ASC") or trigger_error("29004 - " . $conn->error);

				$ret_time = "[";

				if ($restime && $restime->num_rows > 0) {
	    			while($time = $restime->fetch_object()) {
						$ret_time .= '{"id": ' . $time->id . ', "descricao": "' . $time->nome_time . '", "has_time": false}, ';
					}
					
					$ret_time = substr($ret_time, 0, -2);
				}

				$ret_time .= "]";
				
				echo '{"succeed": true, "list": ' . $ret_time . '}';
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 29005, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}
			break;

	    case 'showupd':
			try {
				if(!isset($_GET['idmatamata']) || empty($_GET['idmatamata'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 29013, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do mata-mata não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idmatamata'] / $_SESSION["fake_id"];

		    	$resmatamata = $conn->query("SELECT descricao, total_times FROM tbl_mata_mata WHERE id = $id") or trigger_error("29011 - " . $conn->error);

				$descricao = "";
				$total_times = "";
				$rodada_inicio = 0;
				$nivel = "";

				if ($resmatamata && $resmatamata->num_rows > 0) {
	    			while($matamata = $resmatamata->fetch_object()) {
	    				$descricao = $matamata->descricao;
	    				$total_times = $matamata->total_times;
	    				$nivel = $total_times / 2;
	    			}
	    		}


				$times = "[";

				$restime = $conn->query("SELECT id, nome_time FROM tbl_times WHERE ativo = 1 ORDER BY nome_time ASC") or trigger_error("29012 - " . $conn->error);
				if ($restime && $restime->num_rows > 0) {
	    			while($time = $restime->fetch_object()) {
	    				$has_time = "false";

	    				if($id > 0) {
							$mmtimes = $conn->query("SELECT id_time FROM tbl_mata_mata_times 
															       WHERE id_mata_mata = $id 
															      	 AND id_time 	  = " . $time->id) 
													or trigger_error("29010 - " . $conn->error);

							if ($mmtimes && $mmtimes->num_rows > 0) 
								$has_time = "true";
	    				}

						$times .= '{"id": ' . $time->id . ', "descricao": "' . $time->nome_time . '", "has_time": ' . $has_time . '}, ';
					}
					
					$times = substr($times, 0, -2);
				}

				$times .= "]";

				$chaves = "[";
				$resconfrontos = $conn->query("SELECT id_time_1, id_time_2, chave, id_rodadas
												 FROM tbl_mata_mata_confrontos 
												WHERE id_mata_mata = $id
												  AND nivel = $nivel") or trigger_error("29004 - " . $conn->error);
				if ($resconfrontos && $resconfrontos->num_rows > 0) {
	    			while($confronto = $resconfrontos->fetch_object()) {
	    				$rodada_inicio = $confronto->id_rodadas;
						$chaves .= '{"chave": ' . $confronto->chave . ', "confrontos": [{"time1" : ' . $confronto->id_time_1 . '}, {"time2" : ' . $confronto->id_time_2 . '}]}, ';
					}
					
					$chaves = substr($chaves, 0, -2);
				}
				$chaves .= "]";
				
				echo '{"succeed": true, "id": ' . $id . ', "descricao": "' . $descricao . '", "total_times": ' . $total_times . ', "rodada_inicio": ' . $rodada_inicio . ', "times": ' . $times . ', "chaves": ' . $chaves . '}';
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 29009, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}
	    	break;

		case 'add':
			try {
				$conn->autocommit(FALSE);

				if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição (nome do mata-mata)";
						$isValid = false;
					}

					if(!isset($_POST["total_times"]) || empty($_POST["total_times"])) {
						$errMsg .= "Total de times do mata-mata";
						$isValid = false;
					}

					if(!isset($_POST["rodada_inicio"]) || empty($_POST["rodada_inicio"])) {
						$errMsg .= "Rodada de início";
						$isValid = false;
					}

					if(!isset($_POST["chave"]) || empty($_POST["chave"])) {
						$errMsg .= "Chaves de confontos";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 29008, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						if($_POST["rodada_inicio"] < $_SESSION["rodada"]) {
							echo '{"succeed": false, "errno": 29009, "title": "Rodada de início antiga!", "erro": "início do mata-mata deve ser superior ou igual à rodada atual!"}';
							$conn->rollback();
							exit();
						}

						$descricao = $_POST["descricao"];
						$total_times = $_POST["total_times"];
						$rodada_inicio = $_POST["rodada_inicio"];
						$chaves = $_POST["chave"];

						$nivel_confronto = $total_times / 2;

						$qry_mata_mata = "INSERT INTO tbl_mata_mata (descricao, total_times) 
											   VALUES ('" . $descricao . "', '" . $total_times . "')";

						if ($conn->query($qry_mata_mata) === TRUE) {
							$id_mata_mata = $conn->insert_id;
							$var_erros = "";

							foreach ($chaves as $i => $chave) {
								$qrymmtimes1 = "INSERT INTO tbl_mata_mata_times (id_mata_mata, id_time) VALUES ($id_mata_mata, " . $chave["1"] . ")";
								if ($conn->query($qrymmtimes1) === TRUE) {
									$qrymmtimes2 = "INSERT INTO tbl_mata_mata_times (id_mata_mata, id_time) VALUES ($id_mata_mata, " . $chave["2"] . ")";
									if ($conn->query($qrymmtimes2) === TRUE) {
										$qryconfrontos = "INSERT INTO tbl_mata_mata_confrontos (id_mata_mata, id_time_1, id_time_2, id_anos, id_rodadas, chave, nivel) VALUES ($id_mata_mata, " . $chave["1"] . ", " . $chave["2"] . ", " . $_SESSION["temporada_atual"] . ", $rodada_inicio, $i, $nivel_confronto)";

										if ($conn->query($qryconfrontos) !== TRUE) {
											$var_erros .= "Erro ao inserir o confronto da chave $i: " . $qryconfrontos . '<br />' . $conn->error . "<br />";
										}
									}
									else {
										$var_erros .= "Erro ao inserir o time #" . $chave["2"] . " no mata-mata: " . $conn->error . "<br />";
									}
								}
								else {
									$var_erros .= "Erro ao inserir o time #" . $chave["1"] . " no mata-mata: " . $conn->error . "<br />";
								}
							}

							if(strlen($var_erros) > 0) {
				        		throw new Exception($var_erros);
							}

							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao inserir o mata-mata: " . $qry_mata_mata . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 29006, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 29007, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
			break;

	    case 'edit':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idmatamata']) || empty($_GET['idmatamata'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 29014, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do mata-mata não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idmatamata'] / $_SESSION["fake_id"];

				if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição (nome do mata-mata)";
						$isValid = false;
					}

					if(!isset($_POST["total_times"]) || empty($_POST["total_times"])) {
						$errMsg .= "Total de times do mata-mata";
						$isValid = false;
					}

					if(!isset($_POST["rodada_inicio"]) || empty($_POST["rodada_inicio"])) {
						$errMsg .= "Rodada de início";
						$isValid = false;
					}

					if(!isset($_POST["chave"]) || empty($_POST["chave"])) {
						$errMsg .= "Chaves de confontos";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 29016, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						if($_POST["rodada_inicio"] <= $_SESSION["rodada"]) {
							echo '{"succeed": false, "errno": 29017, "title": "Rodada de início antiga!", "erro": "início do mata-mata deve ser superior à rodada atual!"}';
							$conn->rollback();
							exit();
						}

						$descricao = $_POST["descricao"];
						$total_times = $_POST["total_times"];
						$rodada_inicio = $_POST["rodada_inicio"];
						$chaves = $_POST["chave"];

						$nivel_confronto = $total_times / 2;

						$qry_mata_mata = "UPDATE tbl_mata_mata 
						 					 SET descricao = '" . $descricao . "', 
												 total_times = '" . $total_times . "'
									   	   WHERE id = $id";

						if ($conn->query($qry_mata_mata) === TRUE) {
							$var_erros = "";

							$qrydelconfrontos = "DELETE FROM tbl_mata_mata_confrontos WHERE id_mata_mata = $id";
							if ($conn->query($qrydelconfrontos) === TRUE) {
								$qrydeltimes = "DELETE FROM tbl_mata_mata_times WHERE id_mata_mata = $id";
								if ($conn->query($qrydeltimes) === TRUE) {
									foreach ($chaves as $i => $chave) {
										$qrymmtimes1 = "INSERT INTO tbl_mata_mata_times (id_mata_mata, id_time) VALUES ($id, " . $chave["1"] . ")";
										if ($conn->query($qrymmtimes1) === TRUE) {
											$qrymmtimes2 = "INSERT INTO tbl_mata_mata_times (id_mata_mata, id_time) VALUES ($id, " . $chave["2"] . ")";
											if ($conn->query($qrymmtimes2) === TRUE) {
												$qryconfrontos = "INSERT INTO tbl_mata_mata_confrontos (id_mata_mata, id_time_1, id_time_2, id_anos, id_rodadas, chave, nivel) VALUES ($id, " . $chave["1"] . ", " . $chave["2"] . ", " . $_SESSION["temporada_atual"] . ", $rodada_inicio, $i, $nivel_confronto)";

												if ($conn->query($qryconfrontos) !== TRUE) {
													$var_erros .= "Erro ao inserir o confronto da chave $i: " . $qryconfrontos . '<br />' . $conn->error . "<br />";
												}
											}
											else {
												$var_erros .= "Erro ao inserir o time #" . $chave["2"] . " no mata-mata: " . $conn->error . "<br />";
											}
										}
										else {
											$var_erros .= "Erro ao inserir o time #" . $chave["1"] . " no mata-mata: " . $conn->error . "<br />";
										}
									}

									if(strlen($var_erros) > 0) {
						        		throw new Exception($var_erros);
									}

									$conn->commit();
									echo '{"succeed": true}';
								} else {
							        throw new Exception("Erro ao remover os times do mata-mata: " . $qrydeltimes . "<br>" . $conn->error);
								}
							} else {
						        throw new Exception("Erro ao remover os confrontos do mata-mata: " . $qrydelconfrontos . "<br>" . $conn->error);
							}
						} else {
					        throw new Exception("Erro ao atualizar o mata-mata: " . $qry_mata_mata . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 29018, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 29019, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	    	break;

	    case 'del':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idmatamata']) || empty($_GET['idmatamata'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 29020, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do mata-mata não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idmatamata'] / $_SESSION["fake_id"];

				$total_times = 0;
				$qrytotaltimes = $conn->query("SELECT total_times FROM tbl_mata_mata WHERE id = $id") or trigger_error("29023 - " . $conn->error);

				if ($qrytotaltimes && $qrytotaltimes->num_rows > 0) {
					while($totaltimes = $qrytotaltimes->fetch_object()) {
						$total_times = $totaltimes->total_times;
					}
				}

				$valconfrontos = $conn->query("SELECT id_mata_mata FROM tbl_mata_mata_confrontos WHERE id_mata_mata = $id") 
												or trigger_error("29022 - " . $conn->error);

				if ($valconfrontos && $valconfrontos->num_rows > 0) {
					if(($total_times / 2) != $valconfrontos->num_rows) {
						$conn->rollback();
						echo '{"succeed": false, "errno": 29021, "title": "Erro na validação de confrontos!", "erro": "Não é possível remover o mata-mata. Os confrontos já passaram de sua fase inicial. Aguarde o mata-mata terminar ou cadastre outro."}';
						exit();
					}
				}

				$qrydelconfrontos = "DELETE FROM tbl_mata_mata_confrontos WHERE id_mata_mata = $id";
				if ($conn->query($qrydelconfrontos) === TRUE) {
					$qrydeltimes = "DELETE FROM tbl_mata_mata_times WHERE id_mata_mata = $id";
					if ($conn->query($qrydeltimes) === TRUE) {
						$qrydelmatamata = "DELETE FROM tbl_mata_mata WHERE id = $id";
						if ($conn->query($qrydelmatamata) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao remover o mata-mata: " . $qrydelmatamata . "<br>" . $conn->error);
						}
					} else {
				        throw new Exception("Erro ao remover os times do mata-mata: " . $qrydeltimes . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao remover os confrontos do mata-mata: " . $qrydelconfrontos . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 29021, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	    	break;

	    default:
	       echo '{"succeed": false, "errno": 29002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 29003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>