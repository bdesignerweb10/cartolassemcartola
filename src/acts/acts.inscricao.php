<?php

require_once("../conn.php");

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../lib/PHPMailer/src/Exception.php");
require_once("../lib/PHPMailer/src/PHPMailer.php");
require_once("../lib/PHPMailer/src/SMTP.php");
						
// echo '{"succeed": true}';

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

			$time_exist = $conn->query("SELECT id FROM tbl_times 
											     WHERE UPPER(nome_time) LIKE '%" . strtoupper($time) . "%'
											        OR UPPER(email) LIKE '%" . strtoupper($email) . "%'
											        OR UPPER(nome_presidente) LIKE '%" . strtoupper($nome) . "%'") or 
								trigger_error($mysqli->error);

			if ($time_exist) { 
			    if($time_exist->num_rows > 0) {
					echo '{"succeed": false, "errno": 515, "title": "Time já cadastrado no banco de dados!", "erro": "O time ou presidente já foi cadastrado, favor escolher outros dados!"}';
					exit();
			    }
			}

			$conn->autocommit(FALSE);

			$qry_time = "INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
							  			VALUES ('$time', '$escudo.png', '$nome', '$email', '$telefone', 0)";

			if ($conn->query($qry_time) === TRUE) {

				$id_time = $conn->insert_id;
				$qry_insc = "INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
				 				  				VALUES ($id_time, $temporada_atual, $forma_pagto, 0)";

				if ($conn->query($qry_insc) === TRUE) {

					$qry_usu = "INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
								 				  VALUES ($id_time, '$email', '" . md5(geraSenha(6)) . "', 1, 0, 0)";

					if ($conn->query($qry_usu) === TRUE) {

					    if($forma_pagto == 1 || $forma_pagto == 2) {
					    	$msg_html = "<p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>O pagamento ($valor) deverá ser feito diretamente com o tesoureiro ou através de deposito/transferência bancária.</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Banco Itaú</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Agência: 4890 <br />C/C: 1441-6<br />CPF: 358.640.518-27<br />Titular: Bruno Gomes da Silva</p>";
					    	$msg_plain = "O pagamento ($valor) deverá ser diretamente com o Bruno Gomes ou através de deposito/transferência bancária. Banco Itaú - Agência: 4890 | C/C: 1441-6 | CPF: 358.640.518-27 | Titular: Bruno Gomes da Silva";
					    } else {
					    	$msg_html = "<p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>O pagamento ($valor) deverá ser feito pelo PAGSEGURO.</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Assim que o mesmo for autorizado e dado baixa, seu cadastro automaticamente validado.</p>";
					    	$msg_plain = "O pagamento ($valor) deverá ser feito pelo PAGSEGURO. Assim que o mesmo for autorizado e dado baixa, seu cadastro automaticamente validado.";
					    }

						$mail = new PHPMailer(true); 

						try {
						    $mail->isSMTP();
						    $mail->Host = 'email-ssl.com.br';
						    $mail->SMTPAuth = true;
						    $mail->Username = 'contato@cartolassemcartola.com.br';
						    $mail->Password = '34#Edc78*Bhu';
						    $mail->Port = 465;
    						$mail->SMTPSecure = 'ssl';

						    $mail->setFrom('contato@cartolassemcartola.com.br', 'Contato | Cartolas Sem Cartola');
						    $mail->addReplyTo('presidente@cartolassemcartola.com.br', 'Presidente | Cartolas Sem Cartola');
						    $mail->addAddress($email, $nome);

						    $mail->isHTML(true);
						    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Sua pré-inscrição na liga!");
						    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Inscrição liga Cartolas sem cartola</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Olá cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Já recebemos seu pedido de inscrição, efetuando o pagamento a sua inscrição será validada.</p>" . $msg_html . "<p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Telefone para contato: (19) 99897-0090</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem Cartola</h3></td></tr></table></body></html>");
						    $mail->AltBody = utf8_decode("Olá cartoleiro " . $nome . "! Já recebemos sua inscrição, efetuando o pagamento sua inscrição será validada. " . $msg_plain . " | Telefone para contato: (19) 99897-0090. Att., Equipe Cartolas sem Cartola.");

						    $mail->send();

						    // TODO: enviar e-mail de criação de novo usuário

							$conn->commit();
						
							echo '{"succeed": true}';
						} catch (Exception $e) {
    						$conn->rollback();

							echo '{"succeed": false, "errno": 514, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
						}
					} else {
				        throw new Exception("Erro ao inserir o usuário: " . $qry_usu . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao inserir a inscrição: " . $qry_insc . "<br>" . $conn->error);
				}
			} else {
		        throw new Exception("Erro ao inserir o time: " . $qry_time . "<br>" . $conn->error);
			}
		} catch(Exception $e) {
			$conn->rollback();

			echo '{"succeed": false, "errno": 513, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
		}
	}
}
else 
	echo '{"succeed": false, "errno": 912, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';