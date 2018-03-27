<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');

$headers = array( 
	'X-Auth-Token: 845ba16ab6e046e98e4e3670985ad055',
	'X-Response-Control: minified',
);

$ch = curl_init("http://api.football-data.org/v1/competitions/?season=" . $_SESSION["temp_atual"]);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
	'X-Auth-Token: 845ba16ab6e046e98e4e3670985ad055',
	'X-Response-Control: full',
    ));
$data = curl_exec($ch);
curl_close($ch);

$json = json_decode($data, true);

foreach($json as $competition) {
	if($competition["league"] == "BSA") {
		$ch = curl_init($competition["_links"]["fixtures"]["href"]);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'X-Auth-Token: 845ba16ab6e046e98e4e3670985ad055',
			'X-Response-Control: minified',
		    ));
		$data = curl_exec($ch);
		$info = curl_getinfo($ch);
		curl_close($ch);

		print "fixtures: <br />";
		var_dump(json_encode($data));
		print "<br /><br />";
		
		$ch = curl_init($competition["_links"]["leagueTable"]["href"]);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'X-Auth-Token: 845ba16ab6e046e98e4e3670985ad055',
			'X-Response-Control: minified',
		    ));
		$data = curl_exec($ch);
		$info = curl_getinfo($ch);
		curl_close($ch);

		print "leagueTable: <br />";
		var_dump(json_encode($data));
		print "<br /><br />";
	}
}
?>