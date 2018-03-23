<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: login');

$temporada = $_SESSION["temp_atual"];
$id_time = (isset($_SESSION["usu_time"]) && !empty($_SESSION["usu_time"]) ? intval($_SESSION["usu_time"]) : 0);

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'listagem-eventos':
			try {
				$list_eventos = "";
				$eventoslist = $conn->query("SELECT * 
											  FROM vw_eventos 
											 WHERE ano = '$temporada'") or trigger_error($conn->error);
				if($eventoslist && $eventoslist->num_rows > 0) {
					while($eventos = $eventoslist->fetch_object()) {
						$confirmado = 'false';
						$confirmpresenca = $conn->query("SELECT id_times 
													       FROM tbl_eventos_presenca 
													      WHERE id_evento = $eventos->id
													      	AND id_times = $id_time") or trigger_error($conn->error);

						if($confirmpresenca && $confirmpresenca->num_rows > 0)
							$confirmado = 'true';

						$list_eventos .= '{"id": ' . $eventos->id * $_SESSION["fake_id"] . ', "titulo": "' . $eventos->titulo . '", "local": "' . $eventos->local . '", "data": ' . $eventos->data . ', "descricao": "' . $eventos->descricao . '", "participantes": ' . $eventos->participantes . ', "confirmado": ' . $confirmado . '}, ';
					}

					$list_eventos = substr($list_eventos, 0, -2);
				}

				echo '{"succeed": true, "eventos": [' . $list_eventos . ']}';
				exit();
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 18003, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
        	break;

	    default:
	       echo '{"succeed": false, "errno": 18001, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 18002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>