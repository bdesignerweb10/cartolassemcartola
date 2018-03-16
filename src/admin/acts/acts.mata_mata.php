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
						$ret_time .= '{"id": ' . $time->id . ', "descricao": "' . $time->nome_time . '", "has_temporada": false}, ';
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
						if($_POST["rodada_inicio"] <= $_SESSION["rodada"]) {
							echo '{"succeed": false, "errno": 29009, "title": "Rodada de início antiga!", "erro": "início do mata-mata deve ser superior à rodada atual!"}';
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

	    
	    	break;

	    case 'del':
	    	break;

	    default:
	       echo '{"succeed": false, "errno": 29002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 29003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>