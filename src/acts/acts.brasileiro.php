<?php
require_once("../conn.php");
require_once("acts.cartola.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

$temporada = $_SESSION["temp_atual"];

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'confrontos':
	    	try {
		    	if(isset($_GET['rodant'])) {
		    		if(intval($_SESSION["rodbrasileiro"]) == 1)
		    			$rodbrasileiro = intval($_SESSION["rodbrasileiro"]);
		    		else
		    			$rodbrasileiro = intval($_SESSION["rodbrasileiro"]) - 1;
		    	} else if(isset($_GET['proxrod'])) {
		    		if(intval($_SESSION["rodbrasileiro"]) == 38)
		    			$rodbrasileiro = intval($_SESSION["rodbrasileiro"]);
		    		else
		    			$rodbrasileiro = intval($_SESSION["rodbrasileiro"]) + 1;
		    	}
		    	else {
					$rodbrasileiro = $_SESSION["rod_atual"];
		    	}

				$_SESSION["rodbrasileiro"] = $rodbrasileiro;

				$jsonUOL = json_decode(exec("curl -X GET http://jsuol.com.br/c/monaco/utils/gestor/commons.js?file=commons.uol.com.br/sistemas/esporte/modalidades/futebol/campeonatos/dados/".$temporada."/30/dados.json"));

			    if(isset($jsonUOL->{"fases"}) && isset($jsonUOL->{"agrupamento"}) && isset($jsonUOL->{"equipes"})) {
			    	$agrupamento = $jsonUOL->{"agrupamento"}[0]->{"fases"}[0]->{"id"};
			    	$jogos = $jsonUOL->{"fases"}->{$agrupamento}->{"jogos"};
			    	$equipes = $jsonUOL->{"equipes"};
			    	
			    	$rodada = $jogos->{"rodada"}->{$rodbrasileiro};

					if(count($rodada) > 0) {
						$list_confrontos = "";
						foreach($rodada as $r => $id_rodada) {

			    			$partida = $jogos->{"id"}->{$id_rodada};

							$clube_m = $equipes->{$partida->{"time1"}};
							$clube_v = $equipes->{$partida->{"time2"}};

							$m_escudo = str_replace("40x40", "60x60", $clube_m->{"brasao"});
							$m_time = $clube_m->{"sigla"};
							$m_placar = "0";
							if(isset($partida->{"placar1"}) && $partida->{"placar1"} !== null)
								$m_placar = $partida->{"placar1"};

							$v_escudo = str_replace("40x40", "60x60", $clube_v->{"brasao"});
							$v_time = $clube_v->{"sigla"};
							$v_placar = "0";
							if(isset($partida->{"placar2"}) && $partida->{"placar2"} !== null)
								$v_placar = $partida->{"placar2"};

							// $cidade = $partida->{"local"};
							$local = $partida->{"estadio"};
							$data = $partida->{"data"} . " " . str_replace("h", ":", $partida->{"horario"});

							$list_confrontos .= '{"m_escudo": "'.$m_escudo.'", "m_time": "'.$m_time.'", "m_placar": "'.$m_placar.'", "v_escudo": "'.$v_escudo.'", "v_time": "'.$v_time.'", "v_placar": "'.$v_placar.'", "local": "'.$local.'", "data": "'.$data.'"}, ';
						}
						$list_confrontos = substr($list_confrontos, 0, -2);

						echo '{"succeed": true, "rodada": "' . $rodbrasileiro . '", "confrontos": [' . $list_confrontos . ']}';	
					} else {
			       		echo '{"succeed": false, "errno": 31005, "title": "Erro na consulta da API da tabela do Brasileirão!", "erro": "A lista de classificação está vazia!"}';
			       		break;
					}
			    } else {
		       		echo '{"succeed": false, "errno": 31006, "title": "Erro na consulta da API da tabela do Brasileirão!", "erro": "Houve um erro desconhecido ao carregar os dados da classificação do Brasileirão!"}';
		       		break;
				}

				// $rodada = api("partidas/". $rodbrasileiro); 
				// if(isset($rodada->{"mensagem"}) && !empty($rodada->{"mensagem"})) {
		  //      		echo '{"succeed": false, "errno": 31003, "title": "Erro na consulta da API do Cartola!", "erro": "Erro: '.$rodada->{"mensagem"}.'"}';
		  //      		break;
				// } else {
				// 	if(count($rodada->{"partidas"}) > 0) {
			 //    		$list_confrontos = "";
				// 		foreach($rodada->{"partidas"} as $p => $partida) {
				// 			if($partida->{"valida"}) {
				// 				$m_escudo = $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"escudos"}->{"60x60"};
				// 				$m_time = $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"abreviacao"};
				// 				$m_placar = "0";
				// 				if(isset($partida->{"placar_oficial_mandante"}) && !empty($partida->{"placar_oficial_mandante"}))
				// 					$m_placar = $partida->{"placar_oficial_mandante"};

				// 				$v_escudo = $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"escudos"}->{"60x60"};
				// 				$v_time = $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"abreviacao"};
				// 				$v_placar = "0";
				// 				if(isset($partida->{"placar_oficial_visitante"}) && !empty($partida->{"placar_oficial_visitante"}))
				// 					$v_placar = $partida->{"placar_oficial_visitante"};

				// 				$local = $partida->{"local"};
				// 				$data = $partida->{"partida_data"};

				// 				$list_confrontos .= '{"m_escudo": "'.$m_escudo.'", "m_time": "'.$m_time.'", "m_placar": "'.$m_placar.'", "v_escudo": "'.$v_escudo.'", "v_time": "'.$v_time.'", "v_placar": "'.$v_placar.'", "local": "'.$local.'", "data": "'.$data.'"}, ';
				// 			}
				// 	    }
				// 		$list_confrontos = substr($list_confrontos, 0, -2);

				// 		echo '{"succeed": true, "rodada": "' . $rodbrasileiro . '", "confrontos": [' . $list_confrontos . ']}';	
				// 	} else {
			 //       		echo '{"succeed": false, "errno": 31003, "title": "Erro na consulta da API do Cartola!", "erro": "A lista de partidas está vazia!"}';
			 //       		break;
				// 	}
				// }
	    	}
	    	catch(Exception $e) {
	       		echo '{"succeed": false, "errno": 31004, "title": "Erro na consulta da API do Cartola!", "erro": "Erro: '.$e->getMessage().'"}';
	       		break;
	    	}
        	break;

        case 'tabela':
	    	try {
			    $jsonUOL = json_decode(exec("curl -X GET http://jsuol.com.br/c/monaco/utils/gestor/commons.js?file=commons.uol.com.br/sistemas/esporte/modalidades/futebol/campeonatos/dados/".$temporada."/30/dados.json"));

			    if(isset($jsonUOL->{"fases"}) && isset($jsonUOL->{"agrupamento"}) && isset($jsonUOL->{"equipes"})) {
			    	$agrupamento = $jsonUOL->{"agrupamento"}[0]->{"fases"}[0]->{"id"};
			    	$classificacao = $jsonUOL->{"fases"}->{$agrupamento}->{"classificacao"};
			    	$equipes = $jsonUOL->{"equipes"};

					if(count($classificacao->{"equipe"}) > 0) {
			    		$list_equipes = "";
						foreach($classificacao->{"equipe"} as $e => $equipe) {
							$dados_clube = $equipes->{$equipe->{"id"}};

							$posicao = $equipe->{"pos"};
							$clube = $dados_clube->{"nome-comum"};
							$pontos = $equipe->{"pg"}->{"total"};
							$jogos = $equipe->{"j"}->{"total"};
							$vitorias = $equipe->{"v"}->{"total"};
							$empates = $equipe->{"e"}->{"total"};
							$derrotas = $equipe->{"d"}->{"total"};
							$gols_pro = $equipe->{"gp"}->{"total"};
							$gols_contra = $equipe->{"gc"}->{"total"};
							$saldo_gols = $equipe->{"sg"}->{"total"};
							$aproveitamento = $equipe->{"ap"};

							$list_equipes .= '{"posicao": "'.$posicao.'", "clube": "'.$clube.'", "pontos": "'.$pontos.'", "jogos": "'.$jogos.'", "vitorias": "'.$vitorias.'", "empates": "'.$empates.'", "derrotas": "'.$empates.'", "gols_pro": "'.$gols_pro.'", "gols_contra": "'.$gols_contra.'", "saldo_gols": "'.$saldo_gols.'", "aproveitamento": "'.$aproveitamento.'"}, ';
						}
						$list_equipes = substr($list_equipes, 0, -2);

						echo '{"succeed": true, "equipes": [' . $list_equipes . ']}';	
					} else {
			       		echo '{"succeed": false, "errno": 31005, "title": "Erro na consulta da API da tabela do Brasileirão!", "erro": "A lista de classificação está vazia!"}';
			       		break;
					}
			    } else {
		       		echo '{"succeed": false, "errno": 31006, "title": "Erro na consulta da API da tabela do Brasileirão!", "erro": "Houve um erro desconhecido ao carregar os dados da classificação do Brasileirão!"}';
		       		break;
				}
	    	}
	    	catch(Exception $e) {
	       		echo '{"succeed": false, "errno": 31004, "title": "Erro na consulta da API do Cartola!", "erro": "Erro: '.$e->getMessage().'"}';
	       		break;
	    	}
        	break;

	    default:
	       echo '{"succeed": false, "errno": 31001, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 31002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>