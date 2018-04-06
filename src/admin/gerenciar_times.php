<?php 
require_once('header.php');
$timeslist = $conn->query("SELECT t.id AS id, t.nome_time AS time, t.nome_presidente AS presidente, t.escudo_time AS escudo, t.email AS email, 
							      t.ativo AS status, COUNT(i.id_anos) AS temporadas
   					         FROM tbl_times t
   				       INNER JOIN tbl_inscricao AS i ON i.id_times = t.id
   				         GROUP BY t.id, t.nome_time, t.nome_presidente, t.escudo_time, t.email, t.ativo
   				         ORDER BY t.id DESC") or trigger_error($conn->error);
?>
<main class="maintable">
	<div class="container">
		<h3 class="headline">Gerenciamento de times</h3>
		<div class="row">
			<div class="col-12">
				<table class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th class='center'>#</th>
			                <th class='center'>&nbsp;</th>
			                <th>Time</th>
			                <th>Presidente</th>
			                <th>E-mail</th>
			                <th class='center'>Status</th>
			                <th class='center'>Temporadas</th>
			                <th class='center'>Opções</th>
			            </tr>
			        </thead>
			        <tbody>
			        	<?php 
			        	if($timeslist && $timeslist->num_rows > 0) {
				        	while($time = $timeslist->fetch_object()) {
				                $fake_id = $time->id * $_SESSION["fake_id"];

				                $escudo = "../img/escudos/no-escudo.png";
				                if(file_exists("../img/escudos/$time->escudo"))
				                	$escudo = "../img/escudos/$time->escudo";

				        		echo "<tr>
      									<th scope='row' class='center'>$time->id</th>
								        <td class='center'><img src='$escudo' class='img-fluid'></td>
						                <td>$time->time</td>
						                <td>$time->presidente</td>
						                <td>$time->email</td>
						                <td class='center'>" . ($time->status == 1 ? "<i class='fa fa-check fa-2x add' alt='Time ativo' title='Time está ativo'></i>" : "<i class='fa fa-times fa-2x del' alt='Time inativo' title='Time ainda não está ativo'></i>") . "
						                </td>
						                <td class='center'>$time->temporadas</td>
						                <td class='center'>
						                	<a href='#' class='btn-edit-time' data-id='$fake_id' alt='Editar $time->time' title='Editar dados de $time->time'>
				                				<i class='fa fa-edit fa-2x edit'></i>
			                			  	</a>";

                			  	if($time->status == 1) {
		                			echo "<a href='#' class='btn-desativar-time' data-id='$fake_id' alt='Desativar $time->time' title='Desativar $time->time no sistema'><i class='fa fa-ban fa-2x del'></i>";
		                		}
		                		else {
		                			echo "<i class='fa fa-ban fa-2x del-disabled' alt='Desativar $time->time está desabilitada' title='Função de desativação do $time->time está desabilitada'></i>";
		                		}

								echo "</td></tr>";
							}
			        	}
			        	else {
			        		echo "<tr>
					                <td colspan='8' class='center'>Não há dados a serem exibidos para a listagem.</td>
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
				<h3 class="headline" id="headline-ger-times"></h3>
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" id="btn-voltar-times" class="btn btn-link btn-lg form-control btn-voltar">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>	
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<form id="form-temporadas" data-toggle="validator" action="acts/acts.gerenciar_times.php" method="POST">
			<div class="row justify-content-md-center">
				<div id="box-ano" class="col-sm-12 col-md-10 col-lg-9 col-xl-9 form-box">
					<h3 class="headline headline-form"></h3> 
					<div class="row">
			  			<div class="col-sm-4 col-md-4 col-lg-2 col-xl-2">		    			
							<label for="id">ID</label>
			    			<input type="number" class="form-control form-control-lg" id="id" name="id" aria-describedby="id" maxlength="11" disabled />
			    		</div>
			  			<div class="col-sm-8 col-md-8 col-lg-10 col-xl-10">		    			
							<label for="nome_time">Nome do Time</label>
			    			<input type="text" class="form-control form-control-lg" id="nome_time" name="nome_time" aria-describedby="nome_time" placeholder="Informe o nome do time..." data-error="Por favor, informe o nome do time." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-sm-12 col-md-7 col-lg-9 col-xl-9">		    			
							<label for="nome_presidente">Nome do Presidente</label>
			    			<input type="text" class="form-control form-control-lg" id="nome_presidente" name="nome_presidente" aria-describedby="nome_presidente" placeholder="Informe o nome do presidente..." data-error="Por favor, informe o nome do presidente." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			    		</div>	  			
			  			<div class="col-sm-12 col-md-5 col-lg-3 col-xl-3">		    			
							<label for="ano_fundacao">Ano Fundação</label>
			    			<input type="text" class="form-control form-control-lg" id="ano_fundacao" name="ano_fundacao" aria-describedby="time" data-error="Por favor, informe o nome do seu time no cartola." data-mask="0000" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" maxlength="4" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">		    			
							<label for="nome_presidente">E-mail</label>
			    			<input type="email" class="form-control form-control-lg" id="email" name="email" aria-describedby="email" placeholder="Informe o e-mail..." data-error="Por favor, informe o e-mail." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">		    			
							<label for="telefone">Telefone</label>
			    			<input type="text" class="form-control form-control-lg" id="telefone" name="telefone" aria-describedby="telefone" placeholder="Informe nº do telefone..." data-error="Por favor, informe um número de telefone correto." data-mask="(00) 00000-0000" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" maxlength="15" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
					<div class="row">
			  			<div class="col-12">
						    <label for="historia">História</label>
						    <textarea class="form-control form-control-lg" id="historia" name="historia" rows="6" placeholder="Informe a história do clube..." data-error="Por favor, informe a história do clube." required></textarea>
			    			<div class="help-block with-errors"></div>
			    		</div>
					</div>
  					<button type="button" class="btn btn-success btn-lg form-control" id="btn-salvar-time">
  						<i class='fa fa-save'></i> Salvar dados
  					</button>
				</div><!-- col-sm-8--> 
			</div>
		</form>
	</div>
</main>
<?php require_once('footer.php'); ?>