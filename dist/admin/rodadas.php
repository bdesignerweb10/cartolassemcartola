<?php 
require_once('header.php');

$anos = $conn->query("SELECT id, descricao FROM tbl_rodadas ORDER BY descricao ASC") or trigger_error($mysqli->error);
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de rodadas</h3>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8">
				<button type="button" class="btn btn-success btn-lg form-control btn-add" name="btn-add">
					<i class='fa fa-plus'></i> Cadastrar nova rodada
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<table class="table table-striped table-bordered datatable" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>#</th>
			                <th class="bigcolumn">Descrição</th>
			                <th class='center'>Rodada Atual?</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<?php 
			        	while($dados = $anos->fetch_object()) {
			        		if($dados->id == $_SESSION["rodada"]) {
				        		echo "<tr>
						                <td>$dados->id</td>
						                <td>$dados->descricao</td>
						                <td class='center'><i class='fa fa-check fa-2x add'></i></td>
						                <td class='center'>
						                	<i class='fa fa-edit fa-2x edit disabled'></i>
						                	<i class='fa fa-trash fa-2x del disabled'></i>
					                	</td>
						            </tr>";
			        		}
			        		else {
				        		echo "<tr>
						                <td>$dados->id</td>
						                <td>$dados->descricao</td>
						                <td class='center'>&nbsp;</td>
						                <td class='center'>
						                	<a href='#' class='btn-edit' data-alt-id='$dados->id' data-page='rodadas'>
						                		<i class='fa fa-edit fa-2x edit'></i>
					                		</a>
						                	<a href='#' class='btn-del' data-alt-id='$dados->id' data-page='rodadas'>
						                		<i class='fa fa-trash fa-2x del'></i>
					                		</a>
					                	</td>
						            </tr>";
			        		}
						}
						?>
			        </tbody>
			    </table>
			</div><!-- row -->
		</div><!-- col-sm-8-->
	</div><!-- contatiner -->
</main>
<?php require_once('footer.php'); ?>