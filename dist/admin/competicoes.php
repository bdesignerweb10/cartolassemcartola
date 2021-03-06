<?php 
require_once('header.php');

$competicoes = $conn->query("SELECT id, descricao, valor, is_default, outro_valor FROM tbl_competicoes ORDER BY id DESC") or trigger_error($conn->error);
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de competições</h3>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8">
				<button type="button" class="btn btn-success btn-lg form-control" id="btn-add-competicoes">
					<i class='fa fa-plus'></i> Nova competição
				</button>		
			</div><!-- col-sm-8-->
		</div><!-- row -->
		<div class="row">
			<div class="col-12">
				<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th class='center'>#</th>
			                <th class="bigcolumn">Descrição</th>
			                <th class='center'>Valor</th>
			                <th class='center'>Liga?</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<?php 
			        	if($competicoes && $competicoes->num_rows > 0) {
				        	while($dados = $competicoes->fetch_object()) {
				        		echo "<tr>
      									<th scope='row' class='center'>$dados->id</th>
						                <td>$dados->descricao</td>";

						                if($dados->valor == 0) {
						                	echo "<td class='center'>$dados->outro_valor</td>";
						                }
						                else {
						                	echo "<td class='center'>R$ " . number_format($dados->valor, 2, ',', '.') . "</td>";
						                }

						        echo "	<td class='center'>" . ($dados->is_default == 1 ? "<i class='fa fa-check fa-2x add' alt='Cadastro da Liga' title='Cadastro da competição corresponda à Liga Cartolas sem Cartola'></i>" : "&nbsp;") . "</td>
						                <td class='center'>";

				                $fake_id = $dados->id * $_SESSION["fake_id"];

			                	echo "<a href='#' class='btn-edit-competicoes' data-id='$fake_id' alt='Editar competição $dados->id' title='Editar competição $dados->id'>
			                			<i class='fa fa-edit fa-2x edit'></i>
		                			  </a>";

		                		if($dados->is_default != 1) {
		                			echo "<a href='#' class='btn-del-competicoes' data-id='$fake_id' alt='Remover competição $dados->id' title='Remover competição $dados->id'>
		                					<i class='fa fa-trash fa-2x del'></i>
	                					  </a>";
		                		}
		                		else {
		                			echo "<i class='fa fa-trash fa-2x del-disabled' alt='Remoção da competição $dados->id desabilitada' title='Remoção da competição $dados->id desabilitada'></i>";
				                }
						        echo "</td></tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='5' class='center'>Não há dados a serem exibidos para a listagem.</td>
				                </tr>";
			        	}
						?>
					</tbody>
			    </table>
			</div><!-- col-sm-8-->
		</div><!-- row -->
	</div><!-- col-sm-8-->
</main>
<main class="mainform">
	<div class="container">
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12">
				<h3 class="headline" id="headline-competicao"></h3>
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" id="btn-voltar-competicoes" class="btn btn-link btn-lg form-control btn-voltar">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row justify-content-md-center">
			<div id="box-capa" class="col-sm-12 col-md-12 col-lg-8 col-xl-8 form-box">
				<img id="img-capa" class="img-fluid">
			</div><!-- col-sm-8--> 
			<div id="box-competicao" class="col-sm-12 col-md-12 col-lg-8 col-xl-8 form-box">
				<form id="form-competicoes" data-toggle="validator">
					<h3 class="headline headline-form"></h3> 
					<div class="row">
			  			<div class="col-sm-4 col-md-4 col-lg-2 col-xl-2">		    			
							<label for="id">ID</label>
			    			<input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled>
			    		</div>
			  			<div class="col-sm-8 col-md-8 col-lg-10 col-xl-10">		    			
							<label for="descricao">Nome da Competição</label>
			    			<input type="text" class="form-control form-control-lg" id="descricao" name="descricao" aria-describedby="descricao" placeholder="Informe o nome da competição..." data-error="Por favor, informe o nome da competição." maxlength="60" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-sm-12 col-md-12 col-lg-4 col-xl-4">		    			
							<label for="valor">Valor Competição</label>
							<div class="input-group" id="valor-monetario">
								<div class="input-group-addon">R$</div>
		    					<input type='text' class='form-control form-control-lg' id='valor' name='valor' placeholder='0' data-mask='##0' data-mask-selectonfocus='true' data-mask-clearifnotmatch='true' data-mask-reverse='true' maxlength='7' />
								<div class="input-group-addon">,00</div>
							</div>
			    			<input type="text" class="form-control form-control-lg" id="outro_valor" name="outro_valor" aria-describedby="outro_valor" placeholder="Outro valor..." data-error="Por favor, informe o outro valor." maxlength="60" required>
			    		</div>
			  			<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
							<label for="capa">Capa Competição</label>
			    			<input id="capa" name="capa" type="file" aria-describedby="capa" class="form-control form-control-lg">
			    		</div>
					</div>
					<div class="row" style="margin-top:20px; margin-bottom: 10px;">
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
			  				<div class="checkbox">
								<label>
									<input type="checkbox" id="ch_outro_valor" name="ch_outro_valor" data-toggle="toggle" data-on="Sim" data-off="Não" data-onstyle="success" data-offstyle="danger">
									Outro tipo de valor
								</label>
							</div>
			    		</div>
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
			  				<div class="checkbox">
								<label>
									<input type="checkbox" id="is_default" name="is_default" data-toggle="toggle" data-on="Sim" data-off="Não" data-onstyle="success" data-offstyle="danger">
									A competição é Liga?
								</label>
							</div>
			    		</div>
					</div>
					<div class="row" style="margin-bottom: 10px;">
			  			<div class="col-12">
						    <label for="informacoes">Informações da competição (com tags HTML)</label>
						    <textarea class="form-control form-control-lg" id="informacoes" name="informacoes" rows="6" placeholder="Informe as informações da competição..." data-error="Por favor, informe as informações da competição." required></textarea>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
  					<button type="button" class="btn btn-success btn-lg form-control" id="btn-salvar-competicao">
  						<i class='fa fa-save'></i> Salvar dados
  					</button>
				</form>
			</div><!-- col-sm-8--> 
		</div>
	</div>
</main>
<?php require_once('footer.php'); ?>