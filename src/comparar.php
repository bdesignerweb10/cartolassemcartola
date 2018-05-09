<?php
require_once('header.php');
?>

<main>
	<div class="container">
		<div class="row capa-comparar">
			
		</div><!-- row -->
		<div class="row">
			<div class="col-sm-6">
				<div class="checkbox">
					<label>
						<input type="checkbox" id="salva_scout1" name="salva_scout1" data-toggle="toggle" data-on="Ativo" data-off="Inativo" data-onstyle="success" data-offstyle="danger">
								Salvar time para consultar scouts
					</label>
				</div>
				<input type="text" class="form-control busca-time" id="scout1" aria-describedby="scout1" placeholder="Informe o nome do time">
			</div>					
			<div class="col-sm-6">
				<div class="checkbox">
					<label>
						<input type="checkbox" id="salva_scout1" name="salva_scout1" data-toggle="toggle" data-on="Ativo" data-off="Inativo" data-onstyle="success" data-offstyle="danger">
								Salvar time para consultar scouts
					</label>
				</div>
				<input type="text" class="form-control busca-time" id="scout1" aria-describedby="scout1" placeholder="Informe o nome do time">
			</div>
		</div><!--row-->		
		<div class="row">
			<div class="comparar-titulo">ESTATÍSTICAS DA TEMPORADA</div>
			<table class="table table-hover table-bordered table-comparar">			  
			  <tbody>
			  	<tr>			      
			      <td><img src="img/escudos/hasdrubalf.c.png"> Hasdrubal FC</td>
			      <th> X </th>
			      <td><img src="img/escudos/hasdrubalf.c.png"> Hasdrubal FC</td>
			    </tr>
			    <tr>			      
			      <td class="negativo">269.73</td>
			      <th>Pontos</th>
			      <td class="positivo">369.13</td>
			    </tr>
			    <tr>
			      <td class="positivo">C$159.63</td>
			      <th>Patrimônio</th>
			      <td class="negativo">C$146.89</td>
			    </tr>
			    <tr>
			      <td class="negativo">75.25</td>
			      <th>Média</th>
			      <td class="positivo">83.56</td>
			    </tr>
			    <tr>
			      <td class="negativo">75.25</td>
			      <th>Maior pontuação</th>
			      <td class="positivo">83.56</td>
			    </tr>
			    <tr>
			      <td class="negativo">75.25</td>
			      <th>Menor pontuação</th>
			      <td class="positivo">83.56</td>
			    </tr>
			    <tr>
			      <td class="negativo">75.25</td>
			      <th>Última pontuação</th>
			      <td class="positivo">83.56</td>
			    </tr>
			  </tbody>
			</table>

			<div class="comparar-titulo">Média de pontos por posição</div>
			<table class="table table-hover table-bordered table-comparar">			  
			  <tbody>
			  	<tr>			      
			      <td><img src="img/escudos/hasdrubalf.c.png"> Hasdrubal FC</td>
			      <th> X </th>
			      <td><img src="img/escudos/hasdrubalf.c.png"> Hasdrubal FC</td>
			    </tr>
			    <tr>			      
			      <td class="negativo">15.75</td>
			      <th>Goleiro</th>
			      <td class="positivo">32.63</td>
			    </tr>
			    <tr>
			      <td class="positivo">33.56</td>
			      <th>Lateral</th>
			      <td class="negativo">25.63</td>
			    </tr>
			    <tr>
			      <td class="negativo">75.25</td>
			      <th>Zagueiro</th>
			      <td class="positivo">83.56</td>
			    </tr>
			    <tr>
			      <td class="negativo">123.65</td>
			      <th>Meia</th>
			      <td class="positivo">185.36</td>
			    </tr>
			    <tr>
			      <td class="negativo">75.25</td>
			      <th>Atacante</th>
			      <td class="positivo">83.56</td>
			    </tr>
			    <tr>
			      <td class="negativo">26.35</td>
			      <th>Técnico</th>
			      <td class="positivo">46.36</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</div><!-- Container -->
</main>

<?php
	require_once('footer.php');
?>