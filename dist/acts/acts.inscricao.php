<?php

require_once("../conn.php");

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../lib/PHPMailer/src/Exception.php");
require_once("../lib/PHPMailer/src/PHPMailer.php");
require_once("../lib/PHPMailer/src/SMTP.php");

if(isset($_POST) && !empty($_POST) && $_POST["nome"]) {
	$isValid = true;
	$errMsg = "";

	if(!isset($_POST["nome"]) || empty($_POST["nome"])) {
		$errMsg .= "Nome";
		$isValid = false;
	}
	
	if(!isset($_POST["email"]) || empty($_POST["email"])) {
		if(!$isValid)
			$errMsg .= ", ";	
		
		$errMsg .= "E-mail";
		$isValid = false;
	}
	
	if(!isset($_POST["telefone"]) || empty($_POST["telefone"])) {
		if(!$isValid)
			$errMsg .= ", ";	
		
		$errMsg .= "Telefone";
		$isValid = false;
	}

	if(!isset($_POST["time"]) || empty($_POST["time"])) {
		if(!$isValid)
			$errMsg .= ", ";	
		
		$errMsg .= "Time";
		$isValid = false;
	}

	if(!isset($_POST["valor"]) || empty($_POST["valor"])) {
		if(!$isValid)
			$errMsg .= ", ";	
		
		$errMsg .= "Valor da Inscrição";
		$isValid = false;
	}

	if(!isset($_POST["forma-pagto"]) || empty($_POST["forma-pagto"])) {
		if(!$isValid)
			$errMsg .= ", ";	
		
		$errMsg .= "Forma de Pagamento";
		$isValid = false;
	}


	if(!isset($_POST["regulamento"]) || empty($_POST["regulamento"])) {
		echo '{"succeed": false, "errno": 511, "title": "Erro ao enviar o formulário!", "erro": "Você precisa marcar que aceita o regulamento para enviar o formulário!"}';
		exit();
	}

	if(!$isValid) {
		echo '{"succeed": false, "errno": 510, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
	}
	else {
		try {

			$nome = $_POST["nome"];
			$email = $_POST["email"];
			$telefone = $_POST["telefone"];
			$time = $_POST["time"];
			$escudo = formataNomeEscudo($time);
			$valor = $_POST["valor"];
			$forma_pagto = $_POST["forma-pagto"];

			$qry_time = "INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
							  VALUES ('$time', '$escudo.png', '$nome', '$email', '$telefone', 0)";

			if ($conn->query($qry_time) === TRUE) {

				$id_time = $conn->insert_id;
				$qry_insc = "INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo)";

				if ($conn->query($qry_insc) === TRUE) {

					$qry_usu = "INSERT INTO tbl_usuarios (times_id, id_anos, forma_pgto, ativo)";

					if ($conn->query($qry_insc) === TRUE) {
						echo '{"succeed": true}';
					} else {
				        throw new Exception("Erro ao inserir o usuário: " . $sql . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao inserir a inscrição: " . $sql . "<br>" . $conn->error);
				}
			} else {
		        throw new Exception("Erro ao inserir o time: " . $sql . "<br>" . $conn->error);
			}
		} catch(Exception $e) {
			echo '{"succeed": false, "errno": 513, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
		}
	}
}
else 
	echo '{"succeed": false, "errno": 912, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';