<?php
require_once('header.php');
?>
<main>
	<div class="container">
		<div class="row capa-brasileirao">
			<div class="col-sm-12"></div>
		</div>
		<div class="row">	
			<div class="col-sm-12 col-md-12 col-lg-8 col-xl-8">
				<h1 class="headline">Tabela</h1>
				<div class="table-responsive table-brasileiro">
					<table class="table table-hover table-bordered tbl-brasileiro">
					  <thead>
					    <tr class="bg-warning tbl-head-brasileiro">
					      <th>#</th>	
					      <th>Clube</th>
					      <th>P</th>
					      <th>J</th>
					      <th>V</th>
					      <th>E</th>
					      <th>D</th>
					      <th>GP</th>
					      <th>GC</th>
						  <th>SG</th>
						  <th>%</th>
					    </tr>
					  </thead>
					  <tbody class="tbl-pos-brasileiro">
					  </tbody>
					</table>
				</div><!-- table-responsive -->	
				<footer>						
					<ul class="legenda">
						<li class="nav-item">
							<span class="badge media-parcial"></span> 
							Libertadores
						</li>
						<li class="nav-item">
							<span class="badge bom"></span>
							Pré Libertadores
						</li>
						<li class="nav-item">
							<span class="badge media-camp"></span>
							Sulamericana
						</li>
						<li class="nav-item">
							<span class="badge ruim"></span>
							Rebaixados
						</li>														
					</ul>						
				</footer>
			</div>

			<div id="confrontos-br" class="col-sm-12 col-md-12 col-lg-4 col-xl-4">
				<h1 class="headline">Jogos</h1>
				<ul class="paginacao est-rodada">			        
			        <li class="page-item">
			            <a class="page-rodada pos-rodada voltar-rodada" href="#">&lt;</a>
			        </li>			        
			        <h3 class="n-rodada"></h3>
			        <li class="page-item">
			            <a class="page-rodada pos-rodada avancar-rodada" href="#">&gt;</a>
			        </li>
			    </ul>
			</div>
		</div><!-- row -->
	</div><!-- container -->
</main>

<?php
	require_once('footer.php');
?>