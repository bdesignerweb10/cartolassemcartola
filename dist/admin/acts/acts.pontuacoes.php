<?php
require_once("../../conn.php");
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] == "3" || $_SESSION["usu_id"] == "0") die('25001 - Você não tem permissão para acessar essa página!');

if(isset($_GET['act']) && !empty($_GET['act'])) {
	switch ($_GET['act']) {
	    case 'updpont':
        	if($_SESSION["temporada"] == 1) {
	        	if($_SESSION["mercado"] == 0) {
					try {
						$conn->autocommit(FALSE);
							
						if(isset($_POST["operador"]) && !empty($_POST["operador"]) && 
					       isset($_POST["pontuacao"]) && !empty($_POST["pontuacao"])) {
							$operarray =  $_POST["operador"];
							$pontarray =  $_POST["pontuacao"];
							$var_erros = "";

			        		foreach ($operarray as $idfake => $operador) {
								if(isset($operador) && !empty($operador)) {
									$id = $idfake / $_SESSION["fake_id"];

									$pontrodada = floatval(str_replace(',', '.', $pontarray[$idfake]));

									if($operador == "-")
										$pontrodada = $pontrodada * -1;

									$qryupdpontuacao = "UPDATE tbl_times_temporadas 
												  		   SET pontuacao = $pontrodada
													     WHERE id_anos = " . $_SESSION["temporada_atual"] . "
													       AND id_rodadas = " . $_SESSION["rodada"] . " 
													       AND id_times = $id";

									if ($conn->query($qryupdpontuacao) !== TRUE) {
										$var_erros .= "Erro ao lançar a pontuação " . $qryupdpontuacao . "<br>" . $conn->error;
									}
								}
							}

							if(strlen($var_erros) > 0) {
				        		throw new Exception($var_erros);
							}

							$var_erros = "";
							$id_posicao = 1;
							$qryposicao = $conn->query("SELECT id_times, SUM(`pontuacao`) 
														  FROM tbl_times_temporadas 
														 GROUP BY id_times ORDER BY SUM(`pontuacao`) DESC") or trigger_error($conn->error);
				        	while($posicao = $qryposicao->fetch_object()) {
				        		$qryupdposicao = "UPDATE tbl_times_temporadas 
											  		 SET posicao_liga = $id_posicao,
														 usuario_id = " . $_SESSION["usu_id"] . ",
														 alterado_em = NOW()
												   WHERE id_anos = " . $_SESSION["temporada_atual"] . "
												     AND id_rodadas = " . $_SESSION["rodada"] . " 
												     AND id_times = $posicao->id_times";

								if ($conn->query($qryupdposicao) !== TRUE) {
									$var_erros .= "Erro ao lançar a pontuação " . $qryupdposicao . "<br>" . $conn->error;
								}
								else {
									$id_posicao++;
								}
				        	}

							if(strlen($var_erros) > 0) {
				        		throw new Exception($var_erros);
							}
						}
						else {
							echo '{"succeed": false, "errno": 25007, "title": "Informações não definidas!", "erro": "Pontuações ou operadores (+ e -) não foram definidos! Favor tentar novamente. Se persistirem os erros contactar o administrador do sistema!"}';
							$conn->rollback();
							exit();
						}

						$conn->commit();
						echo '{"succeed": true}';
					} catch(Exception $e) {
						$conn->rollback();

						echo '{"succeed": false, "errno": 25006, "title": "Erro ao salvar os dados!", "erro": "Ocorreu um erro ao salvar os dados: ' . $e->getMessage() . '"}';
					}
	        	}
	        	else {
		       		echo '{"succeed": false, "errno": 25005, "title": "Mercado aberto!", "erro": "Não é possível lançar a pontuação dos times enquanto o mercado estiver aberto. Espere o mercado fechar para lançar as pontuações!"}';
	        	}
        	}
        	else {
	       		echo '{"succeed": false, "errno": 25004, "title": "Temporada fechada!", "erro": "Não é possível lançar a pontuação dos times enquanto a temporada estiver fechada!"}';
        	}

	        break;

	    default:
	       echo '{"succeed": false, "errno": 25002, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
	}
} else {
	echo '{"succeed": false, "errno": 25003, "title": "Ação não definida!", "erro": "Não foi definida a ação para a requisição. Favor contatar o administrador da página!"}';
}
?>