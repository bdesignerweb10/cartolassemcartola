<?php
	require_once('header.php');
?>

<main>
	<div class="container">
		<h3 class="headline" align="center">Endenta como funciona a pontuação do Cartola FC</h3>
		<div class="row">			
			<div class="col-sm-5 offset-sm-1">				
				<table class="table table-bordered liga-csc">
					<thead>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts" colspan="2">Scouts de defesa (Goleiro)</th>	
						</tr>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts">Estatística</th>
							<th class="table-title tbl-scouts">Pontos</th>											      
						</tr>
					</thead>
					<tbody>
						<tr class="bg-table">
							<td>Jogos sem sofrer gols</td>
							<td class="positivo">5.00</td>
						</tr>
						<tr class="bg-table">
							<td>Defesa de Pênalti</td>
							<td class="positivo">7.00</td>
						</tr>
						<tr class="bg-table">
							<td>Defesa difícil</td>
							<td class="positivo">3.00</td>
						</tr>
						<tr class="bg-table">
							<td>Gol Sofrido</td>
							<td class="negativo">-2.00</td>
						</tr>
					</tbody>
					<thead>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts" colspan="2">Scouts de defesa</th>	
						</tr>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts">Estatística</th>
							<th class="table-title tbl-scouts">Pontos</th>											      
						</tr>
					</thead>
					<tbody>
						<tr class="bg-table">
							<td>Roubada de bola</td>
							<td class="positivo">1.5</td>
						</tr>
						<tr class="bg-table">
							<td>Gol Contra</td>
							<td class="negativo">-5.00</td>
						</tr>
						<tr class="bg-table">
							<td>Cartão Vermelho</td>
							<td class="negativo">-5.00</td>
						</tr>
						<tr class="bg-table">
							<td>Cartão Amarelo</td>
							<td class="negativo">-2.00</td>
						</tr>
						<tr class="bg-table">
							<td>Falta cometida</td>
							<td class="negativo">-0.5</td>
						</tr>
					</tbody>												    
				</table>	
			</div><!-- col-sm-5 -->


			<div class="col-sm-5">				
				<table class="table table-bordered liga-csc">
					<thead>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts" colspan="2">Scouts de ataque</th>	
						</tr>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts">Estatística</th>
							<th class="table-title tbl-scouts">Pontos</th>											      
						</tr>
					</thead>
					<tbody>
						<tr class="bg-table">
							<td>Gol</td>
							<td class="positivo">8.00</td>
						</tr>
						<tr class="bg-table">
							<td>Assistência</td>
							<td class="positivo">5.00</td>
						</tr>
						<tr class="bg-table">
							<td>Finalização na Trave</td>
							<td class="positivo">3.00</td>
						</tr>
						<tr class="bg-table">
							<td>Finalização Defendida</td>
							<td class="positivo">1.2</td>
						</tr>					
						<tr class="bg-table">
							<td>Finalização para Fora</td>
							<td class="positivo">0.8</td>
						</tr>
						<tr class="bg-table">
							<td>Falta Sofrida</td>
							<td class="positivo">0.5</td>
						</tr>
					</tbody>
					<thead>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts" colspan="2">Scouts de ataque (negativo)</th>	
						</tr>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts">Estatística</th>
							<th class="table-title tbl-scouts">Pontos</th>											      
						</tr>
					</thead>
					<tbody></tbody>
						<tr class="bg-table">
							<td>Penalti Perdido</td>
							<td class="negativo">-4.00</td>
						</tr>
						<tr class="bg-table">
							<td>Impedimento</td>
							<td class="negativo">-0.5</td>
						</tr>
						<tr class="bg-table">
							<td>Passe Errado</td>
							<td class="negativo">-0.3</td>
						</tr>
					</tbody>												    
				</table>	
			</div><!-- col-sm-5 -->
			<div class="col-sm-10 offset-sm-1">
				<table class="table table-bordered liga-csc">
					<thead>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts" colspan="2">Capitão do Time</th>	
						</tr>
						<tr class="bg-primary">
							<th class="table-title tbl-scouts">Jogador</th>
							<th class="table-title tbl-scouts">Pontos</th>											      
						</tr>
					</thead>
					<tbody>
						<tr class="bg-table">
							<td>Escolha um jogador para ser o capitão do time (exceto técnico)</td>
							<td class="positivo">A pontuação será dobrada, seja positiva ou <strong style="color: #f3091d;">negativa</strong></td>
						</tr>
					</tbody>
				</table>		
			</div><!-- col-sm-10 -->
		</div><!-- row -->
	</div><!-- container -->
</main>

<?php
	require_once('footer.php');
?>