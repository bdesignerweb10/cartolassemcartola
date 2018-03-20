<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: login.php');

$temporada = $_SESSION["temporada_atual"];
$rodada = $_SESSION["rodada_site"];

try {
	$list_times = "[";

	$destaqueslist = $conn->query("SELECT * 
									 FROM vw_destaques_rodada 
									WHERE temporada = $temporada 
									  AND rodada <= $rodada") or trigger_error($conn->error);
	if($destaqueslist && $destaqueslist->num_rows > 0) {
		while($destaques = $destaqueslist->fetch_object()) {
			$list_times .= '{"rodada": ' . $destaques->desc_rodada . ', "posicao": ' . $destaques->posicao . ', "escudo": "' . $destaques->escudo . '", "time": "' . $destaques->time . '", "pontuacao": ' . $destaques->pontuacao . '}, ';
		}

		$list_times = substr($list_times, 0, -2);
	}
	$list_times .= "]";
	echo '{"succeed": true, "list": ' . $list_times . '}';
	exit();
} catch(Exception $e) {
	echo '{"succeed": false, "errno": 16001, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
	exit();
}
?>