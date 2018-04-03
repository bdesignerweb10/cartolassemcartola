<?php
require_once("../conn.php");
require_once("acts.cartola.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'confrontos':
	    	if(isset($_GET['rodant'])) {
	    		$rodbrasileiro = intval($_SESSION["rodbrasileiro"]) - 1;
	    	} else if(isset($_GET['proxrod'])) {
	    		$rodbrasileiro = intval($_SESSION["rodbrasileiro"]) + 1;
	    	}
	    	else {
				$rodbrasileiro = $_SESSION["rod_atual"];
	    	}

			$_SESSION["rodbrasileiro"] = $rodbrasileiro;

			$rodada = api("partidas/". $rodbrasileiro); 
			if(isset($rodada->{"mensagem"}) && !empty($rodada->{"mensagem"})) {
	       		echo '{"succeed": false, "errno": 31003, "title": "Erro na consulta da API do Cartola!", "erro": "Erro: '.$rodada->{"mensagem"}.'"}';
	       		break;
			} else {
				if(count($rodada->{"partidas"}) > 0) {
		    		$list_confrontos = "";
					foreach($rodada->{"partidas"} as $p => $partida) {
						if($partida->{"valida"}) {
							$m_escudo = $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"escudos"}->{"60x60"};
							$m_time = $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"abreviacao"};
							$m_placar = "0";
							if(isset($partida->{"placar_oficial_mandante"}) && !empty($partida->{"placar_oficial_mandante"}))
								$m_placar = $partida->{"placar_oficial_mandante"};

							$v_escudo = $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"escudos"}->{"60x60"};
							$v_time = $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"abreviacao"};
							$v_placar = "0";
							if(isset($partida->{"placar_oficial_visitante"}) && !empty($partida->{"placar_oficial_visitante"}))
								$v_placar = $partida->{"placar_oficial_visitante"};

							$local = $partida->{"local"};
							$data = $partida->{"partida_data"};

							$list_confrontos .= '{"m_escudo": "'.$m_escudo.'", "m_time": "'.$m_time.'", "m_placar": "'.$m_placar.'", "v_escudo": "'.$v_escudo.'", "v_time": "'.$v_time.'", "v_placar": "'.$v_placar.'", "local": "'.$local.'", "data": "'.$data.'"}, ';
						}
				    }
					$list_confrontos = substr($list_confrontos, 0, -2);

					echo '{"succeed": true, "rodada": "' . $rodbrasileiro . '", "confrontos": [' . $list_confrontos . ']}';	
				} else {
		       		echo '{"succeed": false, "errno": 31003, "title": "Erro na consulta da API do Cartola!", "erro": $rodada->{"mensagem"}}';
		       		break;
				}
			}
        	break;

	    default:
	       echo '{"succeed": false, "errno": 31001, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 31002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>