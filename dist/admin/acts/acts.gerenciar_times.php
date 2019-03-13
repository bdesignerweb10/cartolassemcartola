<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('24001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'showupd':
			try {
				if(!isset($_GET['idtime']) || empty($_GET['idtime'])) {
					echo '{"succeed": false, "errno": 24006, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do time não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idtime'] / $_SESSION["fake_id"];

		    	$qrytimes = $conn->query("SELECT * FROM tbl_times WHERE id = $id") or trigger_error("24007 - " . $conn->error);

				if ($qrytimes && $qrytimes->num_rows > 0) {
					$dados = "";
	    			while($time = $qrytimes->fetch_object()) {
	    				$dados = '{"id" : "' . $time->id . '", "nome_time" : "' . $time->nome_time . '", "nome_presidente" : "' . $time->nome_presidente . '", "email" : "' . $time->email . '", "telefone" : "' . $time->telefone . '", "historia" : "' . $time->historia . '", "ano_fundacao" : "' . $time->ano_fundacao . '"}';
	    			}
					echo '{"succeed": true, "dados": ' . $dados . '}';
					exit();
	    		}
	    		else {
	    			throw new Exception('Nenhum time encontrado com o ID ' . $id . "!");
	    		}
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 24005, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

	    case 'edit':
			if(!isset($_GET['idtime']) || empty($_GET['idtime'])) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 24008, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do time não enviado! Favor contatar o administrador mostrando o erro!"}';
				exit();
			}

			if(isset($_POST) && !empty($_POST) && $_POST["nome_time"]) {
				$isValid = true;
				$errMsg = "";

				if(!isset($_POST["nome_time"]) || empty($_POST["nome_time"])) {
					$errMsg .= "Nome do Time";
					$isValid = false;
				}

				if(!isset($_POST["nome_presidente"]) || empty($_POST["nome_presidente"])) {
					if(!$isValid)
						$errMsg .= ", ";	
					
					$errMsg .= "Nome do Presidente";
					$isValid = false;
				}
				
				if(!isset($_POST["email"]) || empty($_POST["email"])) {
					if(!$isValid)
						$errMsg .= ", ";	
					
					$errMsg .= "E-mail";
					$isValid = false;
				}
				
				if(!isset($_POST["telefone"]) || empty($_POST["telefone"])) {
					if(!$isValid)
						$errMsg .= ", ";	
					
					$errMsg .= "Telefone";
					$isValid = false;
				}

				if(!$isValid) {
					echo '{"succeed": false, "errno": 24012, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
				}
				else {
					try {
						$conn->autocommit(FALSE);
				
						$id = $_GET['idtime'] / $_SESSION["fake_id"];

						$time = $_POST["nome_time"];
						$nome = $_POST["nome_presidente"];
						$email = $_POST["email"];
						$telefone = $_POST["telefone"];
						$escudo = formataNomeEscudo($time);
						$historia = $_POST["historia"];
						$ano_fundacao = $_POST["ano_fundacao"];

						$upd_time = "UPDATE tbl_times 
						  				SET nome_time = '" . $time . "',
						  				    nome_presidente = '" . $nome . "',
						  				    escudo_time = '" . $escudo . "',
						  				    email = '" . $email . "',
						  				    telefone = '" . $telefone . "',
						  				    historia = '" . $historia . "',
						  				    ano_fundacao = '" . $ano_fundacao . "'
						  			  WHERE id = $id";

						if ($conn->query($upd_time) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao editar o time: " . $upd_time . "<br>" . $conn->error);
						}
					} catch(Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 24009, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
					}
				}
			}
			else 
				echo '{"succeed": false, "errno": 24011, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
	        break;

	    case 'desativar':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idtime']) || empty($_GET['idtime'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 24013, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do time não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idtime'] / $_SESSION["fake_id"];
				
				$upd_times = "UPDATE tbl_times SET ativo = 0 WHERE id = $id";

				if ($conn->query($upd_times) === TRUE) {
					$conn->commit();
					echo '{"succeed": true}';
				} else {
			        throw new Exception("Erro ao desativar o time: " . $upd_times . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 24014, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    default:
	       echo '{"succeed": false, "errno": 24002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 24003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>