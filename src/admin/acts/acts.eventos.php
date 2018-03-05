<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('27001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'showupd':

	        break;

	    case 'add':

	        break;

	    case 'edit':

	        break;

	    case 'del':
	    	
	        break;

	    default:
	       echo '{"succeed": false, "errno": 27002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 27003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>