<?php
require_once("../conn.php");

if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) || 
	$_SESSION["usu_id"] == "0")
	header('Location: ../login');
					    
if(isset($_POST) && !empty($_POST) && $_POST["time"]) {
	$isValid = true;
	$errMsg = "";

	if(!isset($_POST["time"]) || empty($_POST["time"])) {
		$errMsg .= "Time";
		$isValid = false;
	}
	
	if(!$isValid) {
		echo '{"succeed": false, "errno": 19101, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
	}
	else {
		try {
			$conn->autocommit(FALSE);

			$id = $_SESSION["usu_id"];
			$id_time = $_SESSION["usu_time"];
			$time = $_POST["time"];
			$historia = $_POST["historia"];
			$ano_fundacao = $_POST["ano_fundacao"];

			$timeqry = $conn->query("SELECT escudo_time
									   FROM tbl_times
									  WHERE id = " . $id_time) or trigger_error("19104 - " . $conn->error);

			if ($timeqry) { 
			    if($timeqry->num_rows === 0) {
					echo '{"succeed": false, "errno": 19105, "title": "Time não encontrado!", "erro": "O time digitado não se encontra na base de dados!"}';
					exit();
			    } else {
			        while($escudo = $timeqry->fetch_object()) {
						$upd_time = "UPDATE tbl_times 
					  			        SET nome_time = '" . $time . "',
					  			            historia = '" . $historia . "',
					  			            ano_fundacao = '" . $ano_fundacao . "'
						  			  WHERE id = " . $id_time;
						if ($conn->query($upd_time) === TRUE) {
							if(isset($_FILES['brasao'])) {

								if($_FILES['brasao']['type'] != "image/png") {
					        		throw new Exception("Imagem enviada precisa ser tipo PNG!");
								}
							    
							    $imgsize = getimagesize($_FILES['brasao']['tmp_name']);

							    if($imgsize[0] < 200) {
					        		throw new Exception("Tamanho mínimo da largura da imagem precisa ser 200px! Favor escolher outra imagem e enviar novamente!");
							    }

							    $pathEscudoGrande = "../img/escudos/clube/" . $escudo->escudo_time;
							    $pathEscudo = "../img/escudos/" . $escudo->escudo_time;

							    if(is_uploaded_file($_FILES['brasao']['tmp_name']) || $_FILES['brasao']['error'] !== UPLOAD_ERR_OK) {
							        $ratio = $imgsize[0] / $imgsize[1];

								    $width200 = 200;
								    $height200 = 200 / $ratio;
								    $width30 = 30;
								    $height30 = 30 / $ratio;

									$src = imagecreatefrompng($_FILES['brasao']['tmp_name']);
									
									$dst = imagecreatetruecolor($width200, $height200);
								    imagealphablending($dst, false);
								    imagesavealpha($dst, true);

									imagecopyresampled($dst, $src, 0, 0, 0, 0, $width200, $height200, $imgsize[0], $imgsize[1]);
									imagepng($dst, $pathEscudoGrande, 0);
									imagedestroy($dst);
									imagedestroy($src);

									$src = imagecreatefrompng($_FILES['brasao']['tmp_name']);

									$dst = imagecreatetruecolor($width30, $height30);
								    imagealphablending($dst, false);
								    imagesavealpha($dst, true);

									imagecopyresampled($dst, $src, 0, 0, 0, 0, $width30, $height30, $imgsize[0], $imgsize[1]);
									imagepng($dst, $pathEscudo, 0);
									imagedestroy($dst);
									imagedestroy($src);
									
									$_SESSION["usu_escudo"] = $escudo->escudo_time;

									if(isset($_COOKIE['usu_escudo']) && !empty($_COOKIE['usu_escudo'])) {
										$_COOKIE['usu_escudo'] = $_SESSION["usu_escudo"];
									}
							    }
							    else {
					        		throw new Exception("Arquivo não foi enviado com sucesso. Favor contatar o administrador da página.");
							    }
							}

							$conn->commit();
							echo '{"succeed": true}';
						} else {
					        throw new Exception("Erro ao atualizar o time: " . $upd_time . "<br>" . $conn->error);
						}
					}
				}
			}
		} catch(Exception $e) {
			$conn->rollback();
			echo '{"succeed": false, "errno": 19102, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
			exit();
		}
	}
}
else 
	echo '{"succeed": false, "errno": 19103, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';
?>