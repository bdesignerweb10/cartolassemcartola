1<?php
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
						<input type="checkbox" id="salva_comparacao1" name="salva_comparacao1" data-toggle="toggle" data-on="Ativo" data-off="Inativo" data-onstyle="success" data-offstyle="danger">
								Salvar time para consultar comparação
					</label>
				</div>
				<input type="text" class="form-control busca-time" id="comparacao1" aria-describedby="comparacao1" placeholder="Informe o nome do time">
			</div>					
			<div class="col-sm-6">
				<div class="checkbox">
					<label>
						<input type="checkbox" id="salva_comparacao2" name="salva_comparacao2" data-toggle="toggle" data-on="Ativo" data-off="Inativo" data-onstyle="success" data-offstyle="danger">
								Salvar time para consultar comparação
					</label>
				</div>
				<input type="text" class="form-control busca-time" id="comparacao2" aria-describedby="comparacao2" placeholder="Informe o nome do time">
			</div>
		</div><!--row-->		
		<div class="row">
			<div class="comparar-titulo">ESTATÍSTICAS DA TEMPORADA</div>
			<table class="table table-hover table-bordered table-comparar table-estatisticas">			  
			  <tbody>
			  	<tr>			      
			      <td class="dados_time1"></td>
			      <th> X </th>
			      <td class="dados_time2"></td>
			    </tr>
			    <tr>			      
			      <td class="posicao_time1"></td>
			      <th>Posição na liga</th>
			      <td class="posicao_time2"></td>
			    </tr>
			    <tr>			      
			      <td class="pontos_time1"></td>
			      <th>Pontos</th>
			      <td class="pontos_time2"></td>
			    </tr>
			    <tr>
			      <td class="patrimonio_time1"></td>
			      <th>Patrimônio</th>
			      <td class="patrimonio_time2"></td>
			    </tr>
			    <tr>
			      <td class="media_time1"></td>
			      <th>Média</th>
			      <td class="media_time2"></td>
			    </tr>
			    <tr>
			      <td class="maior_time1"></td>
			      <th>Maior pontuação</th>
			      <td class="maior_time2"></td>
			    </tr>
			    <tr>
			      <td class="menor_time1"></td>
			      <th>Menor pontuação</th>
			      <td class="menor_time2"></td>
			    </tr>
			    <tr>
			      <td class="ultima_time1"></td>
			      <th>Última pontuação</th>
			      <td class="ultima_time2"></td>
			    </tr>
			  </tbody>
			</table>

			<div class="comparar-titulo">Média de pontos por posição</div>
			<table class="table table-hover table-bordered table-comparar table-medias">			  
			  <tbody>
			  	<tr>			      
			      <td class="dados_time1"></td>
			      <th> X </th>
			      <td class="dados_time2"></td>
			    </tr>
			    <tr>			      
			      <td class="med_g_time1"></td>
			      <th>Goleiro</th>
			      <td class="med_g_time2"></td>
			    </tr>
			    <tr>
			      <td class="med_l_time1"></td>
			      <th>Lateral</th>
			      <td class="med_l_time2"></td>
			    </tr>
			    <tr>
			      <td class="med_z_time1"></td>
			      <th>Zagueiro</th>
			      <td class="med_z_time2"></td>
			    </tr>
			    <tr>
			      <td class="med_m_time1"></td>
			      <th>Meia</th>
			      <td class="med_m_time2"></td>
			    </tr>
			    <tr>
			      <td class="med_a_time1"></td>
			      <th>Atacante</th>
			      <td class="med_a_time2"></td>
			    </tr>
			    <tr>
			      <td class="med_t_time1"></td>
			      <th>Técnico</th>
			      <td class="med_t_time2"></td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</div><!-- Container -->
</main>

<?php
	require_once('footer.php');
?>