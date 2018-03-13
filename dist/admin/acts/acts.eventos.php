<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('27001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'showupd':
			try {
				if(!isset($_GET['idevento']) || empty($_GET['idevento'])) {
					echo '{"succeed": false, "errno": 27004, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do evento não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idevento'] / $_SESSION["fake_id"];

		    	$qryeventos = $conn->query("SELECT id, titulo, UNIX_TIMESTAMP(data) AS data, local, descricao, ativo FROM tbl_eventos WHERE id = $id") or trigger_error("27005 - " . $conn->error);

				if ($qryeventos && $qryeventos->num_rows > 0) {
					$dados = "";
	    			while($evento = $qryeventos->fetch_object()) {
	    				$dados = '{"id" : "' . $evento->id . '", "titulo" : "' . $evento->titulo . '", "data" : "' . $evento->data . '", "local" : "' . $evento->local . '", "descricao" : "' . $evento->descricao . '",  "ativo" : "' . $evento->ativo . '"}';
	    			}

		    		$qryseltimes = $conn->query("SELECT t.id AS id, t.nome_time AS time, t.nome_presidente AS presidente
		    							     	   FROM tbl_eventos_presenca ep
		    						     	 INNER JOIN tbl_times t ON t.id = ep.id_times
		    								  	  WHERE ep.id_eventos = $id") or trigger_error("27015 - " . $conn->error);

					$list_times = "[";

					if ($qryseltimes && $qryseltimes->num_rows > 0) {
		    			while($times = $qryseltimes->fetch_object()) {
							$list_times .= '{"id": "' . $times->id . '",  "id_time": "' . $times->id * $_SESSION["fake_id"] . '",  "time": "' . $times->time . '",  "presidente": "' . $times->presidente . '"}, ';
		    			}

						$list_times = substr($list_times, 0, -2);
		    		}

					$list_times .= "]";

					echo '{"succeed": true, "dados": ' . $dados . ', "list": ' . $list_times . '}';
					exit();
	    		}
	    		else {
	    			throw new Exception('Nenhum evento encontrado com o ID ' . $id . "!");
	    		}
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 24005, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

	    case 'add':
			try {
				$conn->autocommit(FALSE);

				if(isset($_POST) && !empty($_POST) && $_POST["titulo"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["titulo"]) || empty($_POST["titulo"])) {
						$errMsg .= "Título (nome do evento)";
						$isValid = false;
					}

					if(!isset($_POST["data"]) || empty($_POST["data"])) {
						$errMsg .= "Data do evento";
						$isValid = false;
					}

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição do evento";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 27006, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$titulo = $_POST["titulo"];
						$data = strtotime($_POST["data"]);
						$local = (isset($_POST["local"]) ? $_POST["local"] : "");
						$descricao = $_POST["descricao"];
						$ativo = (isset($_POST["ativo"]) ? $_POST["ativo"] : "0");

						if(time() >= $data) {
							echo '{"succeed": false, "errno": 27009, "title": "Data do evento precisa ser futura!", "erro": "A data do evento precisa ser posterior a atual. Favor revisar e tentar novamente!"}';
							$conn->rollback();
							exit();
						}

						$qry_evento = "INSERT INTO tbl_eventos (titulo, data, local, descricao, ativo, criado_por) VALUES ('" . $titulo . "', FROM_UNIXTIME('". $data ."'), '" . $local . "', '" . $descricao . "', $ativo, " . $_SESSION["usu_id"] . ")";

						if ($conn->query($qry_evento) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao inserir o evento: " . $qry_evento . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 27008, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 27007, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'edit':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idevento']) || empty($_GET['idevento'])) {
					echo '{"succeed": false, "errno": 27014, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do evento não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idevento'] / $_SESSION["fake_id"];

				if(isset($_POST) && !empty($_POST) && $_POST["titulo"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["titulo"]) || empty($_POST["titulo"])) {
						$errMsg .= "Título (nome do evento)";
						$isValid = false;
					}

					if(!isset($_POST["data"]) || empty($_POST["data"])) {
						$errMsg .= "Data do evento";
						$isValid = false;
					}

					if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
						$errMsg .= "Descrição do evento";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 27010, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$titulo = $_POST["titulo"];
						$data = strtotime($_POST["data"]);
						$local = (isset($_POST["local"]) ? $_POST["local"] : "");
						$descricao = $_POST["descricao"];
						$ativo = (isset($_POST["ativo"]) ? $_POST["ativo"] : "0");

						if(time() >= $data) {
							echo '{"succeed": false, "errno": 27011, "title": "Data do evento precisa ser futura!", "erro": "A data do evento precisa ser posterior a atual. Favor revisar e tentar novamente!"}';
							$conn->rollback();
							exit();
						}

						$qry_evento = "UPDATE tbl_eventos 
										  SET titulo = '" . $titulo . "',
										      data = FROM_UNIXTIME('". $data ."'),
										      local = '" . $local . "',
										      descricao = '" . $descricao . "',
										      ativo = " . $ativo . ",
										      criado_por = " . $_SESSION['usu_id'] . "
										WHERE id = $id";
						if ($conn->query($qry_evento) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao alterar o evento: " . $qry_evento . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 27012, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 27013, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'del':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idevento']) || empty($_GET['idevento'])) {
					echo '{"succeed": false, "errno": 27020, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do evento não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id_evento = $_GET['idevento'] / $_SESSION["fake_id"];

				$qrydelpresencaevento = "DELETE FROM tbl_eventos_presenca WHERE id_eventos = $id_evento";
				if ($conn->query($qrydelpresencaevento) === TRUE) {
				
					$qrydelevento = "DELETE FROM tbl_eventos WHERE id = $id_evento";
					if ($conn->query($qrydelevento) === TRUE) {
						$conn->commit();
						echo '{"succeed": true}';
					} else {
				        throw new Exception("Erro ao remover o evento: " . $qrydelevento . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao remover os times do evento: " . $qrydelpresencaevento . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 27021, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'delp':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idtime']) || empty($_GET['idtime'])) {
					echo '{"succeed": false, "errno": 27017, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do time não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				if(!isset($_GET['idevento']) || empty($_GET['idevento'])) {
					echo '{"succeed": false, "errno": 27018, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do evento não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id_time = $_GET['idtime'] / $_SESSION["fake_id"];
				$id_evento = $_GET['idevento'] / $_SESSION["fake_id"];

				$qrydelpresencaevento = "DELETE FROM tbl_eventos_presenca WHERE id_eventos = $id_evento AND id_times = $id_time";
				if ($conn->query($qrydelpresencaevento) === TRUE) {
					$conn->commit();
					echo '{"succeed": true}';
				} else {
			        throw new Exception("Erro ao remover o time do evento: " . $qrydelpresencaevento . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 27019, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    default:
	       echo '{"succeed": false, "errno": 27002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 27003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>