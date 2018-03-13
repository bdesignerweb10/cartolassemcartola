<?php
	require_once('header.php');
?>

	<main>
		<div class="container">
			<h1 class="headline">Dashboard</h1>

			<div class="row">
				<div class="col-sm-5">
					<article>
						<div class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Destaques da 35º rodada</h2>
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
											<tr class="bg-success">
										      <th scope="row" class="table-title">1º</th>
										      <td><img src="img/escudos/BierFortes.png" class="img-fluid"></td>
										      <td>Bierfortes EC</td>
										      <td>89.64</td>					      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">2º</th>
										      <td><img src="img/escudos/Palestrino.png" class="img-fluid"></td>
										      <td>Palestrino 84 FC</td>
										      <td>81.69</td>					      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">3º</th>
										      <td><img src="img/escudos/Hasdrubal-FC.png" class="img-fluid"></td>
										      <td>Hasdrubal FC</td>
										      <td>79.85</td>					      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">4º</th>
										      <td><img src="img/escudos/Boleanos-FC.png" class="img-fluid"></td>
										      <td>Boleanos FC</td>
										      <td>65.69</td>					      
										    </tr>								    
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
						<div class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Desempenho por rodada</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<img src="img/grafico.jpg" class="img-fluid center-block" alt="">
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
						<div class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Cartolas sem cartola</h2>
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
											<tr class="bg-success">
										      <th scope="row" class="table-title">1º</th>
										      <td><img src="img/escudos/BierFortes.png" class="img-fluid"></td>
										      <td>Bierfortes EC</td>
										      <td>1532.69</td>
										      <td>+2</td>						      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">2º</th>
										      <td><img src="img/escudos/Palestrino.png" class="img-fluid"></td>
										      <td>Palestrino 84 FC</td>
										      <td>1526.96</td>	
										      <td>+1</td>				      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">3º</th>
										      <td><img src="img/escudos/Hasdrubal-FC.png" class="img-fluid"></td>
										      <td>Hasdrubal FC</td>
										      <td>1525.69</td>	
										      <td>-2</td>				      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">4º</th>
										      <td><img src="img/escudos/Boleanos-FC.png" class="img-fluid"></td>
										      <td>Boleanos FC</td>
										      <td>1512.32</td>		
										      <td>-</td>			      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">5º</th>
										      <td><img src="img/escudos/BierFortes.png" class="img-fluid"></td>
										      <td>Bierfortes EC</td>
										      <td>1501.20</td>
										      <td>-</td>					      
										    </tr>
										    <tr class="bg-success">
										      <th scope="row" class="table-title">6º</th>
										      <td><img src="img/escudos/Palestrino.png" class="img-fluid"></td>
										      <td>Palestrino 84 FC</td>
										      <td>1499.65</td>		
										      <td>+2</td>			      
										    </tr>
										    <tr class="bg-table">
										      <th scope="row" class="table-title">7º</th>
										      <td><img src="img/escudos/Hasdrubal-FC.png" class="img-fluid"></td>
										      <td>Hasdrubal FC</td>
										      <td>1498.56</td>	
										      <td>+1</td>				      
										    </tr>
										    <tr class="bg-table">
										      <th scope="row" class="table-title">8º</th>
										      <td><img src="img/escudos/Boleanos-FC.png" class="img-fluid"></td>
										      <td>Boleanos FC</td>
										      <td>1399.65</td>	
										      <td>+3</td>				      
										    </tr>
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
						<div class="card">
							<div class="card-header">
								<header>
									<h2 class="card-title">Mata Mata em andamento</h2>
								</header>
							</div><!-- card-header -->
							<div class="card-block">
								<div class="bg-success text-white"><i class="fa fa-trophy"></i> Copa Kempes - Quartas de final</div>
								<div class="bg-danger text-white"><i class="fa fa-trophy"></i> Copa da Cerveja - Encerrado</div>
								<div class="bg-warning text-white"><i class="fa fa-trophy"></i> Copa Pentelho Dourado - Aguardando Inicio</div>
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