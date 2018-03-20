<?php
require_once('header.php');
?>
<main>
	<div class="container">
		<div class="col-sm 10">
			<article>
				<div id="desempenho-liga" class="card">
					<div class="card-header">
						<header>
							<h2 class="card-title">Cartolas sem cartola</h2>
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
							      		<th class="table-title">Pontos na última rodada</th>	
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

<?php
	require_once('footer.php');
?>