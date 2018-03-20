<?php
require_once('header.php');
?>
	<main>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h1 class="headline">Seja bem vindo ao Cartolas sem Cartola!</h1>
				</div>
				<div class="col-sm-6">
					<h1 class="headline-rodada">Rodada Atual: <strong><?php echo $_SESSION["rod_atual"]; ?>º rodada</strong></h1>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<article>
						<div id="destaques-rodada" class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Destaques da <?php echo $_SESSION["desc_rodada_site"]; ?>º rodada</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<div class="table-responsive">
									<table class="table liga-csc">
										<thead>
									    	<tr class="bg-warning">
									      		<th class="table-title">#</th>
									      		<th class="table-title"></th>
									      		<th class="table-title">Time</th>
									      		<th class="table-title">Pontos</th>					      
									    	</tr>
									  	</thead>
										<tbody>
										</tbody>
									</table>
								</div><!-- table-responsive -->	
							</div><!-- card-block -->
							<footer>
								<div class="card-footer">
									<a href="destaques.php"><button class="btn btn-primary">Visualizar destaques por rodada</button></a>
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>
					<article>
						<div id="desempenho-rodada" class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Desempenho por rodada</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
							</div><!-- card-block -->
							<footer>
								<div class="card-footer">
									<a href="rodada.php"><button class="btn btn-primary">Acompanhar meu desempenho</button></a>					
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>
				</div><!-- col-sm-5 -->
				<div class="col-sm-7">
					<article>
						<div id="desempenho-geral" class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Desempenho geral temporada</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<div class="table-responsive">
									<table class="table table-responsive liga-csc">
										<thead>
									    	<tr class="bg-warning">
									      		<th class="table-title">#</th>
									      		<th class="table-title"></th>
									      		<th class="table-title">Time</th>
									      		<th class="table-title">Pontos</th>	
									      		<th class="table-title">Variação</th>					      
									    	</tr>
									  	</thead>
										<tbody>
										</tbody>
									</table>
								</div><!-- table-responsive -->	
							</div><!-- card-block -->
							<footer>
								<div class="card-footer">
									<a href="liga.php"><button class="btn btn-primary">Visualizar tabela completa</button></a>
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>	
					<article>
						<div id="mata-mata-andamento" class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Mata-Mata em andamento</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
							</div><!-- card-block -->
							<footer>
								<div class="card-footer">
									<a href="mata-mata.php"><button class="btn btn-primary">Acompanhar todos os mata mata</button></a>
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>
				</div><!-- col-sm-7 -->
			</div><!-- row -->			
		</div><!-- container -->	
	</main>
<?php
	require_once('footer.php');
?>