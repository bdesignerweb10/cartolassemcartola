<?php
ob_start();
if (!isset($_SESSION)) session_start(); 

//require_once("acts/errorhandling.php");

// DEV
$conn = new mysqli("localhost", "root", "root", "cartolassemcartola");

// PRD
//$conn = new mysqli("cartolassemcar.mysql.dbaas.com.br", "cartolassemcar", "cart@12345", "cartolassemcar");

if ($conn->connect_errno) {
    die("Failed to connect to MySQL: [$conn->connect_errno] $conn->connect_error");
}

$result = $conn->query("SELECT * FROM tbl_config LIMIT 1") or trigger_error($mysqli->error);

if ($result) { 
    if($result->num_rows === 0) {
		try {
			$qry_admin = "INSERT INTO `tbl_usuarios` (`usuario`, `senha`, `nivel`, `senha_provisoria`, `tentativas`) 
											 VALUES ('admin', MD5('adm@12345'), 1, 0, 0)";

			if ($conn->query($qry_admin) === TRUE) {

				$qry_anos = "INSERT INTO tbl_anos (descricao) VALUES ('" . date("Y") . "')";

				if ($conn->query($qry_anos) === TRUE) {

					$id_anos = $conn->insert_id;

					$qry_rod = "INSERT INTO tbl_rodadas (descricao) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37), (38)";

					if ($conn->query($qry_rod) === TRUE) {

						$qry_temp = "INSERT INTO tbl_temporadas (id_anos, id_rodadas)
	  						 			  SELECT $id_anos, id FROM tbl_rodadas ORDER BY id ASC";

						if ($conn->query($qry_temp) === TRUE) {
						
							$res_rod = $conn->query("SELECT MIN(id) AS id FROM tbl_rodadas LIMIT 1") or trigger_error($mysqli->error);
					        while($rod = $res_rod->fetch_object()) {
								$prim_rodada = $rod->id;
							}

							$_SESSION["temporada"] = 0;
							$_SESSION["temporada_atual"] = $id_anos;
							$_SESSION["mercado"] = 0;
							$_SESSION["rodada"] = $prim_rodada;
							$_SESSION["api_ligada"] = 0;
							$_SESSION["email_pagseguro"] = "";
							$_SESSION["token_pagseguro"] = "";

							$qry_conf = "INSERT INTO tbl_config (temporada_aberta, temporada_atual, status_mercado, rodada_atual, api_ligada, email_pagseguro, token_pagseguro) VALUES ($temporada, $temporada_atual, $mercado, $rodada, $api_ligada, '$email_pagseguro', '$token_pagseguro')";

							if ($conn->query($qry_conf) !== TRUE) {
						        throw new Exception("Erro ao inserir a inscrição: " . $qry_conf . "<br>" . $conn->error);
							}
						} else {
					        throw new Exception("Erro ao inserir o setup de temporadas: " . $qry_temp . "<br>" . $conn->error);
						}
					} else {
				        throw new Exception("Erro ao inserir o setup de rodadas: " . $qry_rod . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao inserir o setup de ano (temporada atual): " . $qry_anos . "<br>" . $conn->error);
				}
			} else {
		        throw new Exception("Erro ao inserir o admin: " . $qry_admin . "<br>" . $conn->error);
			}
		} catch(Exception $e) {
    		die("Ocorreu um erro ao fazer o setup do sistema: " . $e->getMessage());
		}
    }
    else {
        while($dados = $result->fetch_object()) {
			$_SESSION["temporada"] = $dados->temporada_aberta;
			$_SESSION["temporada_atual"] = $dados->temporada_atual;
			$_SESSION["mercado"] = $dados->status_mercado;
			$_SESSION["rodada"] = $dados->rodada_atual;
			$_SESSION["api_ligada"] = $dados->api_ligada;
			$_SESSION["email_pagseguro"] = $dados->email_pagseguro;
			$_SESSION["token_pagseguro"] = $dados->token_pagseguro;
		}

		$ano = $conn->query("SELECT descricao FROM tbl_anos WHERE id = " . $_SESSION["temporada_atual"]) or trigger_error($mysqli->error);

		while($res_ano = $ano->fetch_object()) {
			$_SESSION["temp_atual"] = $res_ano->descricao;
		}
	}


	function formataNomeEscudo($string){
	    return strtolower(str_replace(' ', '', preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/"),explode(" ","a A e E i I o O u U n N"),$string)));
	}

	function geraSenha($tamanho = 8, $maiusculas = true, $numeros = true, $simbolos = false)
	{
		$lmin = 'abcdefghijklmnopqrstuvwxyz';
		$lmai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
		$num = '1234567890';
		$simb = '!@#$%*-';
		$retorno = '';
		$caracteres = '';
		$caracteres .= $lmin;
		if ($maiusculas) $caracteres .= $lmai;
		if ($numeros) $caracteres .= $num;
		if ($simbolos) $caracteres .= $simb;
		$len = strlen($caracteres);
		for ($n = 1; $n <= $tamanho; $n++) {
		$rand = mt_rand(1, $len);
		$retorno .= $caracteres[$rand-1];
		}
		return $retorno;
	}
}
else {
    die("Erro ao buscar as configurações do sistema!");
}
?>