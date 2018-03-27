<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

require_once("acts.cartola.php");

//echo login("phmpilz@hotmail.com", "23@Wsx89(Nji");
echo api("mercado/status");
?>