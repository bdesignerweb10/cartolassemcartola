<?php 
require_once('header.php');

$timestemp = $conn->query("SELECT t.id_anos AS id, a.descricao AS ano, COUNT(t.id_rodadas) AS qtd_rodadas, COUNT(tt.id_times) AS qtd_times
   							 FROM tbl_temporadas t
   					   INNER JOIN tbl_anos AS a ON a.id = t.id_anos
                        LEFT JOIN tbl_times_temporadas AS tt ON tt.id_anos = a.id
   						 GROUP BY t.id_anos, tt.id_times") or trigger_error($mysqli->error);
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de de times por temporadas</h3>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<table class="table table-striped table-bordered table-hover datatable" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th class='center'>#</th>
			                <th class="bigcolumn">Ano</th>
			                <th class='center'>Temporada Atual?</th>
			                <th class='center'>Qtd. Rodadas</th>
			                <th class='center'>Qtd. Times Cadastrados</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<?php 
			        	if($timestemp && $timestemp->num_rows > 0) {
				        	while($dados = $timestemp->fetch_object()) {
				        		echo "<tr>
						                <td>$dados->id</td>
						                <td>$dados->ano</td>
						                <td class='center'>" . ($dados->id == $_SESSION["temporada_atual"] ? "<i class='fa fa-check fa-2x add'></i>" : "&nbsp;") . "</td>
						                <td class='center'>$dados->qtd_rodadas</td>
						                <td class='center'>$dados->qtd_times</td>
						                <td class='center'>";

						                $fake_id = $dados->id * 98478521;

						                if($dados->id < $_SESSION["temporada_atual"] || ($dados->id == $_SESSION["temporada_atual"] && $_SESSION["temporada"] == 1)) {
						                	echo "<i class='fa fa-edit fa-2x edit-disabled'></i>";
						                }
						                else {
						                	echo "<a href='#' class='btn-edit-temporadas' data-alt-id='$fake_id'>
						                			<i class='fa fa-edit fa-2x edit'></i>
					                			  </a>";
						                }
						        echo "</td></tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='6' class='center'>Não há dados a serem exibidos para a listagem.</td>
				                </tr>";
			        	}
						?>
					</tbody>
			    </table>
			</div><!-- col-sm-8-->
		</div><!-- row -->
	</div><!-- col-sm-8-->
</main>