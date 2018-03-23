<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: login.php');

$temporada = $_SESSION["temporada_atual"];
$rodada = $_SESSION["rodada_site"];

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'rodada-rodada':
			try {
				$linhasarr = "";
				$linha = "";
				$time = "";
				$icountrod = 0;

	            $cabecalho = '<tr><td class=\'time-rodada titulo\'>Time/Rodada</td>';

				$resrodadas = $conn->query("SELECT r.id AS id, r.descricao AS rodada 
											  FROM tbl_temporadas t
									    INNER JOIN tbl_rodadas r ON r.id = t.id_rodadas
											 WHERE t.id_anos = $temporada
										  ORDER BY r.id ASC") or trigger_error($conn->error);	
				if($resrodadas && $resrodadas->num_rows > 0) {
					while($rod = $resrodadas->fetch_object()) {
	            		$cabecalho .= '<th class=\'rodada titulo\'>' . $rod->rodada . 'º</th>';
	            		$icountrod++;
					}
				}
	            $cabecalho .= '<th class=\'rodada titulo\'>Total</th><th class=\'rodada titulo\'>MP</th><th class=\'rodada titulo\'>MC</th></tr>';

				$destaqueslist = $conn->query("SELECT id_time, time, pontuacao
												 FROM vw_destaques_rodada 
												WHERE temporada = $temporada
												ORDER BY time ASC, rodada ASC") or trigger_error($conn->error);
				if($destaqueslist && $destaqueslist->num_rows > 0) {
					while($destaques = $destaqueslist->fetch_object()) {
			    		if($time != $destaques->id_time) {
			    			if(!empty($time)) {
			    				$totalpontosqry = $conn->query("SELECT ROUND(SUM(pontuacao), 2) AS total_pontos
			    												  FROM tbl_times_temporadas
			    												 WHERE id_anos  = $temporada
			    												   AND id_times = $time") or trigger_error($conn->error);
								if($totalpontosqry && $totalpontosqry->num_rows > 0) {
									while($totalpontos = $totalpontosqry->fetch_object()) {
										$media_parcial = number_format(floatval($totalpontos->total_pontos) / intval($rodada), 3);
										$media_camp = number_format(floatval($totalpontos->total_pontos) / intval($icountrod), 3);
										$linha .= '<td class=\'rodada total-pontos\'>' . $totalpontos->total_pontos . '</td>';
										$linha .= '<td class=\'rodada media-parcial\'>' . $media_parcial . '</td>';
										$linha .= '<td class=\'rodada media-camp\'>' . $media_camp . '</td>';
									}
								}
			    				$linha .= '</tr>"}, ';
			    				$linhasarr .= $linha;
			    			}
			    			$linha = '{"linha": "<tr><td class=\'time-rodada titulo\'>' . $destaques->time . '</td>';
			    			$time = $destaques->id_time;
			    		}
						$tipo_pont = "";

					 	if($destaques->pontuacao < 30) {
					 		$tipo_pont = "ruim";
					 	} else if($destaques->pontuacao > 30 && $destaques->pontuacao <= 50) {
					 		$tipo_pont = "regular";
					 	} else if($destaques->pontuacao > 50 && $destaques->pontuacao <= 80) {
					 		$tipo_pont = "bom";
					 	} else if($destaques->pontuacao > 80 && $destaques->pontuacao <= 100) {
					 		$tipo_pont = "excelente";
					 	} else if($destaques->pontuacao > 100) {
					 		$tipo_pont = "mitou";
					 	}

						$linha .= '<td class=\'rodada ' . $tipo_pont . '\'>' . $destaques->pontuacao . '</td>';
					}

    				$totalpontosqry = $conn->query("SELECT ROUND(SUM(pontuacao), 2) AS total_pontos
    												  FROM tbl_times_temporadas
    												 WHERE id_anos  = $temporada
    												   AND id_times = $time") or trigger_error($conn->error);
					if($totalpontosqry && $totalpontosqry->num_rows > 0) {
						while($totalpontos = $totalpontosqry->fetch_object()) {
							$media_parcial = number_format(floatval($totalpontos->total_pontos) / intval($rodada), 3);
							$media_camp = number_format(floatval($totalpontos->total_pontos) / intval($icountrod), 3);
							$linha .= '<td class=\'rodada total-pontos\'>' . $totalpontos->total_pontos . '</td>';
							$linha .= '<td class=\'rodada media-parcial\'>' . $media_parcial . '</td>';
							$linha .= '<td class=\'rodada media-camp\'>' . $media_camp . '</td>';
						}
					}

					$linha .= '</tr>"}';
					$linhasarr .= $linha;
				}
				echo '{"succeed": true, "cabecalho": "' . $cabecalho . '", "linhas": [' . $linhasarr . ']}';
				exit();
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 17003, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

        case 'grafico-rodada':
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
				
	    		$timeslist = $conn->query("SELECT id, nome_time FROM tbl_times WHERE ativo = 1 $where_time") or trigger_error($conn->error);
	        	if($timeslist && $timeslist->num_rows > 0) {
		        	while($times = $timeslist->fetch_object()) {
		        		if((!isset($_SESSION["usu_time"]) && empty($_SESSION["usu_time"])) || $times->id == $_SESSION["usu_time"]) {
		        			$border = '"borderWidth": 3, ';
		        		}
		        		else {
		        			$border_dash = '"borderWidth": 1, "borderDash": [2,4], ';
		        		}
						$posicoeslist = '{"label": "' . $times->nome_time . '", "fill": false, ' . $border . '"data": [';

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
				echo '{"succeed": false, "errno": 17004, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
        	break;

	    default:
	       echo '{"succeed": false, "errno": 17001, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 17002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>