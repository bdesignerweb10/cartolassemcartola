<?php 
require_once('header.php');
$matamatalist = $conn->query("SELECT id, descricao, total_times
        				 	    FROM tbl_mata_mata
       					    ORDER BY id ASC") or trigger_error($conn->error);
?> <main class="maintable"><div class="container"><h3 class="headline">Gerenciamento de mata-mata</h3><div class="row" style="margin-bottom: 20px;"><div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8"><button type="button" class="btn btn-success btn-lg form-control" id="btn-add-mata-mata"><i class="fa fa-plus"></i> Novo mata-mata</button></div><!-- col-sm-8--></div><!-- row --><div class="row"><div class="col-12"><table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%"><thead><tr><th class="center">#</th><th class="bigcolumn">Descrição</th><th class="center">Total Times</th><th class="center">Opções</th></tr></thead><tbody> <?php 
			        	if($matamatalist && $matamatalist->num_rows > 0) {
				        	while($matamata = $matamatalist->fetch_object()) {
				                $fake_id = $matamata->id * $_SESSION["fake_id"];
				        		echo "<tr>
      									<th scope='row' class='center'>$matamata->id</th>
						                <td>$matamata->descricao</td>
						                <td class='center'>$matamata->total_times</td>
						                <td class='center'>
											<a href='#' class='btn-edit-matamata' data-id='$fake_id' alt='Editar mata-mata $matamata->id' title='Editar dados do mata-mata $matamata->id'>
												<i class='fa fa-edit fa-2x edit'></i>
											</a>
											<a href='#' class='btn-del-matamata' data-id='$fake_id' alt='Remover mata-mata $matamata->id' title='Remover mata-mata $matamata->id'>
												<i class='fa fa-trash fa-2x del'></i>
											</a>
										</td>
									</tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='4' class='center'>Não há dados a serem exibidos para a listagem.</td>
				                </tr>";
			        	}
						?> </tbody></table></div><!-- col-sm-8--></div><!-- row --></div><!-- col-sm-8--></main><main class="mainform"><div class="container"><div class="row" style="margin-bottom: 10px;"><div class="col-sm-12"><h3 class="headline" id="headline-mata-mata"></h3></div><!-- col-sm-8--></div><!-- row --><div class="row"><div class="col-sm-12 col-md-6 col-lg-2 col-xl-2"><button type="button" id="btn-voltar-mata-mata" class="btn btn-link btn-lg form-control btn-voltar"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp;&nbsp;Voltar</button></div><!-- col-sm-8--></div><!-- row --><form id="form-mata-mata" data-toggle="validator" action="acts/acts.mata_mata.php" method="POST"><div class="row justify-content-md-center"><div id="box-mata-mata" class="col-sm-12 col-md-10 col-lg-3 col-xl-3 form-box" style="margin-top: 0px;"><h3 class="headline headline-form">Informe os dados!</h3><div class="form-group"><label for="id">ID</label> <input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled="disabled"></div><div class="form-group"><label for="descricao">Descrição</label> <input type="text" class="form-control form-control-lg" id="descricao" name="descricao" aria-describedby="descricao" placeholder="Informe o nome do mata-mata..." data-error="Por favor, informe o nome do mata-mata." maxlength="60" required><div class="help-block with-errors"></div></div><div class="form-group"><label for="total_times">Total de Times</label> <select class="form-control form-control-lg" id="total_times" name="total_times" aria-describedby="total_times" placeholder="Selecione o total de times..." data-error="Por favor, selecione o total de times." required><option value="4" selected="selected">4 times</option><option value="8">8 times</option><option value="16">16 times</option><option value="32">32 times</option></select><div class="help-block with-errors"></div></div><div class="form-group"><label for="rodada_inicio">Rodada de Início</label> <select class="form-control form-control-lg" id="rodada_inicio" name="rodada_inicio" aria-describedby="rodada_inicio" required> <?php 
								if(!isset($_SESSION["rodada"]) || empty($_SESSION["rodada"])) {
									$rodatual = 0;
								}
								else {
									$rodatual = $_SESSION["rodada"];
								}
								$rodadalist = $conn->query("SELECT r.id AS id, r.descricao AS rodada
        				 	    							  FROM tbl_temporadas t
        				 	    							 INNER JOIN tbl_rodadas r ON r.id = t.id_rodadas
        				 	    							 WHERE t.id_anos = " . $_SESSION["temporada_atual"] . "
        				 	    							   AND r.id >= " . $rodatual . "
       					    							  ORDER BY r.id ASC") or trigger_error($conn->error);

								if($rodadalist && $rodadalist->num_rows > 0) {
						        	while($rodada = $rodadalist->fetch_object()) {
						        		echo "<option value='$rodada->id'>$rodada->rodada</option>";
									}
					        	}
					        	else {
					        		echo "<option value='' selected></option>";
					        	}
							?> </select><div class="help-block with-errors"></div></div><button type="submit" class="btn btn-primary btn-lg form-control" id="passo-mata-mata"><i class="fa fa-arrow-right"></i> Próximo passo</button></div><!-- col-sm-8--><div id="box-times" class="col-sm-12 col-md-10 col-lg-4 col-xl-4 form-box" style="margin-top: 0px;" disabled="disabled"><h3 class="headline headline-form">Selecione os times para gerar os confrontos!</h3><button type="button" class="btn btn-link form-control btn-voltar" id="voltar-mata-mata"><i class="fa fa-arrow-left"></i> Voltar</button><div id="sel-time-content" class="row" style="margin-bottom: 20px;"></div><button type="button" class="btn btn-primary btn-lg form-control" id="passo-times"><i class="fa fa-arrow-right"></i> Definir Confrontos</button></div><!-- col-sm-8--><div id="box-confrontos" class="col-sm-12 col-md-10 col-lg-4 col-xl-4 form-box" style="margin-top: 0px;" disabled="disabled"><h3 class="headline headline-form">Defina os confrontos</h3><button type="button" class="btn btn-link form-control btn-voltar" id="voltar-times"><i class="fa fa-arrow-left"></i> Voltar</button><div id="chaves-confronto"></div><button type="button" class="btn btn-success btn-lg form-control" id="passo-confrontos"><i class="fa fa-save"></i> Salvar dados</button></div><!-- col-sm-8--></div></form></div></main> <?php require_once('footer.php'); ?>