<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('2019001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'showupd': 
	    	try {
				if(!isset($_GET['idcompeticao']) || empty($_GET['idcompeticao'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 2019007, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID da competição não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idcompeticao'] / $_SESSION["fake_id"];

		    	$querycomp = $conn->query("SELECT descricao, valor, is_default, imagem_fundo, informacoes, outro_valor
		    								 FROM tbl_competicoes 
		    								WHERE id = $id") or trigger_error("2019008 - " . $conn->error);

				if ($querycomp && $querycomp->num_rows > 0) {
	    			while($c = $querycomp->fetch_object()) {
	    				$isdef = "false";
	    				if($c->is_default == 1)
	    					$isdef = "true";

						echo '{"succeed": true, "id": ' . $id . ', "descricao": "' . $c->descricao . '", "valor": ' . $c->valor . ', "is_default": ' . $isdef . ', "capa": "' . $c->imagem_fundo . '", "informacoes": "' . $c->informacoes . '", "outro_valor": "' . $c->outro_valor . '"}';
	    			}
	    		}
				
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 2019009, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'add':
	    	try {
				$conn->autocommit(FALSE);

				if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição (nome da competição)";
						$isValid = false;
					}

					if(!isset($_POST["informacoes"]) || empty($_POST["informacoes"])) {
						$errMsg .= "Informações da competição";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 2019004, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$descricao = $_POST["descricao"];
						$valor = str_replace(',', '.', $_POST["valor"]);
						$informacoes = $_POST["informacoes"];
						$outro_valor = "";
						$is_default = 0;
						$nome_capa = "";
						$id_mata_mata = "NULL";

						if(isset($_POST["is_default"]) && !empty($_POST["is_default"]))
							$is_default = 1;

						if(isset($_POST["ch_outro_valor"]) && !empty($_POST["ch_outro_valor"])) {
							if(!isset($_POST["outro_valor"]) || empty($_POST["outro_valor"])) {
								echo '{"succeed": false, "errno": 2019017, "title": "Valor da competicão não informado!", "erro": "Caso deseje informar outro tipo de valor que não monetário para a competição, é necessário informar o valor!"}';
								$conn->rollback();
								exit();
							}

							$valor = 0;
							$outro_valor = $_POST["outro_valor"];
						}

						if(isset($_FILES['capa'])) {
							$nome_capa = formataNomeEscudo($descricao);

							if($_FILES['capa']['type'] != "image/png") {
				        		throw new Exception("Imagem enviada precisa ser tipo PNG!");
							}

							if (!is_dir('../../img/competicao/')) {
							    $ret = mkdir('../../img/competicao/', 0777, true);
							    if ($ret !== true) {
							        throw new Exception("Erro ao criar o diretório!");
								}
							}
						    
						    $pathCompeticao = "../../img/competicao/" . $nome_capa;

						    if(is_uploaded_file($_FILES['capa']['tmp_name']) || $_FILES['capa']['error'] !== UPLOAD_ERR_OK) {
						        if (!move_uploaded_file($_FILES['capa']['tmp_name'], $pathCompeticao))
									throw new Exception("Erro ao salvar o arquivo. Aparentemente você não tem permissão de escrita.");
						    }
						    else {
				        		throw new Exception("Arquivo não foi enviado com sucesso. Favor contatar o administrador da página.");
						    }
						} 

						if($is_default == 0) {
							$insmata = "INSERT INTO tbl_mata_mata (descricao, total_times) VALUES ('" . $descricao . "', '0')";

							if ($conn->query($insmata) !== TRUE) {
						        throw new Exception("Erro ao inserir a competição: " . $inscompe . "<br>" . $conn->error);
							}
							$id_mata_mata = $conn->insert_id;
						}

						$inscompe = "INSERT INTO tbl_competicoes (descricao, valor, is_default, imagem_fundo, outro_valor, informacoes, id_mata_mata) 
										  VALUES ('" . $descricao . "', " . $valor .", " . $is_default .", '" . $nome_capa ."', '" . $outro_valor ."', '" . $informacoes ."', " . $id_mata_mata . ");";

						if ($conn->query($inscompe) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao inserir a competição: " . $inscompe . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 2019005, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 2019006, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;
	        
	    case 'edit':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idcompeticao']) || empty($_GET['idcompeticao'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 2019010, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID da competição não enviado! Favor contatar o administrador mostrando o erro!"}';
				}
				
				$id = $_GET['idcompeticao'] / $_SESSION["fake_id"];
				$imagem_capa = "";
				$id_mata_mata = 0;

				$qrydelimg = $conn->query("SELECT imagem_fundo, id_mata_mata 
		    								 FROM tbl_competicoes 
		    								WHERE id = $id") or trigger_error("2019008 - " . $conn->error);

				if ($qrydelimg && $qrydelimg->num_rows > 0) {
	    			while($c = $qrydelimg->fetch_object()) {
						$imagem_capa = '../../img/competicao/' . $c->imagem_fundo;
						$id_mata_mata = $c->id_mata_mata;
	    			}
	    		}

				if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição (nome da competição)";
						$isValid = false;
					}

					if(!isset($_POST["informacoes"]) || empty($_POST["informacoes"])) {
						$errMsg .= "Informações da competição";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 2019013, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$descricao = $_POST["descricao"];
						$valor = str_replace(',', '.', $_POST["valor"]);
						$informacoes = $_POST["informacoes"];
						$outro_valor = "";
						$nome_capa = "";
						$is_default = 0;

						if(isset($_POST["is_default"]) && !empty($_POST["is_default"]))
							$is_default = 1;

						if(isset($_POST["ch_outro_valor"]) && !empty($_POST["ch_outro_valor"])) {
							if(!isset($_POST["outro_valor"]) || empty($_POST["outro_valor"])) {
								echo '{"succeed": false, "errno": 2019018, "title": "Valor da competicão não informado!", "erro": "Caso deseje informar outro tipo de valor que não monetário para a competição, é necessário informar o valor!"}';
								$conn->rollback();
								exit();
							}

							$valor = 0;
							$outro_valor = $_POST["outro_valor"];
						}

						if(isset($_FILES['capa'])) {
							$nome_capa = formataNomeEscudo($descricao);

							unlink($imagem_capa);

							if($_FILES['capa']['type'] != "image/png") {
				        		throw new Exception("Imagem enviada precisa ser tipo PNG!");
							}

							if (!is_dir('../../img/competicao/')) {
							    $ret = mkdir('../../img/competicao/', 0777, true);
							    if ($ret !== true) {
							        throw new Exception("Erro ao criar o diretório!");
								}
							}
						    
						    $pathCompeticao = "../../img/competicao/" . $nome_capa;

						    if(is_uploaded_file($_FILES['capa']['tmp_name']) || $_FILES['capa']['error'] !== UPLOAD_ERR_OK) {
						        if (!move_uploaded_file($_FILES['capa']['tmp_name'], $pathCompeticao)) 
						        	throw new Exception("Erro ao salvar o arquivo. Aparentemente você não tem permissão de escrita.");
						    }
						    else {
				        		throw new Exception("Arquivo não foi enviado com sucesso. Favor contatar o administrador da página.");
						    }
						} 

						if($is_default == 0) {
							$updmata = "UPDATE tbl_mata_mata SET descricao  = '" . $descricao . "' WHERE id = " . $id_mata_mata;

							if ($conn->query($updmata) !== TRUE) {
						        throw new Exception("Erro ao atualizar a competição: " . $updmata . "<br>" . $conn->error);
							}
						}

					    $updcompe = "UPDATE tbl_competicoes 
					    				SET descricao = '" . $descricao . "', 
					    					valor = " . $valor .", 
					    					is_default = " . $is_default .", 
					    					imagem_fundo = '" . $nome_capa ."', 
					    					outro_valor = '" . $outro_valor ."', 
					    					informacoes = '" . $informacoes ."'
					    			  WHERE id = $id";

						if ($conn->query($updcompe) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao atualizar a competição: " . $updcompe . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 2019012, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 2019011, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'del':
			$conn->autocommit(FALSE);
			try {
				if(!isset($_GET['idcompeticao']) || empty($_GET['idcompeticao'])) {
					echo '{"succeed": false, "errno": 2019014, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID da competição não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}
				
				$id = $_GET['idcompeticao'] / $_SESSION["fake_id"];

				$qrydelimg = $conn->query("SELECT imagem_fundo, is_default, id_mata_mata
		    								 FROM tbl_competicoes 
		    								WHERE id = $id") or trigger_error("2019008 - " . $conn->error);

				if ($qrydelimg && $qrydelimg->num_rows > 0) {
	    			while($c = $qrydelimg->fetch_object()) {
	    				if($c->is_default == 1) {
							$conn->rollback();
							echo '{"succeed": false, "errno": 2019016, "title": "Erro ao excluir a competicão!", "erro": "Não é possível excluir a Liga (competição principal)!"}';
							exit();
	    				}
	    				else {
	    					$id_mata_mata = $c->id_mata_mata;

	    					$total_times = 0;
							$qrytotaltimes = $conn->query("SELECT total_times FROM tbl_mata_mata WHERE id = $id_mata_mata") or trigger_error("2019017 - " . $conn->error);

							if ($qrytotaltimes && $qrytotaltimes->num_rows > 0) {
								while($totaltimes = $qrytotaltimes->fetch_object()) {
									$total_times = $totaltimes->total_times;
								}
							}

							$valconfrontos = $conn->query("SELECT id_mata_mata FROM tbl_mata_mata_confrontos WHERE id_mata_mata = $id_mata_mata") 
															or trigger_error("2019018 - " . $conn->error);

							if ($valconfrontos && $valconfrontos->num_rows > 0) {
								if(($total_times / 2) != $valconfrontos->num_rows) {
									$conn->rollback();
									echo '{"succeed": false, "errno": 29021, "title": "Erro na validação de confrontos!", "erro": "Não é possível remover o mata-mata. Os confrontos já passaram de sua fase inicial. Aguarde o mata-mata terminar ou cadastre outro."}';
									exit();
								}
							}

							$qrydelconfrontos = "DELETE FROM tbl_mata_mata_confrontos WHERE id_mata_mata = $id_mata_mata";
							if ($conn->query($qrydelconfrontos) === TRUE) {
								$qrydeltimes = "DELETE FROM tbl_mata_mata_times WHERE id_mata_mata = $id_mata_mata";
								if ($conn->query($qrydeltimes) === TRUE) {
									$qrydelmatamata = "DELETE FROM tbl_mata_mata WHERE id = $id_mata_mata";
									if ($conn->query($qrydelmatamata) !== TRUE) {
								        throw new Exception("Erro ao remover o mata-mata: " . $qrydelmatamata . "<br>" . $conn->error);
									}
								} else {
							        throw new Exception("Erro ao remover os times do mata-mata: " . $qrydeltimes . "<br>" . $conn->error);
								}
							} else {
						        throw new Exception("Erro ao remover os confrontos do mata-mata: " . $qrydelconfrontos . "<br>" . $conn->error);
							}
	    				}
						unlink('../../img/competicao/' . $c->imagem_fundo);
	    			}
	    		}

				$qrydelcomp = "DELETE FROM tbl_competicoes WHERE id = " . $id;

				if ($conn->query($qrydelcomp) === TRUE) {
					$conn->commit();
					echo '{"succeed": true}';
				} else {
					$conn->rollback();
					echo '{"succeed": false, "errno": 2019015, "title": "Erro ao excluir a competicão!", "erro": "Erro ao remover a competição: ' . $qrydelcomp . '<br>' . $conn->error . '"}';
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 2019019, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;
	    
	    default:
	       echo '{"succeed": false, "errno": 2019002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 2019003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>