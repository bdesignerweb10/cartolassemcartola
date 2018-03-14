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

				var_dump($_POST);

				if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
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