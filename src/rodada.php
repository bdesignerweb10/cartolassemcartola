<?php
	require_once('header.php');
?>
<main>
	<div class="container">
		<div class="row capa-rodada">
			<div class="col-sm-12"></div>
		</div><!-- row -->
		<div class="row cont-clube">
			<div class="col-sm-12">				
				<ul class="nav nav-tabs" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link active" data-toggle="tab" href="#pontrodada" role="tab">Pontuação Rodada a rodada</a>
				  </li>				  
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#desemprodada" role="tab">Desempenho Rodada a rodada</a>
				  </li>
				</ul>
			</div>
			<div class="tab-content col-sm-12">
				<div class="tab-pane active" id="pontrodada" role="tabpanel">
					<div class="table-responsive">
						<table class="table table-rodada table-hover fixed-column">
					        <thead>
					        </thead>
					        <tbody>
					        </tbody>
					    </table>
					</div><!-- table -->
					<footer>
						<ul class="legenda">
							<li class="nav-item">
								<span class="badge ruim"></span> 
								Pontuação &lt; 30 pontos
							</li>
							<li class="nav-item">
								<span class="badge regular"></span>
								Pontuação &gt; 30 e &le; 50 pontos
							</li>
							<li class="nav-item">
								<span class="badge bom"></span>
								Pontuação &gt; 50 e &le; 80 pontos 
							</li>
							<li class="nav-item">
								<span class="badge excelente"></span>
								Pontuação &gt; 80 e &le; 100 pontos 
							</li>
							<li class="nav-item">
								<span class="badge mitou"></span>
								Pontuação &gt; 100 pontos 
							</li>
							<li class="nav-item">
								<span class="badge pontos-total"></span>
								Total de pontos 
							</li>
							<li class="nav-item">
								<span class="badge media-parcial"></span>
								MP - Média Parcial (de acordo com as rodadas) 
							</li>
							<li class="nav-item">
								<span class="badge media-camp"></span>
								MC - Média Campeonato (com as 38 rodadas)
							</li>
						</ul>
					</footer>
				</div><!-- tab-panel -->			
				<div class="tab-pane" id="desemprodada" role="tabpanel">
					<div id="grafico-rodada" class="card">
						<div class="card-header">
							<header>
								<h2 class="card-title">Desempenho dos clubes por rodada</h2>
							</header>
						</div><!-- card-header -->
						<div class="card-block">
						</div><!-- card-block -->			
					</div><!-- card -->
				</div>
			</div><!-- col-sm-12 -->
		</div><!-- row cont-cluber -->
	</div><!-- container -->
</main>

<?php
	require_once('footer.php');
?>

