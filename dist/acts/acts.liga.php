<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

$temporada = $_SESSION["temporada_atual"];
$rodada = $_SESSION["rodada_site"];

try {
	$destaqueslist = $conn->query("SELECT * 
									 FROM vw_desempenho_geral 
									WHERE temporada = $temporada 
								 ORDER BY total_pontos DESC") or trigger_error($conn->error);
	if($destaqueslist && $destaqueslist->num_rows > 0) {
		while($destaques = $destaqueslist->fetch_object()) {
			$posicao = "";
			$pontuacao = "";
			$posantiga = "";
			$variacao = "";

			$qryselposicao = $conn->query("SELECT posicao_liga, pontuacao
											 FROM tbl_times_temporadas 
											WHERE id_times = $destaques->id_time
											  AND id_anos = $temporada
											  AND id_rodadas = $rodada LIMIT 1") or trigger_error($conn->error);
	    	if($qryselposicao && $qryselposicao->num_rows > 0) {
	        	while($pos = $qryselposicao->fetch_object()) {
	        		$posicao = $pos->posicao_liga;
	        		$pontuacao = $pos->pontuacao;
	        	}
	        }

			$qryposanterior = $conn->query("SELECT posicao_liga
											  FROM tbl_times_temporadas 
											 WHERE id_times = $destaques->id_time
											   AND id_anos = $temporada
											   AND id_rodadas < $rodada 
										  ORDER BY id_rodadas DESC LIMIT 1") or trigger_error($conn->error);
	    	if($qryposanterior && $qryposanterior->num_rows > 0) {
	        	while($posant = $qryposanterior->fetch_object()) {
	        		$posantiga = $posant->posicao_liga;
	        	}
	        }

	        if(($posantiga - $posicao) > 0) {
	        	$variacao = "+" . ($posantiga - $posicao);
	        }
	        else if(($posantiga - $posicao) < 0) {
	        	$variacao = ($posantiga - $posicao);
	        }
	        else {
	        	$variacao = "-";
	        }

			$list_times .= '{"posicao": ' . $posicao . ', "escudo": "' . $destaques->escudo . '", "time": "' . $destaques->time . '", "pontuacao": ' . $destaques->total_pontos . ', "pont_ult_rodada": ' . $pontuacao . ', "variacao": "' . $variacao . '"}, ';
		}

		$list_times = substr($list_times, 0, -2);
	}
	$list_times .= "]";
	echo '{"succeed": true, "list": ' . $list_times . '}';
	exit();
} catch(Exception $e) {
	echo '{"succeed": false, "errno": 15001, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
	exit();
}
?>