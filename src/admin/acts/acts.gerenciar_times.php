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
					$conn->rollback();
					echo '{"succeed": false, "errno": 24006, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idtime'] / $_SESSION["fake_id"];

		    	$qrytimes = $conn->query("SELECT * FROM tbl_times WHERE id = $id") or trigger_error("24007 - " . $conn->error);

				if ($qrytimes && $qrytimes->num_rows > 0) {
					$dados = "";
	    			while($time = $qrytimes->fetch_object()) {
	    				$dados = '{"id" : "' . $time->id . '", "nome_time" : "' . $time->nome_time . '", "nome_presidente" : "' . $time->nome_presidente . '", "email" : "' . $time->email . '", "telefone" : "' . $time->telefone . '", "historia" : "' . $time->historia . '"}';
	    			}
					echo '{"succeed": true, "dados": ' . $dados . '}';
	    		}
	    		else {
	    			throw new Exception('Nenhum time encontrado com o ID ' . $id . "!");
	    		}
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 24005, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    case 'edit':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 24008, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 24009, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;

	    default:
	       echo '{"succeed": false, "errno": 24002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 24003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>