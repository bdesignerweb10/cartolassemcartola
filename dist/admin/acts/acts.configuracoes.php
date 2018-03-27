<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] != "1" || $_SESSION["usu_id"] == "0") die('26001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'abrirtemporada':
			try {
				$qrytempaberta = "UPDATE tbl_config SET temporada_aberta = 1";

				if ($conn->query($qrytempaberta) === TRUE) {
					require_once("acts.inscricoes_encerradas.php");

					$conn->commit();
					$_SESSION["temporada"] = 1;
					echo '{"succeed": true}';
				} else {
	    			throw new Exception("Erro ao abrir a temporada: " . $qrytempaberta . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 26004, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	    break;

	    case 'fechartemporada':
			try {
				$conn->autocommit(FALSE);
				$maxrodada = 0;

				$res_rod = $conn->query("SELECT MAX(id_rodadas) AS id FROM tbl_temporadas WHERE id_anos = " . $_SESSION["temporada_atual"] . " LIMIT 1") or trigger_error("26019 - " . $conn->error);

				if ($res_rod && $res_rod->num_rows > 0) {
			        while($rod = $res_rod->fetch_object()) {
						$maxrodada = $rod->id;
					}
				}

				if($_SESSION["rodada"] != $maxrodada) {
					echo '{"succeed": false, "errno": 26011, "title": "Rodada da temporada não é a última!", "erro": "Para encerrar a temporada, a rodada atual PRECISA ser a última configurada para a temporada (' . $maxrodada . '). Favor contatar o administrador da página!"}';
					$conn->rollback();
					exit();
				}

				$upd_times = "UPDATE tbl_times SET ativo = 0";
				if ($conn->query($upd_times) === TRUE) {
					$upd_incricao = "UPDATE tbl_inscricao SET ativo = 0 WHERE id_anos = " . $_SESSION["temporada_atual"];
					if ($conn->query($upd_incricao) === TRUE) {

						$nexttemp = 0;
						$descnexttemp = "";
						$qrynexttemp = $conn->query("SELECT t.id_anos AS id, a.descricao AS ano 
													   FROM tbl_temporadas t
											     INNER JOIN tbl_anos a ON a.id = t.id_anos
													  WHERE a.descricao > '" . $_SESSION["temp_atual"] . "'
												   ORDER BY a.descricao ASC LIMIT 1") or trigger_error($conn->error);

						if ($qrynexttemp && $qrynexttemp->num_rows > 0) {
					        while($temp = $qrynexttemp->fetch_object()) {
								$nexttemp = $temp->id;
								$descnexttemp = $temp->ano;
							}
						} else {
							echo '{"succeed": false, "errno": 26012, "title": "Próxima temporada não definida!", "erro": "Para encerrar a temporada, é preciso ter uma nova temporada cadastrada e configurada. Cadastre uma nova temporada e tente novamente!"}';
							$conn->rollback();
							exit();
						}

						$qryencerrartemp = "UPDATE tbl_config SET temporada_aberta = 0, status_mercado = 0, rodada_atual = NULL, temporada_atual = $nexttemp";

						if ($conn->query($qryencerrartemp) === TRUE) {
							$conn->commit();
							$_SESSION["temporada"] = 0;
							$_SESSION["temporada_atual"] = $nexttemp;
							$_SESSION["mercado"] = 0;
							$_SESSION["rodada"] = "";
							$_SESSION["rodada_site"] = "";
							echo '{"succeed": true, "temporada": "' . $descnexttemp . '"}';
						} else {
			    			throw new Exception("Erro ao encerrar a temporada: " . $qryencerrartemp . "<br>" . $conn->error);
						}
					} else {
				        throw new Exception("Erro ao desativar as inscrições: " . $upd_incricao . "<br>" . $conn->error);
				}
				} else {
			        throw new Exception("Erro ao desativar o time: " . $upd_times . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 26010, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	    break;

	    case 'abrirmercado':
			try {
				$conn->autocommit(FALSE);

				$timeszerado = 0;
				$qrytimeszerado = $conn->query("SELECT COUNT(id_times) AS count 
										   		  FROM tbl_times_temporadas 
										   		 WHERE id_anos = " . $_SESSION["temporada_atual"] . " 
										   		   AND id_rodadas = " . $_SESSION["rodada"] . "
										   		   AND pontuacao = 0") or trigger_error("26020 - " . $conn->error);
		        
		        while($timezerado = $qrytimeszerado->fetch_object()) {
					$timeszerado = $timezerado->count;
				}

				if($timeszerado > 2) {
					echo '{"succeed": false, "errno": 26014, "title": "Muitos times com pontuação zerada!", "erro": "Não é possível abrir o mercado. Há mais de 2 times com a pontuação ZERADA para a rodada. Favor revisar e tentar novamente!"}';
					$conn->rollback();
					exit();
				}

				$res_rod = $conn->query("SELECT MAX(id_rodadas) AS id FROM tbl_temporadas WHERE id_anos = " . $_SESSION["temporada_atual"] . " LIMIT 1") or trigger_error("26021 - " . $conn->error);

				if ($res_rod && $res_rod->num_rows > 0) {
			        while($rod = $res_rod->fetch_object()) {
						$maxrodada = $rod->id;
					}
				}

				if($_SESSION["mercado"] == 1 && $_SESSION["rodada"] == $maxrodada) {
					echo '{"succeed": false, "errno": 26016, "title": "Encerramento da temporada necessário!", "erro": "Você chegou ao fim da temporada! Você deve ENCERRAR a temporada! Caso o problema persista, favor contatar o administrador da página!"}';
					$conn->rollback();
					exit();
				}

				if($_SESSION["rodada"] < $maxrodada) {
					$nextrod = 0;
					$descnextrod = "";
					$qrynextrod = $conn->query("SELECT t.id_rodadas AS id, r.descricao AS rodada
												  FROM tbl_temporadas t
										    INNER JOIN tbl_rodadas r ON r.id = t.id_rodadas
												 WHERE t.id_anos = " . $_SESSION["temporada_atual"] . " 
												   AND r.descricao > '" . $_SESSION["rod_atual"] . "'
											  ORDER BY t.id_anos, r.descricao ASC LIMIT 1") or trigger_error("26022 - " . $conn->error);

					if ($qrynextrod && $qrynextrod->num_rows > 0) {
				        while($nextrods = $qrynextrod->fetch_object()) {
							$nextrod = $nextrods->id;
							$descnextrod = $nextrods->rodada;
						}
					} else {
						echo '{"succeed": false, "errno": 26015, "title": "Próxima rodada não definida!", "erro": "A rodada seguinte da atual(' . $_SESSION["rod_atual"] . ' º) não existe. Favor verificar se há algum problema com os cadastros ou se o Cartola chegou ao fim da temporada. Caso tenha chegado ao fim da temporada, por favor ENCERRE a temporada!"}';
						$conn->rollback();
						exit();
					}
				} else {
					$nextrod = $_SESSION["rodada"];
					$descnextrod = $_SESSION["rod_atual"];
				}

				$temporada_atual = $_SESSION["temporada_atual"];
				$rodada_atual = $_SESSION["rodada"];
				$chave = 1;
				$vencedor_1 = "";
				$vencedor_2 = "";
				$perdedor_1 = "";
				$perdedor_2 = "";

				$qryselconfrontos = $conn->query("SELECT id_mata_mata, id_time_1, id_time_2, nivel
				  				       				FROM tbl_mata_mata_confrontos 
				  				      			   WHERE id_anos    =  $temporada_atual
				  				        			 AND id_rodadas =  $rodada_atual
				  				        			 AND nivel      > 1
		  				           				ORDER BY chave") or trigger_error("26023 - " . $conn->error);
				if ($qryselconfrontos && $qryselconfrontos->num_rows > 0) {
			        while($confronto = $qryselconfrontos->fetch_object()) {

			        	$pontuacao_time_1 = 0;
			        	$pontuacao_time_2 = 0;

			        	$qryselpontime1 = $conn->query("SELECT pontuacao
						  				     			  FROM tbl_times_temporadas 
						  				    			 WHERE id_times   =  $confronto->id_time_1
						  				      			   AND id_rodadas =  $rodada_atual
						  				      			   AND id_anos    =  $temporada_atual") or trigger_error("26024 - " . $conn->error);
						if ($qryselpontime1 && $qryselpontime1->num_rows > 0) {
					        while($pontime1 = $qryselpontime1->fetch_object()) {
					        	$pontuacao_time_1 = doubleval($pontime1->pontuacao);
					        }
					    }

			        	$qryselpontime2 = $conn->query("SELECT pontuacao
						  				     			  FROM tbl_times_temporadas 
						  				    			 WHERE id_times   =  $confronto->id_time_2
						  				      			   AND id_rodadas =  $rodada_atual
						  				      			   AND id_anos    =  $temporada_atual") or trigger_error("26025 - " . $conn->error);;
						if ($qryselpontime2 && $qryselpontime2->num_rows > 0) {
					        while($pontime2 = $qryselpontime2->fetch_object()) {
					        	$pontuacao_time_2 = doubleval($pontime2->pontuacao);
					        }
					    }

					    if(isset($vencedor_1) && !empty($vencedor_1) && $vencedor_1 > 0) {
					    	if($pontuacao_time_1 > $pontuacao_time_2) {
					    		$vencedor_2 = intval($confronto->id_time_1);
					    		$perdedor_2 = intval($confronto->id_time_2);
					    	}
					    	else {
					    		$vencedor_2 = intval($confronto->id_time_2);
					    		$perdedor_2 = intval($confronto->id_time_1);
					    	}
					    	$qryselproxrodada = $conn->query("SELECT id_rodadas AS id 
					    									    FROM tbl_temporadas 
					    									   WHERE id_anos = $temporada_atual
					    									     AND id_rodadas > $rodada_atual LIMIT 1") or trigger_error("26017 - " . $conn->error);

							if ($qryselproxrodada && $qryselproxrodada->num_rows > 0) {
						        while($proxrod = $qryselproxrodada->fetch_object()) {
						        	$proxrodada = $proxrod->id;
							    	$novo_nivel = $confronto->nivel / 2;

							    	// Disputa de 3 lugar.
							    	// Quando chegamos ao ultimo nivel de competicao (finais) pegamos os perdedores das semi-finais e fazemos um confronto entre eles.
							    	// A definicao de 3 lugar está no fato do nivel do confronto ser 1 e a chave 2
							    	if($novo_nivel == 1) {
							    		$qryconfrontos = "INSERT INTO tbl_mata_mata_confrontos (id_mata_mata, id_time_1, id_time_2, id_anos, id_rodadas, chave, nivel) VALUES ($confronto->id_mata_mata, $perdedor_1, $perdedor_2, $temporada_atual, $proxrodada, 2, $novo_nivel)";

										if ($conn->query($qryconfrontos) !== TRUE) {
											throw new Exception("Erro ao inserir o confronto de terceiro lugar do mata-mata: " . $qryconfrontos . '<br />' . $conn->error);
										}
							    	}

							    	$qryconfrontos = "INSERT INTO tbl_mata_mata_confrontos (id_mata_mata, id_time_1, id_time_2, id_anos, id_rodadas, chave, nivel) VALUES ($confronto->id_mata_mata, $vencedor_1, $vencedor_2, $temporada_atual, $proxrodada, $chave, $novo_nivel)";

									if ($conn->query($qryconfrontos) === TRUE) {
										$vencedor_1 = "";
										$vencedor_2 = "";
							    		$chave++;
									}
									else {
										throw new Exception("Erro ao inserir o confronto do mata-mata: " . $qryconfrontos . '<br />' . $conn->error);
									}
								}
							} else {
								throw new Exception("Não foi possível inserir o confronto do mata-mata porque a rodada seguinte a atual ($rodada_atual) não existe");

							}
					    }
					    else {
					    	if($pontuacao_time_1 > $pontuacao_time_2) {
					    		$vencedor_1 = intval($confronto->id_time_1);
					    		$perdedor_1 = intval($confronto->id_time_2);
					    	}
					    	else {
					    		$vencedor_1 = intval($confronto->id_time_2);
					    		$perdedor_1 = intval($confronto->id_time_1);
					    	}
					    }
			        }
			    }

				$qryabrirmercado = "UPDATE tbl_config SET status_mercado = 1, rodada_atual = $nextrod";

				if ($conn->query($qryabrirmercado) === TRUE) {
					$conn->commit();
					$_SESSION["mercado"] = 1;
					$_SESSION["rodada"] = $nextrod;
					echo '{"succeed": true, "rodada": "' . $descnextrod . '"}';
				} else {
	    			throw new Exception("Erro ao abrir o mercado a temporada: " . $qryabrirmercado . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 26013, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	    break;

	    case 'fecharmercado':
			try {
				$conn->autocommit(FALSE);

				$res_rod = $conn->query("SELECT MAX(id_rodadas) AS id FROM tbl_temporadas WHERE id_anos = " . $_SESSION["temporada_atual"] . " LIMIT 1") or trigger_error("26021 - " . $conn->error);

				if ($res_rod && $res_rod->num_rows > 0) {
			        while($rod = $res_rod->fetch_object()) {
						$maxrodada = $rod->id;
					}
				}

				if($_SESSION["rodada"] == $maxrodada) {
					echo '{"succeed": false, "errno": 26016, "title": "Encerramento da temporada necessário!", "erro": "Você chegou ao fim da temporada! Você deve ENCERRAR a temporada! Caso o problema persista, favor contatar o administrador da página!"}';
					$conn->rollback();
					exit();
				}

				$rodada_atual = $_SESSION["rodada"];

				if($rodada_atual == 'NULL' || empty($rodada_atual)) {
					$res_rod = $conn->query("SELECT MIN(id_rodadas) AS id FROM tbl_temporadas WHERE id_anos = " . $_SESSION["temporada_atual"] . " LIMIT 1") or trigger_error("26018 - " . $conn->error);

					if ($res_rod && $res_rod->num_rows > 0) {
				        while($rod = $res_rod->fetch_object()) {
							$rodada_atual = $rod->id;
						}
					}
				}

				$qryfecharmercado = "UPDATE tbl_config SET status_mercado = 0, rodada_atual = $rodada_atual";

				if ($conn->query($qryfecharmercado) === TRUE) {
					$conn->commit();
					$_SESSION["mercado"] = 0;
					$_SESSION["rodada"] = $rodada_atual;
					echo '{"succeed": true}';
				} else {
	    			throw new Exception("Erro ao fechar o mercado: " . $qryfecharmercado . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 26005, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	    break;

	    case 'upddados':
	    	if(isset($_POST) && !empty($_POST) && $_POST["inicio_temporada"]) {
				$isValid = true;
				$errMsg = "";

				if(!isset($_POST["inicio_temporada"]) || empty($_POST["inicio_temporada"])) {
					$errMsg .= "Data de Início da Temporada";
					$isValid = false;
				}
				
				if(!$isValid) {
					echo '{"succeed": false, "errno": 26006, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
				}
				else {
					try {
						$conn->autocommit(FALSE);
				
						$inicio_temporada = $_POST["inicio_temporada"];
						$email_pagseguro = "";
						$token_pagseguro = "";
						$api_ligada = 0;

						if(isset($_POST["email_pagseguro"]) && !empty($_POST["email_pagseguro"]))
							$email_pagseguro = $_POST["email_pagseguro"];
						
						if(isset($_POST["token_pagseguro"]) && !empty($_POST["token_pagseguro"]))
							$token_pagseguro = $_POST["token_pagseguro"];

						if(isset($_POST["api_ligada"]) && !empty($_POST["api_ligada"]))
							$api_ligada = 1;

						$updinfoc = "UPDATE tbl_config 
						  				SET inicio_temporada = '" . $inicio_temporada . "',
						  				    email_pagseguro = '" . $email_pagseguro . "',
						  				    token_pagseguro = '" . $token_pagseguro . "',
						  				    api_ligada = " . $api_ligada;

						if ($conn->query($updinfoc) === TRUE) {
							$conn->commit();
							$_SESSION["api_ligada"] = $api_ligada;
							$_SESSION["email_pagseguro"] = $email_pagseguro;
							$_SESSION["token_pagseguro"] = $token_pagseguro;
							$_SESSION["inicio_temporada"] = $inicio_temporada;
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao editar as configurações: " . $updinfoc . "<br>" . $conn->error);
						}
					} catch(Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 26007, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
					}
				}
			}
			else 
				echo '{"succeed": false, "errno": 26009, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
	    break;

	    default:
	       echo '{"succeed": false, "errno": 26002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 26003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>