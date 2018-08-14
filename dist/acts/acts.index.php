<?php
require_once("../conn.php");

$temporada = $_SESSION["temporada_atual"];
$desc_temp = $_SESSION["temp_atual"];
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
		                $escudo = "no-escudo.png";
		                if(file_exists("../img/escudos/$destaques->escudo"))
		                	$escudo = $destaques->escudo;

		                $isMyTeam = "false";
		                if($_SESSION["usu_time"] == $destaques->id_time)
		                	$isMyTeam = "true";

						$list_times .= '{"posicao": ' . $destaques->posicao . ', "escudo": "' . $escudo . '", "time": "' . $destaques->time . '", "pontuacao": ' . $destaques->pontuacao . ', "isMyTeam": ' . $isMyTeam . '}, ';
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
				if(isset($_GET['limit']) && $_GET['limit']) {
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

						$qryselposicao = $conn->query("SELECT COALESCE(posicao_liga, 0) AS posicao_liga, pontuacao
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

				        $hasmaxpont = "false";
				        $qryselmaxpont = $conn->query("SELECT id_times, MAX(pontuacao)
														 FROM tbl_times_temporadas 
														WHERE id_anos = $temporada 
													 GROUP BY id_times
													 ORDER BY MAX(pontuacao) DESC LIMIT 1") or trigger_error($conn->error);
				    	if($qryselmaxpont && $qryselmaxpont->num_rows > 0) {
				        	while($maxpont = $qryselmaxpont->fetch_object()) {
				        		if ($maxpont->id_times == $destaques->id_time)
				        			$hasmaxpont = "true";
				        	}
				        }

						$qryposanterior = $conn->query("SELECT COALESCE(posicao_liga, 0) AS posicao_liga
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

				        if((intval($posantiga) - intval($posicao)) > 0) {
				        	$variacao = "+" . (intval($posantiga) - intval($posicao));
				        }
				        else if((intval($posantiga) - intval($posicao)) < 0) {
				        	$variacao = (intval($posantiga) - intval($posicao));
				        }
				        else {
				        	$variacao = "-";
				        }
				        
		                $escudo = "no-escudo.png";
		                if(file_exists("../img/escudos/$destaques->escudo"))
		                	$escudo = $destaques->escudo;

		                $isMyTeam = "false";
		                if($_SESSION["usu_time"] == $destaques->id_time)
		                	$isMyTeam = "true";

						$list_times .= '{"posicao": ' . $posicao . ', "escudo": "' . $escudo . '", "time": "' . $destaques->time . '", "pontuacao": ' . $destaques->total_pontos . ', "pont_ult_rodada": ' . $pontuacao . ', "variacao": "' . $variacao . '", "isMyTeam": ' . $isMyTeam . ', "hasMaxPont": ' . $hasmaxpont . '}, ';
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
				
	        	$where_time = "";
	        	if(isset($_SESSION["usu_time"]) && !empty($_SESSION["usu_time"]) && intval($_SESSION["usu_time"]) > 0) {
	        		$where_time = "AND t.id = " . $_SESSION["usu_time"];
	        	}

	    		$timeslist = $conn->query("SELECT t.id AS id, t.nome_time AS nome_time
										     FROM tbl_times t
									   INNER JOIN tbl_inscricao i ON i.id_times = t.id
										    WHERE t.ativo = 1
										      AND i.ativo = 1
										      AND i.id_anos = $temporada $where_time") or trigger_error($conn->error);
	        	if($timeslist && $timeslist->num_rows > 0) {
		        	while($times = $timeslist->fetch_object()) {
		        		if((!isset($_SESSION["usu_time"]) && empty($_SESSION["usu_time"])) || $times->id == $_SESSION["usu_time"]) {
		        			$border = '"borderWidth": 3, ';
		        		}
		        		else {
		        			$border_dash = '"borderWidth": 1, "borderDash": [2,4], ';
		        		}
						$posicoeslist = '{"label": "' . $times->nome_time . '", "fill": false, ' . $border . '"data": [';

			    		$posicoesqry = $conn->query("SELECT COALESCE(posicao_liga, 0) AS posicao_liga 
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

        case 'eventos':
	        try {
	    		//$eventoslist = '{"id": 0, "title": "Campeonato Brasileiro '.$_SESSION["temp_atual"].'", "description": "Duração do maior e mais disputado campeonato do mundo! O nosso Brasileirão!", "start": "2018-04-14", "end": "2018-12-12" }, ';
	    		$eventoslist = '';

				$eventosqry = $conn->query("SELECT id, titulo, local, descricao, data
					 						  FROM tbl_eventos 
					  						 WHERE data >= NOW() 
					  						   AND ativo = 1") or trigger_error($conn->error);
	        	if($eventosqry && $eventosqry->num_rows > 0) {
		        	while($eventos = $eventosqry->fetch_object()) {
	    				$eventoslist .= '{"id": '.$eventos->id.', "title": "'.$eventos->titulo.'", "description": "Local: '.$eventos->local.' - Descrição: '.$eventos->descricao.'", "start": "'.date('Y-m-d', strtotime($eventos->data)).'T'.date('H:i:s', strtotime($eventos->data)).'", "color": "#5893d6"}, ';
		        	}
		        }

		        $jsonUOL = json_decode(exec("curl -X GET http://jsuol.com.br/c/monaco/utils/gestor/commons.js?file=commons.uol.com.br/sistemas/esporte/modalidades/futebol/campeonatos/dados/".$desc_temp."/30/dados.json"));

			    if(isset($jsonUOL->{"fases"}) && isset($jsonUOL->{"agrupamento"}) && isset($jsonUOL->{"equipes"})) {
			    	$agrupamento = $jsonUOL->{"agrupamento"}[0]->{"fases"}[0]->{"id"};
			    	$jogos = $jsonUOL->{"fases"}->{$agrupamento}->{"jogos"};
			    	$equipes = $jsonUOL->{"equipes"};
			    	
			    	$datas = $jogos->{"data"};

					if(count($datas) > 0) {
						foreach($datas as $d => $partidas_data) {
							if($d != "0000-00-00") {
				    			foreach($partidas_data AS $ij => $id_jogo) {
				    				$partida = $jogos->{"id"}->{$id_jogo};

									$clube_m = $equipes->{$partida->{"time1"}};
									$clube_v = $equipes->{$partida->{"time2"}};

									$m_escudo = str_replace("40x40", "20x20", $clube_m->{"brasao"});
									$m_time = $clube_m->{"sigla"};
									$mc_time = $clube_m->{"nome-comum"};
									
									$v_escudo = str_replace("40x40", "20x20", $clube_v->{"brasao"});
									$v_time = $clube_v->{"sigla"};
									$vc_time = $clube_v->{"nome-comum"};
									
									$confronto = $m_time . " x " . $v_time;
									$confrontoc = '<img src=\''.$m_escudo.'\' /> ' . $mc_time . " x " . $vc_time . ' <img src=\''.$v_escudo.'\' />';

									$local = $partida->{"estadio"};
									$cidade = $partida->{"local"};
									$data = $partida->{"data"} . "T" . str_replace("h", ":", $partida->{"horario"}) . ":00";

			    					$eventoslist .= '{"id": '.$id_jogo.', "title": "'.$confronto.'", "description": "<b>Rodada #'.$partida->{"rodada"}.'</b><br/><br/>'.$confrontoc.'<br /><b>Estádio:</b> '.$local.'<br/><b>Cidade:</b> '.$cidade.'<br /><b>Data:</b> '.date('d/m/Y H:i', strtotime($data)).'hrs", "start": "'.$data.'", "color": "#326410"}, ';
				    			}
							}
						}
					} 
			    }

				$eventoslist = substr($eventoslist, 0, -2);

				echo '{"succeed": true, "eventos": [' . $eventoslist . ']}';
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