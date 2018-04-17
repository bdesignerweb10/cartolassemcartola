<?php
require_once('header.php');
?>

<main>
	<div class="container">
		<div class="row">
			<h1 class="headline">Pontuação em tempo real</h1>	
		</div>
		<div class="row pts-real">		
			<div class="col-sm-6 campinho mark hidden-xs-down">				
				<div class="row atleta">
					<div class="col-sm-3">
						<div class="cartola-campinho-atleta-foto a1"></div>
					</div>
					<div class="col-sm-3">
						<div class="cartola-campinho-atleta-foto a1"></div>
					</div>
					<div class="col-sm-3">
						<div class="cartola-campinho-atleta-foto a1"></div>
					</div>
				</div>
				<div class="row atleta">
					<div class="col-sm-3">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
					<div class="col-sm-3">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
					<div class="col-sm-3">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
				</div>
				<div class="row atleta">
					<div class="col-sm-2">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
					<div class="col-sm-2">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
					<div class="col-sm-2">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
					<div class="col-sm-2">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
				</div>
				<div class="row comissao-tecnica">
					<div class="col-sm-2 tecnico">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
					<div class="col-sm-2 goleiro">
						<div class="cartola-campinho-atleta-foto"></div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<table class="table table-hover">				  
				  <tbody>
				    <tr>
				      <td class="nome-clube">#</td>
				      <th class="nome-clube">Hasdrubal FC</th>
				      <td class="pts-tot">106.50</td>				      
				    </tr>
				    <tr>
				      <td>GOL</td>
				      <th>Fernando Leal</th>
				      <td class="pts-neg">-1.50</td>				      
				    </tr>
				    <tr>
				      <td>LAT</td>
				      <th>Liziero</th>
				      <td class="pts-neg">-1.30</td>
				    </tr>
				    <tr>
				      <td>LAT</td>
				      <th><img src="img/capitao.png"> Thiago Carleto</th>
				      <td class="pts-pos">13.20</td>
				    </tr>
				    <tr>
				      <td>ZAG</td>
				      <th>Rodrigo Caio</th>
				      <td class="pts-pos">5.20</td>
				    </tr>
				    <tr>
				      <td>ZAG</td>
				      <th>Balbuena</th>
				      <td class="pts-pos">18.20</td>
				    </tr>
				    <tr>
				      <td>MEI</td>
				      <th>Mateus Vital</th>
				      <td class="pts-pos">10.20</td>
				    </tr>
				    <tr>
				      <td>MEI</td>
				      <th>Moises</th>
				      <td class="pts-pos">8.20</td>
				    </tr>
				    <tr>
				      <td>MEI</td>
				      <th>Cueva</th>
				      <td class="pts-pos">10.20</td>
				    </tr>
				    <tr>
				      <td>ATA</td>
				      <th>Ricardo Oliveira</th>
				      <td class="pts-neg">-10.20</td>
				    </tr>
				    <tr>
				      <td>ATA</td>
				      <th>Gabriel</th>
				      <td class="pts-pos">6.20</td>
				    </tr>
				    <tr>
				      <td>ATA</td>
				      <th>Pablo</th>
				      <td class="pts-pos">18.20</td>
				    </tr>
				    <tr>
				      <td>TEC</td>
				      <th>Fernando Diniz</th>
				      <td class="pts-pos">989,63</td>
				    </tr>
				  </tbody>
				</table>
			</div>
		</div><!-- row -->
	</div><!-- container -->
</main>

<?php
	require_once('footer.php');
?>