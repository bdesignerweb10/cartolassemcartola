<?php

require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('Você não tem permissão para acessar essa página!');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../../lib/PHPMailer/src/Exception.php");
require_once("../../lib/PHPMailer/src/PHPMailer.php");
require_once("../../lib/PHPMailer/src/SMTP.php");

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'getanotemp':
			try {
				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 119, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id = $_GET['idano'] / $_SESSION["fake_id"];
				$descricao = "";

		    	$resano = $conn->query("SELECT descricao FROM tbl_anos WHERE id = $id") or trigger_error($conn->error);

				if ($resano && $resano->num_rows > 0) {
	    			while($ano = $resano->fetch_object()) {
	    				$descricao = $ano->descricao;
					}

		    		$resinsc = $conn->query("SELECT i.id_times AS id, t.nome_time AS time, t.nome_presidente AS presidente, i.ativo AS ativo
		    								   FROM tbl_inscricao i
		    						     INNER JOIN tbl_times t ON t.id = i.id_times
		    								  WHERE i.id_anos = $id") or trigger_error($conn->error);

					$list_times = "[";

					if ($resinsc && $resinsc->num_rows > 0) {
		    			while($inscricoes = $resinsc->fetch_object()) {
		    				$pontuacao = 0;
		    				$posicao_liga = 0;

		    				$querypont = $conn->query("SELECT COALESCE(SUM(pontuacao), 0) AS total FROM tbl_times_temporadas WHERE id_anos = $id AND id_times = $inscricoes->id") or trigger_error($conn->error);
							if ($querypont && $querypont->num_rows > 0) {
				    			while($pont = $querypont->fetch_object()) {
				    				$pontuacao = $pont->total;
				    			}
			    			}

		    				$querypos = $conn->query("SELECT COALESCE(posicao_liga, 0) AS posicao_liga FROM tbl_times_temporadas WHERE id_anos = $id AND id_times = $inscricoes->id AND id_rodadas = " . $_SESSION["rodada"]) or trigger_error($conn->error);
							if ($querypos && $querypos->num_rows > 0) {
				    			while($pos = $querypos->fetch_object()) {
				    				$posicao_liga = $pos->posicao_liga;
				    			}
			    			}

		    				$pode_desativar = 0;

			    			if($id < $_SESSION["temporada_atual"] || ($id == $_SESSION["temporada_atual"] && $_SESSION["temporada"] == 1)) {
			    				$pode_ativar = 0;
			    			}
			    			else {
			    				$pode_ativar = 1;

		                		if($id > $_SESSION["temporada_atual"]) { 
		    						$pode_desativar = 1;
		                		}
			    			}

							$list_times .= '{"id": ' . $inscricoes->id . ', "id_time": ' . $inscricoes->id * $_SESSION["fake_id"] . ', "id_temporada": ' . $id * $_SESSION["fake_id"] . ', "time": "' . $inscricoes->time . '",  "presidente": "' . $inscricoes->presidente . '",  "ativo": "' . $inscricoes->ativo . '", "pontuacao": "' . $pontuacao . '", "posicao_liga": "' . $posicao_liga . '", "pode_ativar": "' . $pode_ativar . '", "pode_desativar": "' . $pode_desativar . '"}, ';
		    			}

						$list_times = substr($list_times, 0, -2);
		    		}

					$list_times .= "]";

					echo '{"succeed": true, "descricao": ' . $descricao . ', "list": ' . $list_times . '}';
				}
				else 
		        	throw new Exception("Erro ao selecionar o ano: " . $conn->error);

			} catch(Exception $e) {
				echo '{"succeed": false, "errno": 513, "title": "Erro ao carregar os dados!", "erro": "Ocorreu um erro ao carregar os dados: ' . $e->getMessage() . '"}';
			}

	        break;

	    case 'ativar':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 119, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				if(!isset($_GET['idtime']) || empty($_GET['idtime'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 119, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do time não enviado! Favor contatar o administrador mostrando o erro!"}';
					exit();
				}

				$id_ano = $_GET['idano'] / $_SESSION["fake_id"];
				$id_time = $_GET['idtime'] / $_SESSION["fake_id"];

				$upd_inscricao = "UPDATE tbl_inscricao 
				  					 SET ativo = 1 
				  				   WHERE id_times = $id_time
				  				     AND id_anos  = $id_ano";

				if ($conn->query($upd_inscricao) === TRUE) {
					$upd_times = "UPDATE tbl_times 
					  			     SET ativo = 1 
					  			   WHERE id = $id_time";

					if ($conn->query($upd_times) === TRUE) {

						$seltemps = $conn->query("SELECT id_rodadas FROM tbl_temporadas WHERE id_anos = $id_ano") 
									or trigger_error($conn->error);

						if ($seltemps && $seltemps->num_rows > 0) {
							$var_erros = "";

			    			while($temp = $seltemps->fetch_object()) {
			    				$ins_time_temp = "INSERT INTO tbl_times_temporadas (id_times, id_anos, id_rodadas, pontuacao, posicao_liga, usuario_id, alterado_em) VALUES ($id_time, $id_ano, $temp->id_rodadas, 0, NULL, " . $_SESSION["usu_id"] . ", NOW())";

								if ($conn->query($ins_time_temp) !== TRUE) {
									$var_erros .= "Erro ao inserir o mapa de rodadas da temporada para o time: " . $ins_time_temp . "<br>" . $conn->error . "<br>";
								}
			    			}

							if(strlen($var_erros) > 0) {
				        		throw new Exception($var_erros);
							}

							$sqltime = $conn->query("SELECT nome_presidente, email FROM tbl_times WHERE id = $id_time") or trigger_error($conn->error);

							$nome = "";
							$email = "";

							if ($sqltime && $sqltime->num_rows > 0) {
				    			while($time = $sqltime->fetch_object()) {
				    				$nome = $time->nome_presidente;
				    				$email = $time->email;
				    			}
				    		}

							$sqlano = $conn->query("SELECT descricao FROM tbl_anos WHERE id = $id_ano") or trigger_error($conn->error);

							$temporada = "";

							if ($sqlano && $sqlano->num_rows > 0) {
				    			while($ano = $sqlano->fetch_object()) {
				    				$temporada = $ano->descricao;
				    			}
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

							    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Seja bem vindo à liga e a nova temporada, parça!");
							    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Inscrição confirmada</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Parabéns Cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Sua inscrição foi concluida com sucesso! Você encarou o desafio, agora está inscrito na nossa liga para a temporada <b>" . $temporada . "</b>!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Lembrando que a temporada começa dia <b>" . $_SESSION["inicio_temporada"] . "/" . $temporada . "</b>, então fica esperto pra não perder nenhuma rodada e depois jogar a culpa no SPORT!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Boa Sorte e boas mitadas!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem cartola</h3></td></tr></table></body></html>");
							    $mail->AltBody = utf8_decode("Parabéns Cartoleiro " . $nome . "! Sua inscrição foi concluida com sucesso! Você encarou o desafio, agora está inscrito na nossa liga para a temporada " . $temporada . "! Lembrando que a temporada começa dia " . $_SESSION["inicio_temporada"] . "/" . $temporada . ", então fica esperto pra não perder nenhuma rodada e depois jogar a culpa no SPORT! Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Boa Sorte e boas mitadas! Att., Equipe Cartolas sem Cartola.");
    							$mail->send();

								$conn->commit();

								echo '{"succeed": true}';
							} catch (Exception $e) {
	    						$conn->rollback();

								echo '{"succeed": false, "errno": 114, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
							}
			    		} else {
					        throw new Exception("Erro ao ativar o time na temporada: Não há uma temporada com rodadas criada para esse ano!");
						}
					} else {
				        throw new Exception("Erro ao ativar o time: " . $upd_times . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao ativar a inscrição: " . $upd_inscricao . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 113, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
				exit();
			}
	        break;

	    case 'desativar':
			try {
				$conn->autocommit(FALSE);

				if(!isset($_GET['idano']) || empty($_GET['idano'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 119, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do ano não enviado! Favor contatar o administrador mostrando o erro!"}';
				}
				if(!isset($_GET['idtime']) || empty($_GET['idtime'])) {
					$conn->rollback();
					echo '{"succeed": false, "errno": 119, "title": "Parâmetro não encontrado!", "erro": "Parâmetro do ID do time não enviado! Favor contatar o administrador mostrando o erro!"}';
				}

				$id_ano = $_GET['idano'] / $_SESSION["fake_id"];
				$id_time = $_GET['idtime'] / $_SESSION["fake_id"];

				$upd_inscricao = "UPDATE tbl_inscricao 
				  					 SET ativo = 0
				  				   WHERE id_times = $id_time
				  				     AND id_anos  = $id_ano";

				if ($conn->query($upd_inscricao) === TRUE) {
					$upd_times = "UPDATE tbl_times 
					  			     SET ativo = 0
					  			   WHERE id = $id_time";

					if ($conn->query($upd_times) === TRUE) {

						$sqldeltimetemp = "DELETE FROM tbl_times_temporadas WHERE id_times = $id_time AND id_anos = $id_ano";
						if ($conn->query($sqldeltimetemp) === TRUE) {
							$sqltime = $conn->query("SELECT nome_presidente, email FROM tbl_times WHERE id = $id_time") or trigger_error($conn->error);

							$nome = "";
							$email = "";

							if ($sqltime && $sqltime->num_rows > 0) {
				    			while($time = $sqltime->fetch_object()) {
				    				$nome = $time->nome_presidente;
				    				$email = $time->email;
				    			}
				    		}

							$sqlano = $conn->query("SELECT descricao FROM tbl_anos WHERE id = $id_ano") or trigger_error($conn->error);

							$temporada = "";

							if ($sqlano && $sqlano->num_rows > 0) {
				    			while($ano = $sqlano->fetch_object()) {
				    				$temporada = $ano->descricao;
				    			}
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

							    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] Já vai embora da liga? Sem nem dizer tchau?");
							    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Time desativado da temporada</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Poxa, Cartoleiro " . $nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Porque você já vai assim, sem dizer tchau? Eu pensei que você tinha topado o desafio da temporada <b>" . $temporada . "</b>!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Mesmo que você tenha dado uma amarelada, eu gostaria de te lembrar que a temporada começa dia <b>" . $_SESSION["inicio_temporada"] . "/" . $temporada . "</b>, vaique, né?</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Boa Sorte e boas mitadas!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem cartola</h3></td></tr></table></body></html>");
							    $mail->AltBody = utf8_decode("Poxa, Cartoleiro " . $nome . "! Porque você já vai assim, sem dizer tchau? Eu pensei que você tinha topado o desafio da temporada <b>" . $temporada . "</b>! Mesmo que você tenha dado uma amarelada, eu gostaria de te lembrar que a temporada começa dia <b>" . $_SESSION["inicio_temporada"] . "/" . $temporada . "</b>, vaique, né? Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Boa Sorte e boas mitadas! Att., Equipe Cartolas sem Cartola.");

    							$mail->send();

								$conn->commit();
							
								echo '{"succeed": true}';
							} catch (Exception $e) {
	    						$conn->rollback();

								echo '{"succeed": false, "errno": 114, "title": "Erro ao enviar o e-mail!", "erro": "Ocorreu um erro ao enviar o e-mail: ' . $mail->ErrorInfo . '"}';
							}
						} else {
					        throw new Exception("Erro ao remover o mapa de rodadas da temporada para o time: " . $sqldeltimetemp . "<br>" . $conn->error);
						}
					} else {
				        throw new Exception("Erro ao desativar o time: " . $upd_times . "<br>" . $conn->error);
					}
				} else {
			        throw new Exception("Erro ao desativar a inscrição: " . $upd_inscricao . "<br>" . $conn->error);
				}
			} catch(Exception $e) {
				$conn->rollback();
				echo '{"succeed": false, "errno": 113, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			}
	        break;
	    
	    default:
	       echo '{"succeed": false, "errno": 198, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 199, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}

function sendMail($nome, $email, $temporada, $tipo) {
	
}