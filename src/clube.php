<?php require_once('header.php'); ?>
<main>
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

<?php require_once('footer.php'); ?>