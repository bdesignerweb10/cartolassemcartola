<?php
require_once("../../conn.php");

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../../lib/PHPMailer/src/Exception.php");
require_once("../../lib/PHPMailer/src/PHPMailer.php");
require_once("../../lib/PHPMailer/src/SMTP.php");

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'login':
			if(isset($_POST) && !empty($_POST) && $_POST["login"]) {
				$isValid = true;
				$errMsg = "";

				if(!isset($_POST["login"]) || empty($_POST["login"])) {
					$errMsg .= "Login";
					$isValid = false;
				}
				
				if(!isset($_POST["senha"]) || empty($_POST["senha"])) {
					if(!$isValid)
						$errMsg .= ", ";	
					
					$errMsg .= "Senha";
					$isValid = false;
				}

				if(!$isValid) {
					echo '{"succeed": false, "errno": 21001, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
				}
				else {
					try {
						$conn->autocommit(FALSE);

						$login = $_POST["login"];
						$senha = $_POST["senha"];

						$usu_qry = $conn->query("SELECT id, times_id, usuario, senha, nivel, tentativas, senha_provisoria FROM tbl_usuarios WHERE usuario = '" . $login . "'") 
										or trigger_error("21002 - " . $conn->error);

						if ($usu_qry) { 
						    if($usu_qry->num_rows === 0) {
								echo '{"succeed": false, "errno": 21003, "title": "Usuário não encontrado!", "erro": "O usuário digitado não se encontra na base de dados!"}';
								exit();
						    } else {
						        while($usuario = $usu_qry->fetch_object()) {
									$usu_id = $usuario->id;
									$usu_time = $usuario->times_id;
									$usu_login = $usuario->usuario;
									$usu_senha = $usuario->senha;
									$usu_nivel = $usuario->nivel;
									$usu_tentativas = $usuario->tentativas;
									$senha_provisoria = $usuario->senha_provisoria;
								}

								if($usu_nivel == "3") {
									echo '{"succeed": false, "errno": 21011, "title": "Acesso proibido!", "erro": "Seu usuário não pode acessar ao administrador do site Cartolas sem Cartola. Favor entra em contato com a administração do site para maiores esclarecimentos!"}';
									exit();
								}

								if($usu_tentativas == 3) {
									echo '{"succeed": false, "errno": 21004, "title": "Usuário bloqueado!", "erro": "Seu usuário está bloqueado por tentar por muitas vezes fazer login sem sucesso. Favor enviar um e-mail para contato@cartolassemcartola.com.br informando o seu time e login para que possamos resolver seu problema!"}';
									exit();
								} else {
									$tentativas = 0;

									if($usu_senha != md5($senha)) {
										$tentativas = ($usu_tentativas + 1);

										$qry_tent = "UPDATE tbl_usuarios SET tentativas = " . $tentativas . " WHERE id = " . $usu_id;
										if ($conn->query($qry_tent) === TRUE) {
											echo '{"succeed": false, "errno": 21005, "title": "Senha errada!", "erro": "A senha digitada para o usuário está errada. Você só tem mais ' . (3 - $tentativas) . ' tentativa(s) para acertar a sua senha."}';
											$conn->commit();
											exit();
										}
									} else {
										$tentativas = 0;
										
										$qry_tent = "UPDATE tbl_usuarios SET tentativas = " . $tentativas . " WHERE id = " . $usu_id;
										if ($conn->query($qry_tent) !== TRUE) {
								        	throw new Exception("Erro ao alterar o usuário: " . $qry_tent . "<br>" . $conn->error);
										}
						
										$conn->commit();
									}

									if($_SESSION["user_ativado"] && $senha_provisoria == 1) {
										$_SESSION["prov_id"] = $usu_id;
										$_SESSION["prov_login"] = $usu_login;

										echo '{"succeed": false, "errno": 21010, "title": "Alteração de senha!", "erro": "Seu usuário está com uma senha provisória gerada pelo sistema, ao fechar a mensagem você será redirecionado para a tela de alteração de senha para escolher uma senha definitiva!"}';
										exit();
									}
								}

								$usu_escudo = "";
								$usu_nome = $usu_login;

								if(isset($usu_time) && !empty($usu_time) && $usu_time > 0) {
									$sqltime = $conn->query("SELECT nome_presidente, escudo_time FROM tbl_times WHERE id = $usu_time") or trigger_error("21019 - " . $conn->error);

									if ($sqltime && $sqltime->num_rows > 0) {
						    			while($time = $sqltime->fetch_object()) {
						    				$usu_nome = $time->nome_presidente;
						    				if(file_exists("../../img/escudos/" . $time->escudo_time))
						    					$usu_escudo = $time->escudo_time;
						    				else 
						    					$usu_escudo = "no-escudo.png";
						    			}
						    		}
								}

								$_SESSION["usu_id"] = $usu_id;
								$_SESSION["usu_time"] = $usu_time;
								$_SESSION["usu_login"] = $usu_login;
								$_SESSION["usu_nome"] = $usu_nome;
								$_SESSION["usu_nivel"] = $usu_nivel;
								$_SESSION["usu_escudo"] = $usu_escudo;

								if(isset($_SESSION["usu_id"]) && !empty($_SESSION["usu_id"]) && 
								   isset($_SESSION["usu_login"]) && !empty($_SESSION["usu_login"]) && 
								   isset($_SESSION["usu_nivel"]) && !empty($_SESSION["usu_nivel"])) {
									echo '{"succeed": true}';

									if(isset($_POST["lembrar"]) && !empty($_POST["lembrar"]) && $_POST["lembrar"] == "on") {
										setcookie('usu_id', $_SESSION["usu_id"], (time() + (3 * 24 * 3600)), '/');
										setcookie('usu_time', $_SESSION["usu_time"], (time() + (3 * 24 * 3600)), '/');
										setcookie('usu_login', $_SESSION["usu_login"], (time() + (3 * 24 * 3600)), '/');
										setcookie('usu_nome', $_SESSION["usu_nome"], (time() + (3 * 24 * 3600)), '/');
										setcookie('usu_nivel', $_SESSION["usu_nivel"], (time() + (3 * 24 * 3600)), '/');
										setcookie('usu_escudo', $_SESSION["usu_escudo"], (time() + (3 * 24 * 3600)), '/');
									} else {
										setcookie('usu_id', null, time() - 42000, '/');
										setcookie('usu_time', null, time() - 42000, '/');
										setcookie('usu_login', null, time() - 42000, '/');
										setcookie('usu_nome', null, time() - 42000, '/');
										setcookie('usu_nivel', null, time() - 42000, '/');
										setcookie('usu_escudo', null, time() - 42000, '/');

										unset($_COOKIE["usu_id"]);
										unset($_COOKIE["usu_time"]);
										unset($_COOKIE["usu_login"]);
										unset($_COOKIE["usu_nome"]);
										unset($_COOKIE["usu_nivel"]);
										unset($_COOKIE["usu_escudo"]);
									}
									exit();
								}
								else {
									echo '{"succeed": false, "errno": 21009, "title": "Erro ao salvar sessão!", "erro": "Não foi possível salvar dados necessários para o sistema funcionar na sessão!"}';
									exit();
								}
						    }
						}
					} catch(Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 21007, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
					}
				}
			}
			else 
				echo '{"succeed": false, "errno": 21008, "title": "Erro ao fazer login!", "erro": "O formulário não foi preenchido, favor tentar novamente!"}';

	        break;
	        
	    case 'reset':
	    	try {
				if(isset($_POST) && !empty($_POST) && $_POST["usuario"]) {
					$conn->autocommit(FALSE);

					$usu_qry = $conn->query("SELECT id, times_id, nivel FROM tbl_usuarios WHERE usuario = '" . $_POST["usuario"] . "'") or trigger_error("21014 - " . $conn->error);

					if ($usu_qry) { 
					    if($usu_qry->num_rows === 0) {
							echo '{"succeed": false, "errno": 21015, "title": "Usuário não encontrado!", "erro": "O usuário digitado não se encontra na base de dados!"}';
							exit();
					    } else {
					        while($usuario = $usu_qry->fetch_object()) {
					        	$id = $usuario->id;
					        	$id_time = $usuario->times_id;

								if($usuario->nivel == "3") {
									echo '{"succeed": false, "errno": 21019, "title": "Acesso proibido!", "erro": "Seu usuário não pode acessar ao administrador do site Cartolas sem Cartola. Favor entra em contato com a administração do site para maiores esclarecimentos!"}';
									exit();
								}
					        }

					        $senha = geraSenha(6);

							$upd_usuario = "UPDATE tbl_usuarios 
							  			       SET senha = '" . md5($senha) . "',
							  			           senha_provisoria = 1,
							  			           tentativas = 0
							  			     WHERE id = $id";

							if ($conn->query($upd_usuario) === TRUE) {
					    		try {
									$sqltime = $conn->query("SELECT nome_presidente, email FROM tbl_times WHERE id = $id_time") or trigger_error("23024 - " . $conn->error);

									$nome = "Sem Nome";
									$email = "sem@email";

									if ($sqltime && $sqltime->num_rows > 0) {
						    			while($time = $sqltime->fetch_object()) {
						    				$nome = $time->nome_presidente;
						    				$email = $time->email;
						    			}

			    						$actual_link = str_replace('admin/', '', str_replace('acts/', '', full_path()));

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

									    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Recuperação de senha!");
									    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Recuperação de senha do Cartolas sem Cartola</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Olá cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Parça, você requisitou a recuperação da sua senha. Então o sistema gerou uma nova senha, fresquinha pra você, saca só:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'><b>Login: </b>" . $email . "<br /><b>Senha provisória: </b>" . $senha . "</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'><a href='$actual_link'>Acesse o site agora mesmo para alterar a sua senha e desfrutar de tudo que o portal tem a oferecer!</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso você não tenha solicitado a recuperação da sua senha, favor em contato urgentemente com a administração do site!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem Cartola</h3></td></tr></table></body></html>");
									    $mail->AltBody = utf8_decode("Olá cartoleiro " . $nome . "! Parça, você requisitou a recuperação da sua senha. Então o sistema gerou uma nova senha, fresquinha pra você, saca só: Login: " . $email . " | Senha provisória: " . $senha . " | Acesse o site ($actual_link) agora mesmo para alterar a sua senha e desfrutar de tudo que o portal tem a oferecer! Caso você não tenha solicitado a recuperação da sua senha, favor em contato urgentemente com a administração do site! Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Att., Equipe Cartolas sem Cartola.");

									    $mail->send();
						    		}

									$conn->commit();
									echo '{"succeed": true}';
								} catch (Exception $e) {
									$conn->rollback();

									echo '{"succeed": false, "errno": 21016, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
								}
							} else {
						        throw new Exception("Erro ao resetar a senha do usuário: " . $upd_usuario . "<br>" . $conn->error);
							}
					    }
					}
				}
				else 
					echo '{"succeed": false, "errno": 21017, "title": "Erro ao fazer login!", "erro": "O formulário não foi preenchido, favor tentar novamente!"}';
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 21018, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}

	        break;

	    default:
	       echo '{"succeed": false, "errno": 21012, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 21013, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>