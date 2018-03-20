<?php
require_once("../conn.php");

$temporada = $_SESSION["temporada_atual"];
$rodada = $_SESSION["rodada_site"];

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'destaques-rodada':
		    try {
				$list_times = "[";

				$destaqueslist = $conn->query("SELECT * 
												 FROM vw_destaques_rodada 
												WHERE temporada = $temporada 
												  AND rodada = $rodada LIMIT 4") or trigger_error($conn->error);
	        	if($destaqueslist && $destaqueslist->num_rows > 0) {
		        	while($destaques = $destaqueslist->fetch_object()) {
						$list_times .= '{"posicao": ' . $destaques->posicao . ', "escudo": "' . $destaques->escudo . '", "time": "' . $destaques->time . '", "pontuacao": ' . $destaques->pontuacao . '}, ';
		        	}

					$list_times = substr($list_times, 0, -2);
		        }
				$list_times .= "]";
				echo '{"succeed": true, "list": ' . $list_times . '}';
				exit();
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 13003, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

	    case 'desempenho-geral':
		    try {
		    	$limit = "";
				if($_GET['limit']) {
					$limit = "LIMIT " . $_GET['limit'];
				}
				$list_times = "[";

				$destaqueslist = $conn->query("SELECT * 
												 FROM vw_desempenho_geral 
												WHERE temporada = $temporada 
											 ORDER BY total_pontos DESC " . $limit) or trigger_error($conn->error);
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
				echo '{"succeed": false, "errno": 13004, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

        case 'mata-mata-andamento':
	        try {
				$list_mata = "[";

				$matamatalist = $conn->query("SELECT * 
												 FROM vw_mata_mata_andamento 
												WHERE temporada = $temporada 
												  AND rodada >= $rodada") or trigger_error($conn->error);
	        	if($matamatalist && $matamatalist->num_rows > 0) {
		        	while($matamata = $matamatalist->fetch_object()) {
		        		if($matamata->rodada > $_SESSION["rodada"]) {
		        			$matamata->fase = "Aguardando início";
		        			$matamata->cor_fase = "bg-info";
		        		}
						$list_mata .= '{"nome": "' . $matamata->mata_mata . '", "fase": "' . $matamata->fase . '", "cor_fase": "' . $matamata->cor_fase . '"}, ';
		        	}

					$list_mata = substr($list_mata, 0, -2);
		        }
				$list_mata .= "]";
				echo '{"succeed": true, "list": ' . $list_mata . '}';
				exit();
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 13005, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

        case 'desempenho-rodada':
	        try {
	    		$labelslist = "[";

				$rodadaslist = $conn->query("SELECT descricao FROM tbl_rodadas WHERE id <= $rodada") or trigger_error($conn->error);
	        	if($rodadaslist && $rodadaslist->num_rows > 0) {
		        	while($rodadas = $rodadaslist->fetch_object()) {
						$labelslist  .= '"' . $rodadas->descricao . '", ';
		        	}
					$labelslist = substr($labelslist, 0, -2);
		        }
				$labelslist .= "]";

				$serieslist = "";

	    		$timeslist = $conn->query("SELECT id, nome_time FROM tbl_times WHERE ativo = 1") or trigger_error($conn->error);
	        	if($timeslist && $timeslist->num_rows > 0) {
		        	while($times = $timeslist->fetch_object()) {
		        		if($times->id == $_SESSION["usu_time"]) {
		        			$border = 3;
		        			$border_dash = "";
		        		}
		        		else {
		        			$border = 1;
		        			$border_dash = '"borderDash": [2,4], ';
		        		}
						$posicoeslist = '{"label": "' . $times->nome_time . '", "fill": false, "borderWidth": ' . $border . ', ' . $border_dash . '"data": [';

			    		$posicoesqry = $conn->query("SELECT posicao_liga 
			    									   FROM tbl_times_temporadas 
												  	  WHERE id_times = $times->id 
													    AND id_anos = $temporada 
												  		AND id_rodadas <= $rodada") or trigger_error($conn->error);
			        	if($posicoesqry && $posicoesqry->num_rows > 0) {
				        	while($posicoes = $posicoesqry->fetch_object()) {
								$posicoeslist  .= '"' . $posicoes->posicao_liga . '", ';
				        	}
							$posicoeslist = substr($posicoeslist, 0, -2);
				        }
						$posicoeslist .= "]}, ";
						$serieslist .= $posicoeslist;
		        	}
					$serieslist = substr($serieslist, 0, -2);
		        }
				echo '{"succeed": true, "labels": ' . $labelslist . ', "series": [' . $serieslist . ']}';
				exit();
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 13006, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
        	break;

	    default:
	       echo '{"succeed": false, "errno": 13001, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 13002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>