<?php
require_once("../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") header('Location: ./');
?> <!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1"><meta name="description" content="Acompanhe seu time na liga Cartolas sem Cartola e seque bastante todos seus colegas"><meta name="keywords" content="cartola, fc, globo, cartolas, sem, cartola, futebol, brasileirão, serie, a"><meta name="author" content="Pedro Pilz, Bruno Gomes"><meta name="robots" content="index, follow"><meta name="googlebot" content="index, follow"><title>Scouts</title><link rel="icon" type="image/png" sizes="16x16" href="../img/favicon-16x16.png"><link rel="stylesheet" type="text/css" href="../css/style.css"><link rel="stylesheet" type="text/css" href="../css/bootstrap-toggle.min.css"></head><body> <?php
require_once("acts.cartola.php");

$status_mercado = api("mercado/status");

print "<b>Status Mercado:</b> " . cartola_dict("mercado_status", $status_mercado->{"status_mercado"});
print '<br />';
print ("<b>Partida rodada #". $status_mercado->{"rodada_atual"} . "</b>");
print '<br />';
print '<br />';
// if ($status_mercado->{"status_mercado"} == 2) {
	$ligas = api("auth/ligas", array('login' => "phmpilz@hotmail.com", 'senha' => "23@Wsx89(Nji"));
		
	foreach($ligas->{"ligas"} as $l => $liga) {
		if($liga->{"patrocinador"} == false && $liga->{"time_dono_id"} == 13908998) {
		 	//var_dump($liga);
		 	$cartola = api("auth", array('login' => "phmpilz@hotmail.com", 
									     'senha' => "23@Wsx89(Nji", 
									     'api' => "liga",
									     'liga_slug' => $liga->{"slug"}));
			foreach($cartola->{"times"} as $t => $time) {
		 		
		 		print ("<b>" . $time->{"nome"} . ' - ' . $time->{"nome_cartola"} . "</b><br />");
		 		print ("Slug: " . $time->{"slug"} . "<br /><br />");

		 		//TODO: API PARA PEGAR A PONTUACAO
		 		print ("<b>Patrimonio:</b> C$ " . number_format((float)$time->{"patrimonio"}, 2, ',', '.') . "<br />");
		 		print ("<b>Posição rodada: </b> " . (!empty($time->{"ranking"}->{"rodada"}) ? $time->{"ranking"}->{"rodada"} : "0") . "º lugar<br />");
		 		print ("<b>Posição mês: </b> " . (!empty($time->{"ranking"}->{"mes"}) ? $time->{"ranking"}->{"mes"} : "0") . "º lugar<br />");
		 		print ("<b>Posição turno: </b> " . (!empty($time->{"ranking"}->{"turno"}) ? $time->{"ranking"}->{"turno"} : "0") . "º lugar<br />");
		 		print ("<b>Posição campeonato: </b> " . (!empty($time->{"ranking"}->{"campeonato"}) ? $time->{"ranking"}->{"campeonato"} : "0") . "º lugar<br /><br />");

		 		print ("<b>Pontuação rodada: </b> " . (!empty($time->{"pontos"}->{"rodada"}) ? $time->{"pontos"}->{"rodada"} : "0") . " pts.<br />");
		 		print ("<b>Pontuação mês: </b> " . (!empty($time->{"pontos"}->{"mes"}) ? $time->{"pontos"}->{"mes"} : "0") . " pts.<br />");
		 		print ("<b>Pontuação turno: </b> " . (!empty($time->{"pontos"}->{"turno"}) ? $time->{"pontos"}->{"turno"} : "0") . " pts.<br />");
		 		print ("<b>Pontuação campeonato: </b> " . (!empty($time->{"pontos"}->{"campeonato"}) ? $time->{"pontos"}->{"campeonato"} : "0") . " pts.");

		 		print '<br />';
		 		print '<br />';
		 		$atletas = api("time/slug/". $time->{"slug"});

		 		if(!isset($atletas->{"mensagem"}) || empty($atletas->{"mensagem"})) {
		 			if(count($atletas->{"atletas"}) > 0) {
						foreach($atletas->{"atletas"} as $j => $jogador) {
			 				// atleta tem info para exibir
							if ($jogador->{"apelido"} != "") {
								/*********************************************************/
								// escudo clube
								$athlete_clube_escudo = "";
								$clube_escudo45x45 = "";
								// se o clube_id for diferente de 1, que é 'outros' na API, exibe o escudo do time.
								if ($jogador->{"clube_id"} != 1 && $jogador->{"clube_id"} !== null) {
									$clube_escudo45x45 = $atletas->{"clubes"}->{$jogador->{"clube_id"}}->{"escudos"}->{"45x45"};

									if (isset($clube_escudo45x45) && !empty($clube_escudo45x45)) {
										$athlete_clube_escudo = "<img src='" . $clube_escudo45x45 . "'>";
									}
								}
								// clube_id é igual a 1 (outros), exibe escudo fallback.
								else {
									$athlete_clube_escudo = "<img src='images/emptystate_escudo.svg'>";
								}
								/*********************************************************/

								/*********************************************************/
								// atletas foto
								$atleta_foto = $jogador->{"foto"};
								$atleta_foto140x140 = "";

								if (isset($atleta_foto) && !empty($atleta_foto)) {
									$atleta_foto140x140 = "<img src='" . str_replace("FORMATO", "140x140", $atleta_foto) . "'>";
								} else {
									$atleta_foto140x140 = "<img src='images/foto-jogador.svg'>";
								}
								/*********************************************************/

								/*********************************************************/
								// atleta posicao
								$athlete_posicao = $atletas->{"posicoes"}->{$jogador->{"posicao_id"}}->{"nome"};
								/*********************************************************/

								/*********************************************************/
								// atleta apelido
								$athlete_apelido = $jogador->{"apelido"};
								/*********************************************************/

								/*********************************************************/
								// atletas pontuacao
								$athlete_pontos = number_format((float)$jogador->{"pontuacao"}, 2, ',', '.');
								/*********************************************************/

								echo "<div id='" . $jogador->{"atleta_id"} . " class='row athlete_wrapper'>
								<div class='athlete_clube'>" . $athlete_clube_escudo . "</div>
								<div class='athlete_foto'>" . $atleta_foto140x140 . "</div>
								<div class='athlete_apelido_label'>" . $athlete_apelido . "</div>
								<div class='athlete_posicao_label'>" . $athlete_posicao . "</div>
								<div class='statistics_wrapper'>
								<div class='statistics'>
								<span class='athlete_val'>" . $athlete_pontos . "</span>
								<span class='athlete_label'>" . cartola_dict("athlete_score_current") . "</span>
								</div>
								</div>
								</div>";
							}
						}
		 			} else {
		 				print "Mensagem: Não foram encontrados jogadores na escalação do time!";
		 			}
		 		}
		 		else {
		 			print "Mensagem: " . $atletas->{'mensagem'};
	 			}

	 			print '<br />';
		 		print '<br />';
		 		print '<br />';
			}
		}
	}
// }
?> </body></html>