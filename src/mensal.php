<?php
	require_once('header.php');
?>
<main>
	<div class="container">
		<div class="row capa-mensal">			
		</div>
		<div id="mensal" class="row">
			<div class="col-sm-9">				
			</div>
			<div class="col-sm-3">
				<form action="">
					<div class="form-group">
				    	<label for="exampleSelect1"></label>
					    <select class="form-control" id="exampleSelect1">
					      <option>Selecione o mês desejado</option>
					      <option>Abril</option>
					      <option>Maio</option>
					      <option>Junho</option>
					      <option>Julho</option>
					      <option>Agosto</option>
					      <option>Setembro</option>
					      <option>Outubro</option>
					      <option>Novembro</option>
					      <option>Dezembro</option>
					    </select>
				  	</div>
				</form>
			</div>
			<div class="col-sm-12">
				<article>
					<div id="desempenho-liga-mensal" class="card">
						<div class="card-header">
							<header>
								<h2 class="card-title">Liga Cartoleirão - Trabalho Seguro TS - Mês de Junho</h2>
							</header>
						</div><!-- card-header -->
						<div class="card-block">
							<div class="table-responsive">
								<table class="table liga-csc-mensal">
									<thead>
								    	<tr class="bg-warning">
								      		<th class="table-title">#</th>
								      		<th class="table-title"></th>
								      		<th class="table-title">Time</th>
								      		<th class="table-title">Pontos no Mês</th>
								      		<th class="table-title">Variação</th>					      
								    	</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div><!-- table-responsive -->	
						</div><!-- card-block -->										
					</div><!-- card -->					
				</article>
			</div>
		</div><!-- row -->
	</div><!-- container -->
</main>		
<?php
	require_once('footer.php');
?>
