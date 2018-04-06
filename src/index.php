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
				<div class="col-sm-12 col-md-6 col-lg-5 col-xl-5">
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
									<a href="destaques"><button class="btn btn-primary"><i class='fa fa-binoculars'></i>&nbsp;&nbsp;&nbsp;Visualizar destaques por rodada</button></a>
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>
					<article>
						<div id="eventos" class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Próximos eventos</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<div id='calendar'></div>
							</div>
						</div>
					</article>
				</div><!-- col-sm-5 -->
				<div class="col-sm-12 col-md-6 col-lg-7 col-xl-7">
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
									<a href="liga"><button class="btn btn-primary"><i class='fa fa-binoculars'></i>&nbsp;&nbsp;&nbsp;Visualizar tabela completa</button></a>
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
									<a href="mata_mata"><button class="btn btn-primary"><i class='fa fa-binoculars'></i>&nbsp;&nbsp;&nbsp;Acompanhar todos os mata mata</button></a>
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>
				</div><!-- col-sm-7 -->
				<div class="col-12">
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
									<a href="rodada"><button class="btn btn-primary"><i class='fa fa-binoculars'></i>&nbsp;&nbsp;&nbsp;Acompanhar meu desempenho</button></a>					
								</div><!-- card-footer -->
							</footer>				
						</div><!-- card -->
					</article>
				</div><!-- col-sm-7 -->
			</div><!-- row -->	
			<div class="modal modal-default modal-success fade" id="1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel"><img src="img/success.png"></h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			      	<h3 class="modal-title" id="exampleModalLabel">Great!</h3>
			      	<p class="modal-message">Your data has been successfuly saved.</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Back to my work</button>
			        <button type="button" class="btn btn-primary">Back to store hours</button>
			      </div>
			    </div>
			  </div>
			</div><!-- modal -->					
		</div><!-- container -->	
	</main>
<?php
	require_once('footer.php');
?>