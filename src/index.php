<?php
require_once('header.php');

if($_SESSION["temporada"] == 0) :
?>
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.js"></script>
<main id="main-resumo">	
	<div class="container">	
	<div class="row capa-temporada-encerrada"></div>	
		<div class="jumbotron jumbotron-fluid fim-temporada">
		  <div class="container">		    
		    <p class="lead">Foram muitas mitadas, muitas zicadas e também muitas risadas. Esse ano de 2018 ficará marcada na história da liga "Cartolas sem cartola" por ser a edição com o maior número de participantes de sua tajetória.</p>
		    <?php if(isset($_SESSION["usu_id"]) && !empty($_SESSION["usu_id"]) && $_SESSION["usu_id"] > 0) { ?>
			    <p class="lead">Obrigado <strong><?php echo $_SESSION["usu_nome"] ?></strong>, que já faz parte dessa história. Esperamos você em 2019.</p>		    
			    <a id="btn-dados-time" href="#"><button class="btn btn-large btn-info">Ver desempenho do meu time</button></a>
			<?php } ?>
		  </div>
		</div>	
		<div class="row">
			<div class="col-12">
				<h1 class="headline-fim">Liga Cartolas sem Cartola <span style="font-size: 14px;">(Resumo da temporada)</span></h1>		
			</div>	
			<ul id="resumo-temporada" class="grid cs-style-4"></ul>
			<div class="col-12">
				<h1 class="headline-fim">Mata Mata <span style="font-size: 14px;">(Campeões dos mata mata 2018)</span></h1>			
			</div>	
			<ul id="resumo-mata-mata" class="grid cs-style-4"></ul>					
		</div><!-- row -- >			
	</div><!-- container -->
</main>
<main id="main-clube">
	<div class="container">
		<div class="row capa-temporada-clube"></div>
		<div class="row resumo-temporada-clube">			
			<div class="col-sm-4 offset-1 temp-esc-clube">	
				<div class="col-sm-12 temp-esc">
					<img class="temp-escudo" src="">
				</div>	
				<h3 class="temp-nome"></h3>				
			</div>
			<div class="col-sm-3">
				<h3 class="temp-result pont-result"></h3>
				<p class="temp-info">Na temporada</p>
			</div>
			<div class="col-sm-3 offset-1">
				<h3 class="temp-result media-result"></h3>
				<p class="temp-info">Na temporada</p>
			</div>
		</div><!-- row -->
		<div class="sep-bottom"></div>
		<div class="sep"></div>				
		<div class="row resumo-temporada"> 
			<div class="col-sm-2 offset-1 card-temporada-clube">
				<img src="img/fimtemporada/goleiro.png" class="temp-img">
				<h3 class="resumo-detalhado total-g"></h3>
				<p class="temp-info-detalhado">Com o goleiro</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/lateral.png" class="temp-img">
				<h3 class="resumo-detalhado total-l"></h3>
				<p class="temp-info-detalhado">Com os laterais</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/zagueiro.png" class="temp-img">
				<h3 class="resumo-detalhado total-z"></h3>
				<p class="temp-info-detalhado">Com os zagueiros</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/meia.png" class="temp-img">
				<h3 class="resumo-detalhado total-m"></h3>
				<p class="temp-info-detalhado">Com os meias</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/atacante.png" class="temp-img">
				<h3 class="resumo-detalhado total-a"></h3>
				<p class="temp-info-detalhado">Com os atacantes</p>
			</div>
			<div class="col-sm-2 offset-1 card-temporada-clube">
				<img src="img/fimtemporada/tecnico.png" class="temp-img">
				<h3 class="resumo-detalhado total-t"></h3>
				<p class="temp-info-detalhado">Com o técnico</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/jogador-maior.png" class="temp-img">
				<h3 class="resumo-detalhado maior-j"></h3>
				<p class="temp-info-detalhado">Jogador com a maior pontuação</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/jogador-menor.png" class="temp-img">
				<h3 class="resumo-detalhado menor-j"></h3>
				<p class="temp-info-detalhado">Jogador com a menor pontuação</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/capitao-maior.png" class="temp-img">
				<h3 class="resumo-detalhado maior-c"></h3>
				<p class="temp-info-detalhado">Maior pontuação (C)</p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/capitao-menor.png" class="temp-img">
				<h3 class="resumo-detalhado menor-c"></h3>
				<p class="temp-info-detalhado">Menor pontuação (C)</p>
			</div>
			<div class="col-sm-2 offset-1 card-temporada-clube">
				<img src="img/fimtemporada/maior-pontuacao.png" class="temp-img">
				<h3 class="resumo-detalhado max-pont"></h3>
				<p class="temp-info-detalhado max-rodada"></p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/menor-pontuacao.png" class="temp-img">
				<h3 class="resumo-detalhado min-pont"></h3>
				<p class="temp-info-detalhado min-rodada"></p>
			</div>
			<div class="col-sm-2">
				<img src="img/fimtemporada/cartoletas.png" class="temp-img">
				<h3 class="resumo-detalhado patrimonio"></h3>
				<p class="temp-info-detalhado">Patrimônio na temporada</p>
			</div>
		</div><!-- row -->		
	</div><!-- container -->
</main>		
<?php
else :
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
						<div class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Compare seu time com um adversário</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<img src="img/comparartimes.png" class="rounded img-fluid">
							</div>
							<footer>
								<div class="card-footer">
									<a href="comparacao"><button class="btn btn-primary"><i class="fa fa-window-restore" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;Comparar times</button></a>
								</div><!-- card-footer -->
							</footer>
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
						<div id="eventos" class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Próximos eventos</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<div id='calendar'></div>
								<div id='popover-content' style="display: none;"></div>
							</div>
						</div>
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
			      	<h3 class="modal-title" id="exampleModalLabel">Ótimo!</h3>
			      	<p class="modal-message">Seus dados foram salvos com sucesso.</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Voltar</button>
			        <button type="button" class="btn btn-primary">Voltar para as horas</button>
			      </div>
			    </div>
			  </div>
			</div><!-- modal -->		
		</div><!-- container -->	
	</main>
<?php
endif;

require_once('footer.php');
?>