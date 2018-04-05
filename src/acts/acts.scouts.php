<?php
require_once("../conn.php");
require_once("acts.cartola.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

$temporada = $_SESSION["temporada_atual"];

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {

        case 'times':
        	$where_and = "";
        	if(isset($_GET['q']) && !empty(isset($_GET['q']))) {
        		$where_and = " WHERE LOWER(nome_time) LIKE '%" . strtolower($_GET['q']) .  "%'";
        	}
	    	$list_times = "";
			$timeslist = $conn->query("SELECT nome_time AS time
										 FROM tbl_times" . 
										 $where_and) or trigger_error($conn->error);
        	if($timeslist && $timeslist->num_rows > 0) {
	        	while($time = $timeslist->fetch_object()) {
					$list_times .= '"' . $time->time . '", ';
	        	}

				$list_times = substr($list_times, 0, -2);
	        }
			echo '[' . $list_times . ']';
        	break;

        case 'pontuacao':
			$status_mercado = api("mercado/status");

			// // #########################################
			// // MOCK
			// $status_mercado->{"status_mercado"} = 2;
			// // #########################################

			if ($status_mercado->{"status_mercado"} == 2) {
				$time = str_replace('"', '', $_POST["nome_time"]);

				$qrytime = $conn->query("SELECT t.slug_cartola AS slug, t.escudo_time AS escudo, t.patrimonio AS patrimonio
							               FROM tbl_times t
									  LEFT JOIN tbl_inscricao i ON i.id_times = t.id
											AND i.id_anos = $temporada
										  WHERE UPPER(t.nome_time) LIKE '%" . strtoupper($time) . "%'") or 
											trigger_error("32008 - " . $conn->error);

				if ($qrytime && $qrytime->num_rows > 0) {
					while($t = $qrytime->fetch_object()) {
						if(!isset($t->slug) || empty($t->slug) || $t->slug == null) {
							echo '{"succeed": false, "errno": 32006, "title": "Slug do Cartola FC não cadastrado!", "erro": "O time que você deseja consultar as parciais no Cartola FC não possui SLUG cadastrado. Favor contatar o administrador do sistema informando o erro!"}';
							break;
						} else {
			                $escudo = "no-escudo.png";
			                if(file_exists("../img/escudos/$t->escudo"))
			                	$escudo = $t->escudo;

			                $patrimonio = number_format((float)"0", 2, ',', '.');
			                if(isset($t->patrimonio) && !empty($t->patrimonio) && $t->patrimonio != null) {
			                	$patrimonio = number_format((float)$t->patrimonio, 2, ',', '.');
			                }

							$atletas = api("time/slug/". $t->slug);
							// // #########################################
							// // MOCK
							// $atletas = json_decode('{
							// 	"atletas": [
							// 		{"clube_id": 2, "apelido": "Muralha", "pontuacao": 5, "posicao_id": 1},
							// 		{"clube_id": 2, "apelido": "Balbuceta", "pontuacao": 7.4, "posicao_id": 2},
							// 		{"clube_id": 2, "apelido": "Rodrigo Caio", "pontuacao": 4.7, "posicao_id": 2},
							// 		{"clube_id": 2, "apelido": "Zeca", "pontuacao": 3.2, "posicao_id": 3},
							// 		{"clube_id": 2, "apelido": "Homem Arana", "pontuacao": 2.9, "posicao_id": 3},
							// 		{"clube_id": 2, "apelido": "Diego Souza", "pontuacao": 0.45, "posicao_id": 4},
							// 		{"clube_id": 2, "apelido": "Petros", "pontuacao": 1, "posicao_id": 4},
							// 		{"clube_id": 2, "apelido": "Camacho", "pontuacao": 8, "posicao_id": 4},
							// 		{"clube_id": 2, "apelido": "Lulinhha", "pontuacao": 16, "posicao_id": 5},
							// 		{"clube_id": 2, "apelido": "Acosta", "pontuacao": 0.86, "posicao_id": 5},
							// 		{"clube_id": 2, "apelido": "Kazim", "pontuacao": 16, "posicao_id": 5},
							// 		{"clube_id": 2, "apelido": "Dorival Jr.", "pontuacao": 5.67, "posicao_id": 6}
							// 	],
							// 	"clubes": {
							// 		"2": {
							// 			"id":2,
							// 			"nome":"Clube",
							// 			"abreviacao":"CLU",
							// 			"posicao":6,
							// 			"escudos":{
							// 				"60x60":"img/escudos/no-escudo.png",
							// 				"45x45":"img/escudos/no-escudo.png",
							// 				"30x30":"img/escudos/no-escudo.png"
							// 			}
							// 		}
							// 	},
							// 	"posicoes":{
							// 		"1":{
							// 			"id":1,
							// 			"nome":"Goleiro",
							// 			"abreviacao":"gol"
							// 		},
							// 		"2":{
							// 			"id":2,
							// 			"nome":"Lateral",
							// 			"abreviacao":"lat"
							// 		},
							// 		"3":{
							// 			"id":3,
							// 			"nome":"Zagueiro",
							// 			"abreviacao":"zag"
							// 		},
							// 		"4":{
							// 			"id":4,
							// 			"nome":"Meia",
							// 			"abreviacao":"mei"
							// 		},
							// 		"5":{
							// 			"id":5,
							// 			"nome":"Atacante",
							// 			"abreviacao":"ata"
							// 		},
							// 		"6":{
							// 			"id":6,
							// 			"nome":"Técnico",
							// 			"abreviacao":"tec"
							// 		}
							// 	}
							// }');
							// // #########################################

					 		if(!isset($atletas->{"mensagem"}) || empty($atletas->{"mensagem"})) {
					 			if(count($atletas->{"atletas"}) > 0) {
									$list_atletas = "";
									$pont_total = 0;

									foreach($atletas->{"atletas"} as $j => $jogador) {
										if ($jogador->{"apelido"} != "") {
											$athlete_clube_escudo = "";
											$clube_escudo45x45 = "";
											if ($jogador->{"clube_id"} != 1 && $jogador->{"clube_id"} !== null) {
												$clube_escudo45x45 = $atletas->{"clubes"}->{$jogador->{"clube_id"}}->{"escudos"}->{"45x45"};

												if (isset($clube_escudo45x45) && !empty($clube_escudo45x45)) {
													$athlete_clube_escudo = $clube_escudo45x45;
												}
											} else {
												$athlete_clube_escudo = "img/escudos/no-escudo.png";
											}

											$athlete_posicao = $atletas->{"posicoes"}->{$jogador->{"posicao_id"}}->{"nome"};
											$athlete_apelido = $jogador->{"apelido"};
											$athlete_pontos = number_format((float)$jogador->{"pontuacao"}, 2, ',', '.');

											$pont_total += $athlete_pontos;

											$list_atletas .= '{"escudo" : "'.$athlete_clube_escudo.'", "posicao": "'. substr($athlete_posicao,0,1).'", "nome": "'.$athlete_apelido.'", "pontuacao": "'.$athlete_pontos.'"}, ';
										} else {
											echo '{"succeed": false, "errno": 32008, "title": "Houveu um erro ao consultar as parcias do clube!", "erro": "Atleta do clube não possui informações para serem exibidas!"}';
											break;
							 			}
									}
									$list_atletas = substr($list_atletas, 0, -2);

									echo '{"succeed": true, "time": "'.$time.'", "escudo": "'.$escudo.'", "patrimonio": "'.$patrimonio.'", "pont_total": "'.$pont_total.'", "atletas": [' . $list_atletas . ']}';	
					 			} else {
									echo '{"succeed": false, "errno": 32007, "title": "Houveu um erro ao consultar as parcias do clube!", "erro": "Não foram encontrados jogadores na escalação do time!"}';
									break;
					 			}
					 		}
					 		else {
								echo '{"succeed": false, "errno": 32001, "title": "Houveu um erro ao consultar as parcias do clube!", "erro": "'.$atletas->{'mensagem'}.'"}';
								break;
				 			}
						}
			 		}
			 	} else {
					echo '{"succeed": false, "errno": 32002, "title": "Time não encontrado!", "erro": "O time que você deseja consultar as parcias não foi encontrado no sistema!"}';
					break;
				}
			} else {
				echo '{"succeed": false, "errno": 32003, "title": "Não é possível consultar as parcias do time!", "erro": "O mercado do Cartola FC precisa estar fechado para consultar as parciais do time! Status atual do mercado: <b>'.cartola_dict("mercado_status", $status_mercado->{"status_mercado"}).'</b>"}';
				break;
			}

        	break;

	    default:
	       echo '{"succeed": false, "errno": 32004, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 32005, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>