<?php 
require_once('header.php');

$anos = $conn->query("SELECT id, descricao FROM tbl_anos ORDER BY descricao DESC") or trigger_error($conn->error);
?> <main class="maintable"><div class="container"><h3 class="headline">Gerenciamento de temporadas</h3><div class="row" style="margin-bottom: 20px;"><div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8"><button type="button" class="btn btn-success btn-lg form-control" id="btn-add-temporadas"><i class="fa fa-plus"></i> Nova temporada</button></div><!-- col-sm-8--></div><!-- row --><div class="row"><div class="col-12"><table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th class="center">#</th><th class="bigcolumn">Descrição</th><th class="center">Temporada Atual?</th><th class="center">Qtd. Rodadas</th><th class="center">Opções</th></tr></thead><tbody> <?php 
			        	if($anos && $anos->num_rows > 0) {
				        	while($dados = $anos->fetch_object()) {

								$rodadas = $conn->query("SELECT COUNT(id_anos) AS count FROM tbl_temporadas WHERE id_anos = " . $dados->id) 
													or trigger_error($conn->error);

								$qtd_rodadas = 0;

								if ($rodadas && $rodadas->num_rows > 0) {
						        	while($rod = $rodadas->fetch_object()) {
										$qtd_rodadas = $rod->count;
						        	}
						        }
				        		echo "<tr>
      									<th scope='row' class='center'>$dados->id</th>
						                <td>$dados->descricao</td>
						                <td class='center'>" . ($dados->id == $_SESSION["temporada_atual"] ? "<i class='fa fa-check fa-2x add' alt='Temporada Atual' title='Temporada é a atual'></i>" : "&nbsp;") . "</td>
						                <td class='center'>$qtd_rodadas</td>
						                <td class='center'>";

						                $fake_id = $dados->id * $_SESSION["fake_id"];

				                if($dados->id < $_SESSION["temporada_atual"] || ($dados->id == $_SESSION["temporada_atual"] && $_SESSION["temporada"] == 1)) {
				                	echo "<i class='fa fa-edit fa-2x edit-disabled' alt='Edição da temporada $dados->id desabilitada' title='Edição da temporada $dados->id desabilitada'></i><i class='fa fa-trash fa-2x del-disabled' alt='Remoção da temporada $dados->id desabilitada' title='Remoção da temporada $dados->id desabilitada'></i>";
				                }
				                else {
				                	echo "<a href='#' class='btn-edit-temporadas' data-temporada='$fake_id' alt='Editar temporada $dados->id' title='Editar temporada $dados->id'>
				                			<i class='fa fa-edit fa-2x edit'></i>
			                			  </a>";

			                		if($dados->id > $_SESSION["temporada_atual"]) {
			                			echo "<a href='#' class='btn-del-temporadas' data-temporada='$fake_id' alt='Remover temporada $dados->id' title='Remover temporada $dados->id'>
			                					<i class='fa fa-trash fa-2x del'></i>
		                					  </a>";
			                		}
			                		else {
			                			echo "<i class='fa fa-trash fa-2x del-disabled' alt='Remoção da temporada $dados->id desabilitada' title='Remoção da temporada $dados->id desabilitada'></i>";
			                		}
				                }
						        echo "</td></tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='5' class='center'>Não há dados a serem exibidos para a listagem.</td>
				                </tr>";
			        	}
						?> </tbody></table></div><!-- col-sm-8--></div><!-- row --></div><!-- col-sm-8--></main><main class="mainform"><div class="container"><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12"><h3 class="headline" id="headline-temporada"></h3></div><!-- col-sm-8--></div><!-- row --><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12 col-md-6 col-lg-2 col-xl-2"><button type="button" id="btn-voltar-temporadas" class="btn btn-link btn-lg form-control btn-voltar"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Voltar</button></div><!-- col-sm-8--></div><!-- row --><form id="form-temporadas" data-toggle="validator" action="acts/acts.temporadas.php" method="POST"><div class="row justify-content-md-center"><div id="box-ano" class="col-sm-12 col-md-10 col-lg-3 col-xl-3 form-box"><h3 class="headline headline-form">Informe o ano!</h3><div class="form-group"><label for="id">ID</label><input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled="disabled"></div><div class="form-group"><label for="descricao">Ano (da temporada)</label><input type="number" class="form-control form-control-lg" id="descricao" name="descricao" aria-describedby="descricao" placeholder="Informe o ano..." data-error="Por favor, informe o ano." data-mask="0000" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" maxlength="4" required><div class="help-block with-errors"></div></div><button type="submit" class="btn btn-primary btn-lg form-control" id="passo-ano"><i class="fa fa-arrow-right"></i> Próximo passo</button></div><!-- col-sm-8--><div id="box-rodada" class="col-sm-12 col-md-10 col-lg-4 col-xl-4 form-box" disabled="disabled"><h3 class="headline headline-form">Selecione as rodadas!</h3><button type="button" class="btn btn-link form-control btn-voltar" id="voltar-ano"><i class="fa fa-arrow-left"></i> Voltar</button><div id="sel-content" class="row" style="margin-bottom: 20px;"></div><button type="button" class="btn btn-primary btn-lg form-control" id="passo-rodada"><i class="fa fa-arrow-right"></i> Finalizar criação</button></div><!-- col-sm-8--><div id="box-confirmacao" class="col-sm-12 col-md-10 col-lg-4 col-xl-4 form-box" disabled="disabled"><h3 class="headline headline-form">Confirme os dados:</h3><button type="button" class="btn btn-link form-control btn-voltar" id="voltar-rodada"><i class="fa fa-arrow-left"></i> Voltar</button><div class="jumbotron"><h3 style="font-weight: 300;" id="resumo-temporada"></h3><hr class="my-4"><h3 style="font-weight: 300;" id="resumo-rodadas"></h3></div><button type="button" class="btn btn-success btn-lg form-control" id="passo-confirmacao"><i class="fa fa-save"></i> Salvar dados</button></div><!-- col-sm-8--></div></form></div></main> <?php require_once('footer.php'); ?>