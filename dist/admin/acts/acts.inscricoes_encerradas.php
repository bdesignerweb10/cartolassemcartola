<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('Você não tem permissão para acessar essa página!');
set_time_limit(0);

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once("../../lib/PHPMailer/src/Exception.php");
require_once("../../lib/PHPMailer/src/PHPMailer.php");
require_once("../../lib/PHPMailer/src/SMTP.php");

$selusuario = $conn->query("SELECT tbl_usuarios.id AS id, tbl_usuarios.usuario AS email, tbl_times.nome_presidente AS nome
							  FROM tbl_usuarios 
					    INNER JOIN tbl_times ON tbl_times.id = tbl_usuarios.times_id
							 WHERE tbl_usuarios.senha_provisoria = 1
                               AND tbl_times.ativo = 1") or trigger_error($conn->error);

if ($selusuario && $selusuario->num_rows > 0) {
	$err_emails = "";
	while($usuario = $selusuario->fetch_object()) {
		$senha = geraSenha(6);
	    $actual_link = str_replace('admin/', '', str_replace('acts/', '', full_path()));

		$upd_usuario = "UPDATE tbl_usuarios 
		  			       SET senha = '" . md5($senha) . "',
		  			           senha_provisoria = 1,
		  			           tentativas = 0
		  			     WHERE id = $usuario->id";

		if ($conn->query($upd_usuario) === TRUE) {
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
			    $mail->addAddress($usuario->email, $usuario->nome);
			    $mail->addBCC('presidente@cartolassemcartola.com.br', 'Presidente | Cartolas Sem Cartola');
			    $mail->addBCC('contato@cartolassemcartola.com.br', 'Contato | Cartolas Sem Cartola');

			    $mail->isHTML(true);

			    $mail->Subject = utf8_decode("[Cartolas Sem Cartola] A temporada " . $_SESSION["temp_atual"] . " foi aberta!");
			    $mail->Body    = utf8_decode("<html><head></head><body><table width='600' border='0' align='center' cellpadding='0' cellspacing='0' style='background-color:#e9e9e9;'><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Temporada " . $_SESSION["temp_atual"] . " aberta!</h3></td></tr><tr><td><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-top:20px;'>Olá cartoleiro " . $usuario->nome . "!</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>A temporada está começando e com isso as inscrições se encerram! :(</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Como você foi um bom menino e fez o pagamento da sua inscrição agora segue seu usuario e sua senha provisória para que você consiga acessar ao site:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'><b>Login: </b>" . $usuario->email . "<br /><b>Senha provisória: </b>" . $senha . "</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'><a href='$actual_link'>Acesse o site agora mesmo para alterar a sua senha e desfrutar de tudo que o portal tem a oferecer!</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px;'> - (19) 99897-0090<br /> - <a href='mailto:contato@cartolassemcartola.com.br'>contato@cartolassemcartola.com.br</a></p><p style='font-family:Verdana, Geneva, sans-serif; padding-left:20px; padding-bottom:20px;'>Att,</p></td></tr><tr><td style='background-color:#fc8f3e; width:600px; height:106px;'><h3 style='font-family:Verdana, Geneva, sans-serif; color:#fff; padding-top:15px;' align='center'>Equipe Cartolas sem Cartola</h3></td></tr></table></body></html>");
			    $mail->AltBody = utf8_decode("Olá cartoleiro " . $usuario->nome . "! A temporada está começando e com isso as inscrições se encerram! :( | Como você foi um bom menino e fez o pagamento da sua inscrição agora segue seu usuario e sua senha provisória para que você consiga acessar ao site: Login: " . $usuario->email . " | Senha provisória: " . $senha . " | Acesse o site ($actual_link) agora mesmo para alterar a sua senha e desfrutar de tudo que o portal tem a oferecer! Caso tenha alguma dúvida ou sugestão, entre em contato por: (19) 99897-0090 ou contato@cartolassemcartola.com.br. Att., Equipe Cartolas sem Cartola.");

			    $mail->send();
				$conn->commit();
			} catch(Exception $e) {
				$err_emails .= "Erro ao enviar e-mail (" . $usuario->email . "): " . $mail->ErrorInfo;
			}
		}
	}
}
?>