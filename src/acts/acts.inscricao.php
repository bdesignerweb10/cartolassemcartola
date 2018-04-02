<?php
require_once("../conn.php");

if($_SESSION["temporada"] == "1")
	header('location:./');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../lib/PHPMailer/src/Exception.php");
require_once("../lib/PHPMailer/src/PHPMailer.php");
require_once("../lib/PHPMailer/src/SMTP.php");

$temporada = $_SESSION["temporada_atual"];

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'add':
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

				if(!isset($_POST["nome_time"]) || empty($_POST["nome_time"])) {
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
					echo '{"succeed": false, "errno": 11001, "title": "Erro ao enviar o formulário!", "erro": "Você precisa marcar que aceita o regulamento para enviar o formulário!"}';
					exit();
				}

				if(!$isValid) {
					echo '{"succeed": false, "errno": 11002, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
				}
				else {
					try {
						$nome = $_POST["nome"];
						$email = $_POST["email"];
						$telefone = $_POST["telefone"];
						$time = str_replace('"', '', $_POST["nome_time"]);
						$escudo = formataNomeEscudo($time);
						$valor = $_POST["valor"];
						$forma_pagto = $_POST["forma-pagto"];

						$time_exist = $conn->query("SELECT id FROM tbl_times 
														     WHERE UPPER(email) LIKE '%" . strtoupper($email) . "%'
														        OR UPPER(nome_presidente) LIKE '%" . strtoupper($nome) . "%'") or 
											trigger_error("11003 - " . $conn->error);

						if ($time_exist) { 
						    if($time_exist->num_rows > 0) {
								echo '{"succeed": false, "errno": 11004, "title": "Time já cadastrado no banco de dados!", "erro": "O time ou presidente já foi cadastrado, favor escolher outros dados!"}';
								exit();
						    }
						}

						$conn->autocommit(FALSE);

						// verificar se time ja se encontra ativado, caso sim, da erro. caso nao insere o mesmo na temporada
						$time_exist = $conn->query("SELECT t.id AS id, t.ativo AS time_ativo, i.ativo AS insc_ativa
							                          FROM tbl_times t
												 LEFT JOIN tbl_inscricao i ON i.id_times = t.id
												 						  AND i.id_anos = $temporada
												     WHERE UPPER(t.nome_time) LIKE '%" . strtoupper($time) . "%'") or 
											trigger_error("11003 - " . $conn->error);

						if ($time_exist && $time_exist->num_rows > 0) {
        					while($t = $time_exist->fetch_object()) {
        						if(intval($t->time_ativo) != null && intval($t->insc_ativa) != null) {
									echo '{"succeed": false, "errno": 11010, "title": "Time já cadastrado para a temporada!", "erro": "O time já foi cadastrado na temporada atual, favor escolher outro time!"}';
									exit();
        						}
        						else {
									$qry_insc = "INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) VALUES ($t->id, $temporada, $forma_pagto, 0)";

									if ($conn->query($qry_insc) === TRUE) {
										$upd_times = "UPDATE tbl_times SET ativo = 0 WHERE id = $t->id";

										if ($conn->query($upd_times) === TRUE) {
											enviarEmail($forma_pagto, $nome, $email);
								
											$conn->commit();
											echo '{"succeed": true}';
										} else {
									        throw new Exception("Erro ao desativar o time: " . $upd_times . "<br>" . $conn->error);
										}
									} else {
								        throw new Exception("Erro ao inserir a inscrição: " . $qry_insc . "<br>" . $conn->error);
									}
        						}
							}
					    } else {
							$qry_time = "INSERT INTO tbl_times (nome_time, escudo_time, nome_presidente, email, telefone, ativo) 
											  			VALUES ('$time', '$escudo', '$nome', '$email', '$telefone', 0)";

							if ($conn->query($qry_time) === TRUE) {

								$id_time = $conn->insert_id;
								$qry_insc = "INSERT INTO tbl_inscricao (id_times, id_anos, forma_pgto, ativo) 
								 				  				VALUES ($id_time, " . $_SESSION["temporada_atual"] . ", $forma_pagto, 0)";

								if ($conn->query($qry_insc) === TRUE) {

									$qry_usu = "INSERT INTO tbl_usuarios (times_id, usuario, senha, senha_provisoria, nivel, tentativas)
												 				  VALUES ($id_time, '$email', '', 1, 3, 0)";

									if ($conn->query($qry_usu) === TRUE) {
										enviarEmail($forma_pagto, $nome, $email);

										$conn->commit();
										echo '{"succeed": true}';
									} else {
								        throw new Exception("Erro ao inserir o usuário: " . $qry_usu . "<br>" . $conn->error);
									}
								} else {
							        throw new Exception("Erro ao inserir a inscrição: " . $qry_insc . "<br>" . $conn->error);
								}
							} else {
						        throw new Exception("Erro ao inserir o time: " . $qry_time . "<br>" . $conn->error);
							}
					    }
					} catch(Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 11006, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
					}
				}
			}
			else 
				echo '{"succeed": false, "errno": 11007, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
	        break;

        case 'times':
        	$where_and = "";
        	if(isset($_GET['q']) && !empty(isset($_GET['q']))) {
        		$where_and = " WHERE LOWER(nome_time) LIKE '%" . strtolower($_GET['q']) .  "%'";
        	}
	    	$list_times = "";
			$timeslist = $conn->query("SELECT nome_time AS time
										 FROM tbl_times" . 
										 $where_and) or trigger_error($conn->error);
        	if($timeslist && $timeslist->num_rows > 0) {
	        	while($time = $timeslist->fetch_object()) {
					$list_times .= '"' . $time->time . '", ';
	        	}

				$list_times = substr($list_times, 0, -2);
	        }
			echo '[' . $list_times . ']';
        	break;

	    default:
	       echo '{"succeed": false, "errno": 11008, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 11009, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}

function enviarEmail($forma_pagto, $nome, $email) {
	if($forma_pagto == 1 || $forma_pagto == 2) {
    	$msg_html = "<p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>O pagamento ($valor) deverá ser feito diretamente com o mini-tesoureiro ou através de deposito/transferência bancária.</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Banco Itaú</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Agência: 4890 <br />C/C: 21441-6<br />CPF: 358.640.578-27<br />Titular: Bruno Gomes da Silva (Gigante Léo)</p>";
    	$msg_plain = "O pagamento ($valor) deverá ser diretamente com o mini-tesoureiro ou através de deposito/transferência bancária. Banco Itaú - Agência: 4890 | C/C: 21441-6 | CPF: 358.640.578-27 | Titular: Bruno Gomes da Silva (Gigante Léo)";
    } else {
    	$msg_html = "<p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>O pagamento ($valor) deverá ser feito pelo PAGSEGURO. Fica tranquilo, é seguro e dá pra parcelar, sem perreco!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Assim que o mesmo for autorizado e dado baixa, seu cadastro automaticamente validado.</p>";
    	$msg_plain = "O pagamento ($valor) deverá ser feito pelo PAGSEGURO. Fica tranquilo, é seguro e dá pra parcelar, sem perreco! Assim que o mesmo for autorizado e dado baixa, seu cadastro automaticamente validado.";
    }

	try {
		$mail = new PHPMailer(true); 

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
	    $mail->addBCC('presidente@cartolassemcartola.com.br', 'Presidente | Cartolas Sem Cartola');
	    $mail->addBCC('contato@cartolassemcartola.com.br', 'Contato | Cartolas Sem Cartola');

	    $mail->isHTML(true);
	    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Sua pré-inscrição na liga, fera!");
	    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Inscrição liga Cartolas sem cartola</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Olá cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Já recebemos seu pedido de inscrição, efetuando o pagamento a sua inscrição será validada. Tira o escorpião do bolso logo, parça!</p>" . $msg_html . "<p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem Cartola</h3></td></tr></table></body></html>");
	    $mail->AltBody = utf8_decode("Olá cartoleiro " . $nome . "! Já recebemos sua inscrição, efetuando o pagamento sua inscrição será validada. " . $msg_plain . " | Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Att., Equipe Cartolas sem Cartola.");

	    $mail->send();
	} catch (Exception $e) {
		$conn->rollback();

		echo '{"succeed": false, "errno": 11005, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
	}
}
?>