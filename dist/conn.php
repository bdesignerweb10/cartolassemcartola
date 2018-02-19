<?php

$conn = new mysqli("localhost", "cartolas", "cart@1234", "cartolassemcartola");

if ($conn->connect_errno) {
    die("Failed to connect to MySQL: [$conn->connect_errno] $conn->connect_error");
}

$result = $conn->query("SELECT * FROM tbl_config LIMIT 1") or trigger_error($mysqli->error);

if ($result) { 
    if($result->num_rows === 0) {

			$temporada = ;
			$temporada_atual = ;
			$mercado = ;
			$rodada = ;
			$api_ligada = ;
			$email_pagseguro = ;
			$token_pagseguro = ;
    }
    else {
        while($dados = $result->fetch_object()) {
			$temporada = $dados->temporada_aberta;
			$temporada_atual = $dados->temporada_atual;
			$mercado = $dados->status_mercado;
			$rodada = $dados->rodada_atual;
			$api_ligada = $dados->api_ligada;
			$email_pagseguro = $dados->email_pagseguro;
			$token_pagseguro = $dados->token_pagseguro;
		}
	}
}
else {
    die("Erro ao buscar as configurações do sistema!");
}
?>