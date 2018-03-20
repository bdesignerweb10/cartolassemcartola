<?php
require_once("../conn.php");

$temporada = $_SESSION["temporada_atual"];
$rodada = $_SESSION["rodada_site"];

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
?>