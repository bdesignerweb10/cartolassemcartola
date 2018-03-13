<?php 
require_once('header.php');
$eventoslist = $conn->query("SELECT e.id AS id, e.titulo AS titulo, e.data AS data, e.ativo AS status, COUNT(ep.id_times) AS participantes
        					   FROM tbl_eventos e
  					     INNER JOIN tbl_eventos_presenca ep ON ep.id_eventos = e.id
    					   GROUP BY e.id, e.titulo, e.data, e.ativo
       					   ORDER BY e.data DESC, e.id ASC") or trigger_error($conn->error);
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de eventos</h3>
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 offset-md-6 offset-lg-8 offset-lg-8">
				<button type="button" class="btn btn-success btn-lg form-control" id="btn-add-eventos">
					<i class='fa fa-plus'></i> Novo evento
				</button>		
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row">
			<div class="col-12">
				<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th class='center'>#</th>
			                <th class="bigcolumn">Evento</th>
			                <th class='center'>Data</th>
			                <th class='center'>Status</th>
			                <th class='center'>Participantes</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<?php 
			        	if($eventoslist && $eventoslist->num_rows > 0) {
				        	while($eventos = $eventoslist->fetch_object()) {
				                $fake_id = $eventos->id * $_SESSION["fake_id"];
				        		echo "<tr>
      									<th scope='row' class='center'>$eventos->id</th>
						                <td>$eventos->titulo</td>
						                <td>" . date('d/m/Y H:i:s', $eventos->data) . "</td>
						                <td class='center'>" . ($eventos->status == 1 ? "<i class='fa fa-check fa-2x add' alt='Evento ativo' title='Evento está ativo'></i>" : "<i class='fa fa-times fa-2x del' alt='Evento inativo' title='Evento ainda não está ativo'></i>") . "
						                <td class='center'>$eventos->participantes</td>
						                <td class='center'>
											<a href='#' class='btn-edit-eventos' data-temporada='$fake_id' alt='Editar evento $eventos->id' title='Editar dados do evento $eventos->id'>
												<i class='fa fa-edit fa-2x edit'></i>
											</a>
											<a href='#' class='btn-del-temporadas' data-temporada='$fake_id' alt='Remover evento $eventos->id' title='Remover evento $eventos->id'>
												<i class='fa fa-trash fa-2x del'></i>
											</a>
										</td>
									</tr>";
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
<main class="mainform">
	<div class="container">
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12">
				<h3 class="headline" id="headline-ger-eventos"></h3>
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" id="btn-voltar-eventos" class="btn btn-link btn-lg form-control btn-voltar">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row justify-content-md-center">
			<div id="box-ano" class="col-sm-12 col-md-10 col-lg-9 col-xl-9 form-box">
				<form id="form-eventos" data-toggle="validator" action="acts/acts.eventos.php" method="POST">
					<h3 class="headline headline-form"></h3> 
					<div class="row">
			  			<div class="col-sm-4 col-md-4 col-lg-2 col-xl-2">		    			
							<label for="id">ID</label>
			    			<input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled>
			    		</div>
			  			<div class="col-sm-8 col-md-8 col-lg-10 col-xl-10">		    			
							<label for="titulo">Título do Evento</label>
			    			<input type="text" class="form-control form-control-lg" id="titulo" name="titulo" aria-describedby="titulo" placeholder="Informe o título do evento..." data-error="Por favor, informe o título do evento." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">		    			
							<label for="data">Data do Evento</label>
			    			<input type="datetime-local" class="form-control form-control-lg" id="data" name="data" aria-describedby="data" placeholder="Informe a data do evento..." data-error="Por favor, informe a data do evento." maxlength="15" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">		    			
							<label for="local">Local do Evento</label>
			    			<input type="text" class="form-control form-control-lg" id="local" name="local" aria-describedby="local" placeholder="Informe o local do evento..." data-error="Por favor, informe o local do evento." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-12">
						    <label for="descricao">Descrição</label>
						    <textarea class="form-control form-control-lg" id="descricao" name="descricao" rows="6" placeholder="Informe a descrição do evento, como o que as pessoas precisam levar e vestir." data-error="Por favor, informe a descrição do evento." maxlength="240" required></textarea>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row" style="margin-top:20px; margin-bottom: 10px;">
			  			<div class="col-12">
			  				<div class="checkbox">
								<label>
									<input type="checkbox" id="ativo" name="ativo" data-toggle="toggle" data-on="Ativo" data-off="Inativo" data-onstyle="success" data-offstyle="danger">
									Se o evento está ativo, aparecendo no calendário do site
								</label>
							</div>
			    		</div>
					</div>
  					<button type="button" class="btn btn-success btn-lg form-control" id="btn-salvar-evento">
  						<i class='fa fa-save'></i> Salvar dados
  					</button>
				</form>
			</div><!-- col-sm-8--> 
		</div>
	</div>
</main>
<?php require_once('footer.php'); ?>