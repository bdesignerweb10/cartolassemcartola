<?php 
require_once('header.php');

$anos = $conn->query("SELECT id, descricao FROM tbl_anos ORDER BY descricao ASC") or trigger_error($mysqli->error);
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de temporadas (anos)</h3>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8">
				<button type="button" class="btn btn-success btn-lg form-control btn-add" name="btn-add">
					<i class='fa fa-plus'></i> Cadastrar nova temporada
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<table class="table table-striped table-bordered table-hover datatable" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th class='center'>#</th>
			                <th class="bigcolumn">Descrição</th>
			                <th class='center'>Temporada Atual?</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<?php 
			        	while($dados = $anos->fetch_object()) {
			        		if($dados->id == $_SESSION["temporada_atual"]) {
				        		echo "<tr>
						                <td class='center'>$dados->id</td>
						                <td>$dados->descricao</td>
						                <td class='center'><i class='fa fa-check fa-2x add'></i></td>
						                <td class='center'>
						                	<i class='fa fa-edit fa-2x edit-disabled'></i>
						                	<i class='fa fa-trash fa-2x del-disabled'></i>
					                	</td>
						            </tr>";
			        		}
			        		else {
				        		echo "<tr>
						                <td class='center'>$dados->id</td>
						                <td>$dados->descricao</td>
						                <td class='center'>&nbsp;</td>
						                <td class='center'>
						                	<a href='#' class='btn-edit' data-alt-id='$dados->id' data-page='temporadas'>
						                		<i class='fa fa-edit fa-2x edit'></i>
					                		</a>
						                	<a href='#' class='btn-del' data-alt-id='$dados->id' data-page='temporadas'>
						                		<i class='fa fa-trash fa-2x del'></i>
					                		</a>
					                	</td>
						            </tr>";
			        		}
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
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" class="btn btn-link btn-lg form-control btn-voltar" data-div-hide="mainform" data-div-show="maintable">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row justify-content-md-center">
			<div class="col-sm-12 col-md-10 col-lg-4 col-xl-4 form-box">
				<h3 class="headline headline-form">Criando um novo registro...</h3> 
				<form id="form-temporadas" data-toggle="validator" action="acts/acts.temporadas.php" method="POST">
		  			<div class="form-group">		    			
						<label for="login">Nome da temporada</label>
		    			<input type="text" class="form-control form-control-lg" id="descricao" name="descricao" aria-describedby="descricao" placeholder="Informe qual é a temporada..." data-error="Por favor, informe qual é a temporada." required>
		    			<div class="help-block with-errors"></div>
		    		</div>
  					<button id="btn-temporadas" type="submit" class="btn btn-success btn-lg form-control" name="submit">
  						<i class='fa fa-save'></i> Salvar dados
  					</button>
				</form>
			</div><!-- col-sm-8--> 
		</div>
	</div>
</main>
<?php require_once('footer.php'); ?>