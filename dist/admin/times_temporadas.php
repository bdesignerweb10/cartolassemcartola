<?php 
require_once('header.php');
$timestemp = $conn->query("SELECT t.id_anos AS id, a.descricao AS ano, COUNT(t.id_rodadas) AS qtd_rodadas
   							 FROM tbl_temporadas t
   					   INNER JOIN tbl_anos AS a ON a.id = t.id_anos
   						 GROUP BY t.id_anos
   						 ORDER BY a.descricao DESC") or trigger_error($conn->error);
?> <main class="maintable"><div class="container"><h3 class="headline">Gerenciamento de times por temporada</h3><div class="row"><div class="col-12"><table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th class="center">#</th><th class="bigcolumn">Ano</th><th class="center">Temporada Atual?</th><th class="center">Qtd. Rodadas</th><th class="center">Qtd. Times Cadastrados</th><th class="center">Opções</th></tr></thead><tbody> <?php 
			        	if($timestemp && $timestemp->num_rows > 0) {
				        	while($dados = $timestemp->fetch_object()) {

								$seltimes = $conn->query("SELECT COUNT(DISTINCT id_times) AS count FROM tbl_times_temporadas WHERE id_anos = $dados->id") or trigger_error($conn->error);

								$qtd_times = 0;

								if ($seltimes && $seltimes->num_rows > 0) {
						        	while($times = $seltimes->fetch_object()) {
										$qtd_times = $times->count;
						        	}
						        }

				        		echo "<tr>
      									<th scope='row' class='center'>$dados->id</th>
						                <td>$dados->ano</td>
						                <td class='center'>" . ($dados->id == $_SESSION["temporada_atual"] ? "<i class='fa fa-check fa-2x add' alt='Temporada Atual' title='Temporada é a atual'></i>" : "&nbsp;") . "</td>
						                <td class='center'>$dados->qtd_rodadas</td>
						                <td class='center'>$qtd_times</td>
						                <td class='center'>";

				                $fake_id = $dados->id * $_SESSION["fake_id"];

				                if($dados->descricao < $_SESSION["temp_atual"] || ($dados->id == $_SESSION["temporada_atual"] && $_SESSION["temporada"] == 1)) {
				                	echo "<i class='fa fa-edit fa-2x edit-disabled' alt='Edição desabilitada' title='Edição dos times da temporada $dados->id desabilitada'></i>";
				                }
				                else {
				                	echo "<a href='#' class='btn-times-temporada' data-temporada='$fake_id' alt='Editar os times da temporada $dados->id' title='Editar os times da temporada $dados->id'>
				                			<i class='fa fa-edit fa-2x edit'></i>
			                			  </a>";
				                }
						        echo "</td></tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='6' class='center'>Não há dados a serem exibidos para a listagem.</td>
				                </tr>";
			        	}
						?> </tbody></table></div><!-- col-sm-8--></div><!-- row --></div><!-- col-sm-8--></main><main class="maintemporada"><div class="container"><h3 class="headline" id="headline-time-temporada"></h3><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12 col-md-6 col-lg-2 col-xl-2"><button type="button" id="btn-voltar-lista-temporadas" class="btn btn-link btn-lg form-control btn-voltar"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Voltar</button></div><!-- col-sm-8--></div><!-- row --><div class="row"><div class="col-12"><table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th class="center">#</th><th>Time</th><th>Presidente</th><th class="center">Posição</th><th class="center">Pontuação</th><th class="center">Status</th><th class="center">Opções</th></tr></thead><tbody id="lista-times-temporada"></tbody></table></div><!-- col-sm-8--></div><!-- row --></div><!-- col-sm-8--></main> <?php require_once('footer.php'); ?>