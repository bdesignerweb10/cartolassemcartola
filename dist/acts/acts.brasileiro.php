<?php
require_once("../conn.php");
require_once("acts.cartola.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") header('Location: ./');
?> <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><meta name="description" content="Acompanhe seu time na liga Cartolas sem Cartola e seque bastante todos seus colegas"><meta name="keywords" content="cartola, fc, globo, cartolas, sem, cartola, futebol, brasileirão, serie, a"><meta name="author" content="Pedro Pilz, Bruno Gomes"><meta name="robots" content="index, follow"><meta name="googlebot" content="index, follow"><title>Tabela BR 2018</title><link rel="icon" type="image/png" sizes="16x16" href="../img/favicon-16x16.png"><link rel="stylesheet" type="text/css" href="../css/style.css"><link rel="stylesheet" type="text/css" href="../css/bootstrap-toggle.min.css"></head><body> <?php

$status_mercado = api("mercado/status");
$rodada = api("partidas/". $status_mercado->{"rodada_atual"}); 

print ("Partidas rodada #". $status_mercado->{"rodada_atual"});
print '<br />';
print '<br />';

print ("Partidas: ");
print '<br />';

if(count($rodada->{"partidas"}) > 0) {
	foreach($rodada->{"partidas"} as $p => $partida) {
		if($partida->{"valida"}) 
		{
			$placar_mandante = "0";
			if(isset($partida->{"placar_oficial_mandante"}) && !empty($partida->{"placar_oficial_mandante"}))
				$placar_mandante = $partida->{"placar_oficial_mandante"};
	
			$placar_visitante = "0";
			if(isset($partida->{"placar_oficial_visitante"}) && !empty($partida->{"placar_oficial_visitante"}))
				$placar_visitante = $partida->{"placar_oficial_visitante"};
	
			print "<img src='" . $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"escudos"}->{"30x30"} . "'> " . $partida->{"clube_casa_posicao"} . "º " . $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"nome"} . " (" . $rodada->{"clubes"}->{$partida->{"clube_casa_id"}}->{"abreviacao"} . ") " . $placar_mandante;
			print " x " . $placar_visitante  . " (" . $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"abreviacao"} . ") " . $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"nome"} . " " . $partida->{"clube_visitante_posicao"} . "º " . "<img src='" . $rodada->{"clubes"}->{$partida->{"clube_visitante_id"}}->{"escudos"}->{"30x30"} . "'>";
			print '<br />';
	    	
			print "Local e data: " . $partida->{"local"} . " - " . $partida->{"partida_data"};
			print '<br />';
			print '<br />';
		}
    }
}
?> </body></html>