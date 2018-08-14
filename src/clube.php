<?php require_once('header.php'); ?>
<main id="mainclube">
	<div class="container">
		<div class="row capa-clube">
			<div class="col-sm-12 historia">
				<div class="row">
					<div class="col-sm-3">
						<img src="" class="img-fluid center-block brasao">
					</div>
					<div class="col-sm-9 apresentacao">
						<p class="info-clube">Clube: <strong class="nome nome_time"></strong><br />
						Ano de fundação: <strong class="nome ano_fundacao"></strong><br />
						Presidente: <strong class="nome nome_presidente"></strong></p>
					</div>
				</div><!-- row -->
			</div>			
		</div><!-- row -->
		<div class="row">
			<div id="escudos-container" class="col-sm-12">
				<ul class="escudos">					
				</ul>
			</div>
		</div><!-- row -->
		<div class="row cont-clube">
			<div class="col-sm-12">				
				<ul class="nav nav-tabs" role="tablist">
				  <li class="nav-item">
				    <a class="nav-link active desempenho-geral" data-toggle="tab" href="#geral" role="tab">Desempenho Geral</a>
				  </li>
				  <li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Desempenho por temporada</a>
				    <div class="dropdown-menu dropdown-temporada">
				    </div>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" data-toggle="tab" href="#historia" role="tab">História do Clube</a>
				  </li>
				</ul>
			</div>	
			<div class="tab-content col-sm-12">
				<div class="tab-pane active" id="geral" role="tabpanel">
					<div class="row">
						<h1 class="headline-rodada">Confira o seu desempenho em todas as temporadas</h1>
					</div>
					<div class="col-sm-12 historia">
						<div class="row geral-campeonatos">
						</div><!-- row -->		
					</div><!-- col-sm-12 -->
				</div><!-- tab-panel -->

				<div class="tab-pane" id="historia" role="tabpanel">
					<div class="col-sm-12 historia">
						<div class="row">
							<div class="col-sm-11">
								<h3 class="tit-clube nome_time"></h3>
							</div>	
							<div class="col-sm-10 offset-sm-1 text-hitoria">
							</div>							
						</div><!-- row -->
					</div><!-- col-sm-12 -->
				</div>
			</div><!-- tab-content -->		
		</div><!-- row -->
	</div><!-- container -->
</main>
<main id="maindetold">
	<div class="container">
		<div class="row capa-rodada">
			<div class="col-sm-12 ano-rodadas"><strong class="info-ano"></strong></div>
		</div><!-- row -->
		<div class="row">
			<div class="col-1" style="margin-left:20px;">
				<div class="btn btn-info vol-mata" id="voltar-desempenho"><a href="#"><i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar</div>
			</div>
		</div>
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
<?php require_once('footer.php'); ?>