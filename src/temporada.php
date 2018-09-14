<?php
	require_once('header.php');
?>
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.js"></script>
<main>
	<div class="container">		
		<div class="jumbotron jumbotron-fluid fim-temporada">
		  <div class="container">
		    <h1 class="display-3">Fim da temporada 2018</h1>
		    <p class="lead">Foram muitas mitadas, muitas zicadas e também muitas risadas. Esse ano de 2018 ficará marcada na história da liga "Cartolas sem cartola" por ser a edição com o maior número de participantes de sua tagetória.</p>
		    <p class="lead">Obrigado <strong><?php echo $_SESSION["usu_nome"] ?></strong>, que já faz parte dessa história. Esperamos você em 2019.</p>
		    <p class="lead">Confira o resumo geral da temporada e o desempenho de seu time</p>
		    <a href="temporada-clube.php"><button class="btn btn-large btn-info">Ver desempenho do meu time</button></a>
		  </div>
		</div>	
		<div class="row">
			<h1 class="headline-fim">Liga Cartolas sem Cartola <span style="font-size: 14px;">(Resumo geral da temporada)</span></h1>			
			<ul class="grid cs-style-4">
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/bierfortesec.png" class="temporada-escudo">
							<h3 class="temporada-clube">BierFortes EC</h3>
						</div>
						<figcaption>							
							<p><span>Campeão da Liga Cartolas sem cartola</span></p>
							<h3 class="temporada-pontos">2183.93 <span style="font-size: 10px;">pontos</span></h3>	
							<p><span>Maior pontuador da liga em uma única rodada</span></p>
							<h3>183.93 <span style="font-size: 10px;">pontos</span></h3>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/hasdrubalf.c.png" class="temporada-escudo">
							<h3 class="temporada-clube">Hasdrubal F.C</h3>
						</div>
						<figcaption>							
							<p><span>Vice Campeão da Liga Cartolas sem cartola</span></p>
							<h3>2173.93 <span style="font-size: 10px;">pontos</span></h3>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/palestrino84fc.png" class="temporada-escudo">
							<h3 class="temporada-clube">Palestrino 84 FC</h3>
						</div>
						<figcaption>							
							<p><span>3º Colocado da Liga Cartolas sem cartola</span></p>
							<h3>2083.93 <span style="font-size: 10px;">pontos</span></h3>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/naojogo!douaula!.png" class="temporada-escudo">
							<h3 class="temporada-clube">Não Jogo! Dou aula!</h3>
						</div>
						<figcaption>							
							<p><span>4º Colocado da Liga Cartolas sem cartola</span></p>
							<h3>2083.93 <span style="font-size: 10px;">pontos</span></h3>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/boleanosfc.png" class="temporada-escudo">
							<h3 class="temporada-clube">Boleanos FC</h3>
						</div>
						<figcaption>							
							<p><span>5º Colocado da Liga Cartolas sem cartola</span></p>
							<h3>2083.93 <span style="font-size: 10px;">pontos</span></h3>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/rioclarofc2018.png" class="temporada-escudo">
							<h3 class="temporada-clube">Rio Claro FC 2018</h3>
						</div>
						<figcaption>							
							<p><span>6º Colocado da Liga Cartolas sem cartola</span></p>
							<h3>2083.93 <span style="font-size: 10px;">pontos</span></h3>
						</figcaption>
					</figure>
				</li>
			</ul>

			<h1 class="headline-fim">Mata Mata <span style="font-size: 14px;">(Campeões dos mata mata 2018)</span></h1>			
			<ul class="grid cs-style-4">
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/jumentusrc.png" class="temporada-escudo">
							<h3 class="temporada-clube">Jumentus RC</h3>
						</div>						
						<figcaption>							
							<img src="img/fimtemporada/kempes.png" class="taca-temp">
							<p class="temp-torneio"><span>IV Copa Kempes</span></p>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/cavaloqpula.png" class="temporada-escudo">
							<h3 class="temporada-clube">Cavalo q pula</h3>
						</div>	
						<figcaption>							
							<img src="img/fimtemporada/copa-beer.png" class="taca-temp">
							<p class="temp-torneio"><span>1º Copa Beer</span></p>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/naojogo!douaula!.png" class="temporada-escudo">
							<h3 class="temporada-clube">Não jogo! Dou aula!</h3>
						</div>	
						<figcaption>														
							<img src="img/fimtemporada/taca-default.png" class="taca-temp">
							<p class="temp-torneio"><span>Chute inicial Cup</span></p>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/e.c.upu.png" class="temporada-escudo">
							<h3 class="temporada-clube">E.C. UPU</h3>
						</div>
						<figcaption>							
							<img src="img/fimtemporada/taca-default.png" class="taca-temp">
							<p class="temp-torneio"><span>Chute inicial Cup</span></p>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/palestrino84fc.png" class="temporada-escudo">
							<h3 class="temporada-clube">Palestrino 84 FC</h3>
						</div>
						<figcaption>
							<img src="img/fimtemporada/taca-default.png" class="taca-temp">
							<p class="temp-torneio"><span>Chute inicial Cup</span></p>
						</figcaption>
					</figure>
				</li>
				<li>
					<figure>
						<div class="card-temporada">
							<img src="img/escudos/clube/cruzeirinho.rc.png" class="temporada-escudo">
							<h3 class="temporada-clube">Cruzeirinho.RC</h3>
						</div>
						<figcaption>							
							<img src="img/fimtemporada/taca-default.png" class="taca-temp">
							<p class="temp-torneio"><span>Chute inicial Cup</span></p>
						</figcaption>
					</figure>
				</li>
			</ul>					
		</div><!-- row -- >			
	</div><!-- container -->
</main>		
<?php
	require_once('footer.php');
?>
