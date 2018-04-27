<?php
require_once('header.php');
?>
<main id="maintable">
	<div class="container">
		<div class="row capa-tempo-real">
			<div class="col-sm-12"></div>
		</div>	
		<div class="col-12">
			<article>
				<div id="tempo-real" class="card">
					<div class="card-header">
						<header>
							<h2 class="card-title">Pontuação da Liga em Tempo Real</h2>
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
							      		<th class="table-title">Pontos no Campeonato</th>
							      		<th class="table-title">Parcial Rodada</th>	
							      		<th class="table-title">Total Parcial</th>	
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
							<ul class="nav">
								<li class="nav-item">
									<span class="badge premiacao"></span> 
									Zona de Premiação
								</li>
								<li class="nav-item">
									<span class="badge neutro"></span>
									Zona Neutra
								</li>
								<li class="nav-item">
									<span class="badge rebaixamento"></span>
									Zona de Rebaixamento
								</li>
							</ul>
						</div><!-- card-footer -->
					</footer>				
				</div><!-- card -->
			</article>
		</div>		
	</div>
</main>
<main id="mainscout">
	<div class="container">
		<div class="row">
			<h1 class="headline">Pontuação em tempo real</h1>	
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" id="btn-voltar-listagem" class="btn btn-link btn-lg form-control btn-voltar">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>	
			</div><!-- col-sm-12-->
		</div>
		<div class="row pts-real">		
			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 campinho">				
				<div class="row atleta idx4">
				</div>
				<div class="row atleta idx3">
				</div>
				<div class="row atleta idx1_2">
				</div>
				<div class="row comissao-tecnica">
				</div>
			</div>
			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
				<table class="table table-hover table-lista-scout">				  
				  <tbody>
				  </tbody>
				</table>
			</div>
		</div><!-- row -->
	</div><!-- container -->
</main>
<?php
	require_once('footer.php');
?>