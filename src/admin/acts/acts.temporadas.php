<?php

require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('22001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'selrod':
			try {
				$resrod = $conn->query("SELECT id, descricao FROM tbl_rodadas ORDER BY descricao ASC") or trigger_error("22002 - " . $conn->error);

				$ret_rod = "[";

				if ($resrod && $resrod->num_rows > 0) {
	    			while($rodada = $resrod->fetch_object()) {

	    				$has_temporada = "false";

						$ret_rod .= '{"id": ' . $rodada->id . ', "descricao": "' . $rodada->descricao . '", "has_temporada": ' . $has_temporada . '}, ';
					}
					
					$ret_rod = substr($ret_rod, 0, -2);
				}

				$ret_rod .= "]";
				
				echo '{"succeed": true, "list": ' . $ret_rod . '}';
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 22003, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}

	        break;
	        
	    case 'showupd':
			try {
				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 22004, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idano'] / $_SESSION["fake_id"];

		    	$resrod = $conn->query("SELECT id, descricao FROM tbl_rodadas ORDER BY descricao ASC") or trigger_error("22005 - " . $conn->error);

				$ret_rod = "[";
				$descricao = "";

				if ($resrod && $resrod->num_rows > 0) {
	    			while($rodada = $resrod->fetch_object()) {

	    				$has_temporada = "false";

	    				if($id > 0) {
							$temporada = $conn->query("SELECT id_rodadas FROM tbl_temporadas 
															    	    WHERE id_anos    = " . $id . " 
															      		  AND id_rodadas = " . $rodada->id) 
													or trigger_error("22006 - " . $conn->error);

							if ($temporada && $temporada->num_rows > 0) 
								$has_temporada = "true";
	    				}

						$ret_rod .= '{"id": ' . $rodada->id . ', "descricao": "' . $rodada->descricao . '", "has_temporada": ' . $has_temporada . '}, ';
					}
					
					$ret_rod = substr($ret_rod, 0, -2);

					$qry_get_ano = "SELECT descricao FROM tbl_anos WHERE id = " . $id . " LIMIT 1";
		    		$resano = $conn->query($qry_get_ano) or trigger_error("22007 - " . $conn->error);

					if ($resano && $resano->num_rows > 0) {
		    			while($ano = $resano->fetch_object()) {
							$descricao = $ano->descricao;
						}
					}
					else
			        	throw new Exception("Erro ao selecionar o ano: " . $qry_get_ano . "<br>" . $conn->error);
				}

				$ret_rod .= "]";
				
				echo '{"succeed": true, "descricao": ' . $descricao . ', "list": ' . $ret_rod . '}';
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 22008, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}

	        break;

	    case 'add':
			try {
				$conn->autocommit(FALSE);

				if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição (ano da temporada)";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 22009, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$descricao = $_POST["descricao"];

						$anoexist = $conn->query("SELECT id FROM tbl_anos WHERE descricao = '" . $descricao . "'") or 
								trigger_error("22010 - " . $conn->error);

						if ($anoexist && $anoexist->num_rows > 0) {
							echo '{"succeed": false, "errno": 22011, "title": "Ano já cadastrado no banco de dados!", "erro": "Ano da temporada já foi cadastrado, favor revisar os dados e tentar novamente!"}';
							$conn->rollback();
							exit();
						}

						if($descricao < $_SESSION["temp_atual"]) {
							echo '{"succeed": false, "errno": 22012, "title": "Não é possível cadastrar temporadas anteriores a atual!", "erro": "Não é possivel cadastrar um ano de temporada que seja anterior a temporada atual. Favor revisar os dados e tentar novamente!"}';
							$conn->rollback();
							exit();
						}

						$qry_ano = "INSERT INTO tbl_anos (descricao) VALUES ('" . $descricao . "')";

						if ($conn->query($qry_ano) === TRUE) {
							$id_ano = $conn->insert_id;

							if(isset($_POST["rodada"]) && !empty($_POST["rodada"])) {
								$rodada =  $_POST["rodada"];
								$var_erros = "";

								foreach ($rodada as $rodarray) {
									if(isset($rodarray) && !empty($rodarray)) {
										$qry_temporada = "INSERT INTO tbl_temporadas (id_anos, id_rodadas) VALUES ($id_ano, $rodarray)";

										if ($conn->query($qry_temporada) !== TRUE) {
											$var_erros .= "Erro ao alterar a temporada ($descricao/$rodarray): " . $conn->error . "<br />";
										}
									}
								}

								if(strlen($var_erros) > 0) {
					        		throw new Exception($var_erros);
								}
							}

							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao inserir o ano: " . $qry_ano . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 22013, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 22014, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;
	        
	    case 'edit':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 22015, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idano'] / $_SESSION["fake_id"];

				$timestemp = $conn->query("SELECT COUNT(id) AS count FROM tbl_times_temporadas WHERE id_anos = " . $id) 
												or trigger_error("22016 - " . $conn->error);

				if ($timestemp && $timestemp->num_rows > 0) {
					$qtdtimestemp = 0;
		        	while($timetemp = $timestemp->fetch_object()) {
						$qtdtimestemp = $timetemp->count;
		        	}

		        	if($qtdtimestemp > 0) {
		        		throw new Exception("Não é possível alterar as rodadas da temporada pois, existem times cadastrados para disputar a mesma. Por favor, contate os administradores do sistema com as informações de temporada e rodadas.");
		        	}
		        }

				$ano = $conn->query("SELECT descricao FROM tbl_anos WHERE id = " . $id) or trigger_error("22017 - " . $conn->error);

				if ($ano && $ano->num_rows > 0) {
					while($res_ano = $ano->fetch_object()) {
						$descricao = $res_ano->descricao;
					}

					if($descricao < $_SESSION["temp_atual"]) {
						echo '{"succeed": false, "errno": 22018, "title": "Não é possível alterar temporadas anteriores ou iguais a atual!", "erro": "Não é possivel alterar um ano de temporada que seja anterior ou igual a temporada atual. Favor revisar os dados e tentar novamente!"}';
						$conn->rollback();
						exit();
					}
				}

				$sqldeltemp = "DELETE FROM tbl_temporadas WHERE id_anos = " . $id;

				if ($conn->query($sqldeltemp) === TRUE) {
					if(isset($_POST["rodada"]) && !empty($_POST["rodada"])) {
						$rodada =  $_POST["rodada"];
						$var_erros = "";

						foreach ($rodada as $rodarray) {
							if(isset($rodarray) && !empty($rodarray)) {
								$qry_temporada = "INSERT INTO tbl_temporadas (id_anos, id_rodadas) VALUES ($id, $rodarray)";

								if ($conn->query($qry_temporada) !== TRUE) {
									$var_erros .= "Erro ao alterar a temporada ($descricao/$rodarray): " . $conn->error . "<br />";
								}
							}
						}

						if(strlen($var_erros) > 0) {
			        		throw new Exception($var_erros);
						}
					}

					$conn->commit();
					echo '{"succeed": true}';
				} else {
			        throw new Exception("Erro ao limpar as temporadas antigas: " . $sqldeltemp . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 22019, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'del':
			try {
				$conn->autocommit(FALSE);
				
				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 22020, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idano'] / $_SESSION["fake_id"];
				
				$ano = $conn->query("SELECT descricao FROM tbl_anos WHERE id = " . $id) or trigger_error("22021 - " . $conn->error);

				if ($ano && $ano->num_rows > 0) {
					while($res_ano = $ano->fetch_object()) {
						$descricao = $res_ano->descricao;
					}

					if($descricao <= $_SESSION["temp_atual"]) {
						echo '{"succeed": false, "errno": 22022, "title": "Não é possível remover temporadas anteriores ou iguais a atual!", "erro": "Não é possivel remover um ano de temporada que seja anterior ou igual a temporada atual. Favor revisar os dados e tentar novamente!"}';
						$conn->rollback();
						exit();
					}
				}

				$timestemp = $conn->query("SELECT COUNT(id) AS count FROM tbl_times_temporadas WHERE id_anos = " . $id) 
												or trigger_error("22023 - " . $conn->error);

				if ($timestemp && $timestemp->num_rows > 0) {
					$qtdtimestemp = 0;
		        	while($timetemp = $timestemp->fetch_object()) {
						$qtdtimestemp = $timetemp->count;
		        	}

		        	if($qtdtimestemp > 0) {
		        		throw new Exception("Não é possível remover as rodadas da temporada pois, existem times cadastrados para disputar a mesma. Por favor, contate os administradores do sistema com as informações de temporada e rodadas.");
		        	}
		        }
				$sqldeltemp = "DELETE FROM tbl_temporadas WHERE id_anos = " . $id;

				if ($conn->query($sqldeltemp) === TRUE) {
					$sqldelanos = "DELETE FROM tbl_anos WHERE id = " . $id;

					if ($conn->query($sqldelanos) === TRUE) {
						$conn->commit();
						echo '{"succeed": true}';
					} else {
				        throw new Exception("Erro ao limpar o ano da temporada: " . $sqldelanos . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao limpar as temporadas antigas: " . $sqldeltemp . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 22024, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;
	    
	    default:
	       echo '{"succeed": false, "errno": 22025, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 22026, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>