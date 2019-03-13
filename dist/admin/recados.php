<?php 
	require_once('header.php');
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de recados (Modal)</h3>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8">
				<button type="button" class="btn btn-success btn-lg form-control" id="btn-add-recado">
					<i class='fa fa-plus'></i> Novo recado
				</button>		
			</div><!-- col-sm-8-->
		</div><!-- row -->
		<div class="row">
			<div class="col-12">
				<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th class='center'>#</th>
			                <th class="mediumcolumn">Título</th>
			                <th class='bigcolumn'>Descrição</th>
			                <th class='center'>Ativo?</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	
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
				<h3 class="headline" id="headline-recado"></h3>
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" id="btn-voltar-recados" class="btn btn-link btn-lg form-control btn-voltar">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row justify-content-md-center">
			<div id="box-ano" class="col-sm-12 col-md-10 col-lg-9 col-xl-9 form-box">
				<form id="form-recados" data-toggle="validator">
					<h3 class="headline headline-form"></h3> 
					<div class="row">
			  			<div class="col-sm-4 col-md-4 col-lg-2 col-xl-2">		    			
							<label for="id">ID</label>
			    			<input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled>
			    		</div>
			  			<div class="col-sm-8 col-md-8 col-lg-10 col-xl-10">		    			
							<label for="titulo">Título</label>
			    			<input type="text" class="form-control form-control-lg" id="titulo" name="titulo" aria-describedby="titulo" placeholder="Informe o titulo do recado..." data-error="Por favor, informe o titulo do recado." maxlength="60" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-12">
						    <label for="conteudo">Conteúdo</label>
						    <textarea class="form-control form-control-lg" id="conteudo" name="conteudo" rows="6" placeholder="Informe o conteúdo do recado..." data-error="Por favor, informe o conteúdo do recado." required></textarea>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row" style="margin-top:20px; margin-bottom: 10px;">
			  			<div class="col-12">
			  				<div class="checkbox">
								<label>
									<input type="checkbox" id="is_default" name="is_default" data-toggle="toggle" data-on="Sim" data-off="Não" data-onstyle="success" data-offstyle="danger">
									Ativo
								</label>
							</div>
			    		</div>
					</div>
  					<button type="button" class="btn btn-success btn-lg form-control" id="btn-salvar-recados">
  						<i class='fa fa-save'></i> Salvar dados
  					</button>
				</form>
			</div><!-- col-sm-8--> 
		</div>
	</div>
</main>
<?php require_once('footer.php'); ?>