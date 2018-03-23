<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] != "1" || $_SESSION["usu_id"] == "0") die('28001 - Você não tem permissão para acessar essa página!');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../../lib/PHPMailer/src/Exception.php");
require_once("../../lib/PHPMailer/src/PHPMailer.php");
require_once("../../lib/PHPMailer/src/SMTP.php");

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
		case 'showupd':
			try {
				if(!isset($_GET['idusuario']) || empty($_GET['idusuario'])) {
					echo '{"succeed": false, "errno": 28009, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do evento não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idusuario'] / $_SESSION["fake_id"];

		    	$qryusuarios = $conn->query("SELECT usu.id AS id, time.nome_time AS time, usu.usuario AS usuario, usu.senha AS senha, 
		    									    usu.nivel AS nivel, usu.senha_provisoria AS ativo, usu.tentativas AS tentativas
		    								   FROM tbl_usuarios usu
		    							  LEFT JOIN tbl_times time ON time.id = usu.times_id
		    								  WHERE usu.id = $id") or trigger_error("28010 - " . $conn->error);

				if ($qryusuarios && $qryusuarios->num_rows > 0) {
					$dados = "";
	    			while($usuario = $qryusuarios->fetch_object()) {
	    				$dados = '{"id" : "' . $usuario->id . '", "usuario": "' . $usuario->usuario . '", "senha": "' . $usuario->senha . '", "nivel": ' . $usuario->nivel . ', "time": "' . $usuario->time . '"}';
	    			}

					echo '{"succeed": true, "dados": ' . $dados . '}';
					exit();
	    		}
	    		else {
	    			throw new Exception('Nenhum usuário encontrado com o ID ' . $id . "!");
	    		}
			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 28011, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
				exit();
			}

			break;

		case 'add':
			try {
				$conn->autocommit(FALSE);

				if(isset($_POST) && !empty($_POST) && $_POST["usuario"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["usuario"]) || empty($_POST["usuario"])) {
						$errMsg .= "Usuário (Login)";
						$isValid = false;
					}

					if(!isset($_POST["senha"]) || empty($_POST["senha"])) {
						$errMsg .= "Senha";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 28004, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$usuario = $_POST["usuario"];
						$senha = $_POST["senha"];

						$usuexist = $conn->query("SELECT id FROM tbl_usuarios WHERE usuario = '" . $usuario . "'") or 
								trigger_error("28007 - " . $conn->error);

						if ($usuexist && $usuexist->num_rows > 0) {
							echo '{"succeed": false, "errno": 28008, "title": "Usuário já cadastrado no banco de dados!", "erro": "Usuário escolhido <b>' . $usuario . '</b> já foi cadastrado, favor revisar os dados e tentar novamente!"}';
							$conn->rollback();
							exit();
						}

						$qryusuinsert = "INSERT INTO tbl_usuarios (times_id, usuario, senha, nivel, senha_provisoria, tentativas) VALUES (NULL, '" . $usuario . "', MD5('" . $senha . "'), 1, 0, 0)";

						if ($conn->query($qryusuinsert) === TRUE) {
							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao inserir o usuário administrador: " . $qryusuinsert . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 28005, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();

				echo '{"succeed": false, "errno": 28006, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}

			break;

		case 'edit':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idusuario']) || empty($_GET['idusuario'])) {
					echo '{"succeed": false, "errno": 28018, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do usuário não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idusuario'] / $_SESSION["fake_id"];

				if(isset($_POST) && !empty($_POST) && $_POST["user"]) {
					$isValid = true;
					$errMsg = "";

					if(!isset($_POST["user"]) || empty($_POST["user"])) {
						$errMsg .= "Usuário (Login)";
						$isValid = false;
					}

					if(!isset($_POST["password"]) || empty($_POST["password"])) {
						$errMsg .= "Senha";
						$isValid = false;
					}

					if(!isset($_POST["nivel"]) || empty($_POST["nivel"])) {
						$errMsg .= "Nível";
						$isValid = false;
					}

					if(!$isValid) {
						echo '{"succeed": false, "errno": 28014, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
						$conn->rollback();
						exit();
					}
					else {
						$usuario = $_POST["user"];
						$senha = $_POST["password"];
						$nivel = $_POST["nivel"];

						$usuexist = $conn->query("SELECT id FROM tbl_usuarios WHERE usuario = '" . $usuario . "' AND id <> $id") or 
								trigger_error("28015 - " . $conn->error);

						if ($usuexist && $usuexist->num_rows > 0) {
							echo '{"succeed": false, "errno": 28016, "title": "Usuário já cadastrado no banco de dados!", "erro": "Usuário escolhido <b>' . $usuario . '</b> já foi cadastrado, favor revisar os dados e tentar novamente!"}';
							$conn->rollback();
							exit();
						}

						$qryususen = $conn->query("SELECT senha FROM tbl_usuarios WHERE id = $id") or trigger_error("28019 - " . $conn->error);

						if ($qryususen && $qryususen->num_rows > 0) {
			    			while($user = $qryususen->fetch_object()) {
			    				if($user->senha == $senha) {
			    					$senha = $user->senha;
			    				}
			    				else {
			    					$senha = md5($senha);
			    				}
			    			}
			    		}

						$qryusuupdate = "UPDATE tbl_usuarios SET usuario = '" . $usuario . "', senha = '" . $senha . "', nivel = $nivel WHERE id = $id";

						if ($conn->query($qryusuupdate) === TRUE) {
							if($_SESSION["usu_id"] == $id) {
								$_SESSION["usu_login"] = $usuario;
								$_SESSION["usu_nivel"] = $nivel;
							}

							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao alterar o usuário: " . $qryusuupdate . "<br>" . $conn->error);
						}
					}
				}
				else {
					echo '{"succeed": false, "errno": 28017, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
					$conn->rollback();
					exit();
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 28018, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
			break;

		case 'del':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idusuario']) || empty($_GET['idusuario'])) {
					echo '{"succeed": false, "errno": 28012, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do usuário não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idusuario'] / $_SESSION["fake_id"];

				$qryusuarios = $conn->query("SELECT times_id FROM tbl_usuarios WHERE id = $id") or trigger_error("28014 - " . $conn->error);

				if ($qryusuarios && $qryusuarios->num_rows > 0) {
	    			while($usuario = $qryusuarios->fetch_object()) {
	    				if(isset($usuario->times_id) && !empty($usuario->times_id))
	    					throw new Exception('Não é possível remover usuários com time vinculados a ele. Para remover o usuário em questão é necessário desativar o time no painel de gerenciamento de times!');
	    			}
	    		}
	    		else {
	    			throw new Exception('Nenhum usuário encontrado com o ID ' . $id . "!");
	    		}

				$qrydelusuario = "DELETE FROM tbl_usuarios WHERE id = $id";
				if ($conn->query($qrydelusuario) === TRUE) {
					if($_SESSION["usu_id"] == $id) {
						$_SESSION["usu_id"] = NULL;
						$_SESSION["usu_login"] = NULL;
						$_SESSION["usu_nivel"] = NULL;
					}

					$conn->commit();
					echo '{"succeed": true}';
				} else {
			        throw new Exception("Erro ao remover o usuário: " . $qrydelusuario . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 28013, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
			break;

		case 'reset':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idusuario']) || empty($_GET['idusuario'])) {
					echo '{"succeed": false, "errno": 28020, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do usuário não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idusuario'] / $_SESSION["fake_id"];
				$senha = geraSenha(6);

				$upd_usuario = "UPDATE tbl_usuarios 
				  			       SET senha = '" . md5($senha) . "',
				  			           senha_provisoria = 1,
				  			           tentativas = 0
				  			     WHERE id = $id";

				if ($conn->query($upd_usuario) === TRUE) {
		    		try {
						$qryusutime = $conn->query("SELECT times_id FROM tbl_usuarios WHERE id = $id") or trigger_error("28023 - " . $conn->error);

						if ($qryusutime && $qryusutime->num_rows > 0) {
			    			while($user = $qryusutime->fetch_object()) {
			    				$id_time = $user->times_id;
			    			}
			    		}

						$sqltime = $conn->query("SELECT nome_presidente, email FROM tbl_times WHERE id = $id_time") or trigger_error("28024 - " . $conn->error);

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

						    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Sua senha foi resetada, presidente!");
						    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Reset de senha do Cartolas sem Cartola</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Olá cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Sua senha foi resetada por um admin, cabeção! Agora seus novos dados de acesso são:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'><b>Login: </b>" . $email . "<br /><b>Senha provisória: </b>" . $senha . "</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'><a href='$actual_link'>Acesse o site agora mesmo para alterar a sua senha e desfrutar de tudo que o portal tem a oferecer!</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem Cartola</h3></td></tr></table></body></html>");
						    $mail->AltBody = utf8_decode("Olá cartoleiro " . $nome . "! Sua senha foi resetada por um admin cabeção! Agora seus novos dados de acesso são: Login: " . $email . " | Senha provisória: " . $senha . " | Acesse o site ($actual_link) agora mesmo para alterar a sua senha e desfrutar de tudo que o portal tem a oferecer! Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Att., Equipe Cartolas sem Cartola.");

						    $mail->send();
			    		}

						$conn->commit();
						echo '{"succeed": true}';
					} catch (Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 28022, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
					}
				} else {
			        throw new Exception("Erro ao resetar a senha do usuário: " . $upd_usuario . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 28021, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}

			break;

		case 'deactivate':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idusuario']) || empty($_GET['idusuario'])) {
					echo '{"succeed": false, "errno": 28025, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do usuário não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id = $_GET['idusuario'] / $_SESSION["fake_id"];
				$senha = geraSenha(6);

				$upd_usuario = "UPDATE tbl_usuarios 
				  			       SET senha = '" . md5($senha) . "',
				  			           senha_provisoria = 1,
				  			           tentativas = 3
				  			     WHERE id = $id";

				if ($conn->query($upd_usuario) === TRUE) {
		    		try {
						$qryusutime = $conn->query("SELECT times_id FROM tbl_usuarios WHERE id = $id") or trigger_error("28026 - " . $conn->error);

						if ($qryusutime && $qryusutime->num_rows > 0) {
			    			while($user = $qryusutime->fetch_object()) {
			    				$id_time = $user->times_id;
			    			}
			    		}

						$sqltime = $conn->query("SELECT nome_presidente, email FROM tbl_times WHERE id = $id_time") or trigger_error("23027 - " . $conn->error);

						$nome = "Sem Nome";
						$email = "sem@email";

						if ($sqltime && $sqltime->num_rows > 0) {
			    			while($time = $sqltime->fetch_object()) {
			    				$nome = $time->nome_presidente;
			    				$email = $time->email;
			    			}

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

						    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Seu usuário foi desabilitado, presidente!");
						    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Reset de senha do Cartolas sem Cartola</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Olá cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Não sei que treta rolou, mas parece que por algum motivo seu usuário foi desabilitado do sistema.</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>De qualquer forma, se você não sabe o motivo pelo qual isso aconteceu, sugiro que entre em contato com um administrador.</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem Cartola</h3></td></tr></table></body></html>");
						    $mail->AltBody = utf8_decode("Olá cartoleiro " . $nome . "! Não sei que treta rolou, mas parece que por algum motivo seu usuário foi desabilitado do sistema. De qualquer forma, se você não sabe o motivo pelo qual isso aconteceu, sugiro que entre em contato com um administrador. Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Att., Equipe Cartolas sem Cartola.");

						    $mail->send();
			    		}
						$conn->commit();
						echo '{"succeed": true}';
					} catch (Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 23028, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
					}
				} else {
			        throw new Exception("Erro ao resetar a senha do usuário: " . $upd_usuario . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 28029, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
			break;

	    default:
	       echo '{"succeed": false, "errno": 28002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 28003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>