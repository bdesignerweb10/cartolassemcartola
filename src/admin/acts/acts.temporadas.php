<?php

require_once("../../conn.php");

if(isset($_POST) && !empty($_POST) && $_POST["descricao"]) {
	$isValid = true;
	$errMsg = "";

	if(!isset($_POST["descricao"]) || empty($_POST["descricao"])) {
		$errMsg .= "Descrição (ano da temporada)";
		$isValid = false;
	}

	if(!$isValid) {
		echo '{"succeed": false, "errno": 510, "title": "Erro em um ou mais campos do formulário!", "erro": "Ocorreram erros nos seguintes campos do formulário: <b>' . $errMsg . '</b>"}';
	}
	else {
		try {
			$conn->autocommit(FALSE);


		} catch(Exception $e) {
			$conn->rollback();

			echo '{"succeed": false, "errno": 513, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
		}
	}
}
else 
	echo '{"succeed": false, "errno": 912, "title": "Erro ao enviar o formulário!", "erro": "Ocorreu um erro ao tentar enviar seu formulário, favor recarregar a página e tentar novamente!"}';