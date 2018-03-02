<?php
require_once("../../conn.php");

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

			$usu_qry = $conn->query("SELECT id, times_id, usuario, senha, nivel, tentativas FROM tbl_usuarios WHERE usuario = '" . $login . "'") 
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
					}

					if($usu_tentativas == 3) {
						echo '{"succeed": false, "errno": 21004, "title": "Usuário bloqueado!", "erro": "Seu usuário está bloqueado por tentar por muitas vezes fazer login sem sucesso. Favor enviar um e-mail para contato@cartolassemcartola.com.br com o seu login para que possamos resolver seu problema!"}';
						exit();
					} else {
						$tentativas = 0;

						if($usu_senha != md5($senha)) {
							$tentativas = ($usu_tentativas + 1);

							$qry_tent = "UPDATE tbl_usuarios SET tentativas = " . $tentativas . " WHERE id = " . $usu_id;
							if ($conn->query($qry_tent) === TRUE) {
								echo '{"succeed": false, "errno": 21005, "title": "Senha errada!", "erro": "A senha digiada para o usuário está errada, favor revisar as informações e tente novamente!"}';
								exit();
							}
						} else {
							$tentativas = 0;
							
							$qry_tent = "UPDATE tbl_usuarios SET tentativas = " . $tentativas . " WHERE id = " . $usu_id;
							if ($conn->query($qry_tent) !== TRUE) {
					        	throw new Exception("Erro ao alterar o usuário: " . $qry_tent . "<br>" . $conn->error);
							}

							if($usu_nivel == 3) {
								echo '{"succeed": false, "errno": 21006, "title": "Usuário sem permissão!", "erro": "Você não possui acesso para essa região do sistema."}';
								exit();
							}
						}
					}

					//TODO: fazer tratativa para senha provisoria

					$_SESSION["usu_id"] = $usu_id;
					$_SESSION["usu_login"] = $usu_login;
					$_SESSION["usu_nivel"] = $usu_nivel;

					if(isset($_SESSION["usu_id"]) && !empty($_SESSION["usu_id"]) && 
					   isset($_SESSION["usu_login"]) && !empty($_SESSION["usu_login"]) && 
					   isset($_SESSION["usu_nivel"]) && !empty($_SESSION["usu_nivel"])) {
						echo '{"succeed": true}';
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
?>