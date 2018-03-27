<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

$temporada = $_SESSION["temporada_atual"];

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'escudos':
	    	$list_times = "[";

				$timeslist = $conn->query("SELECT *
											 FROM vw_escudos_temporada
											WHERE temporada = $temporada") or trigger_error($conn->error);
	        	if($timeslist && $timeslist->num_rows > 0) {
		        	while($time = $timeslist->fetch_object()) {
		                $escudo = "no-escudo.png";
		                if(file_exists("../img/escudos/$time->escudo"))
		                	$escudo = $time->escudo;
						$list_times .= '{"id": ' . $time->id * $_SESSION["fake_id"] . ', "time": "' . $time->time . '", "escudo": "' . $escudo . '"}, ';
		        	}

					$list_times = substr($list_times, 0, -2);
		        }
				$list_times .= "]";
				echo '{"succeed": true, "list": ' . $list_times . '}';
	        break;

	    default:
	       echo '{"succeed": false, "errno": 19201, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 19202, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>