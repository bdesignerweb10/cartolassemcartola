<?php
require_once('header.php');
?>
<main>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<h3 class="headline-dados">Informações do Clube</h3>
				<form id="form-meusdados" data-toggle="validator" action="" method="POST">
					<div class="row justify-content-md-center">
						<div id="box-ano" class="col-sm-12 col-md-12 col-lg-12 col-xl-12 form-box">
							<h3 class="headline headline-form">Alterar informação de nome do time</h3> 
							<div class="row">			  			
					  			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">		    			
									<label for="time">Time</label>
					    			<input type="text" class="form-control form-control-lg" id="time" name="time" aria-describedby="time" data-error="Por favor, informe o nome do seu time no cartola." maxlength="120" required>
					    			<div class="help-block with-errors"></div>
					    		</div>
							</div>
							<div class="row">			  			
					  			<div class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
					  				<img src="img/escudos/clube/hasdrubalfc.png">	
					  			</div>
					  			<div class="col-sm-9 col-md-9 col-lg-9 col-xl-9">		    			
									<label for="time">Time</label>
					    			<input type="file" class="form-control form-control-lg" id="brasao" name="brasao" aria-describedby="brasao">
					    			<p>O escudo ao lado é o seu escudo atual, caso deseje alterar selecione um novo escudo.</p>
					    		</div>
							</div>					
							<div class="row">
					  			<div class="col-12">
								    <label for="historia">História do Clube</label>
								    <textarea class="form-control form-control-lg" id="historia" name="historia" rows="6" placeholder="Informe a história do clube..." data-error="Por favor, informe a história do clube." required></textarea>
					    			<div class="help-block with-errors"></div>
					    		</div>
							</div>				
		  					<button type="button" class="btn btn-success btn-lg form-control" id="btn-salvar-time">
		  						<i class='fa fa-save'></i> Alterar informações do clube
		  					</button>
						</div><!-- col-sm-8--> 
					</div>
				</form>
			</div>
			<div class="col-sm-4">
				<div class="card card-inverse card-warning info">
					<div class="card-block">
				    	<blockquote class="card-blockquote">
					      	<p>Atenção Cartoleiro!</p>
					      	<p>Mantenha sempre seus dados atualizados</p>
					      	<p>Todas as informações inseridas aqui, serão exibidas no menu "História do Clube"</p>				      	
					      	<p>Caso tenha alguma dúvida ou problemas, entre em contato:</p>
					      	<p> - (19) 99897-0090 (Bruno Gomes)<br />
					      	 - <a href="mailto:contato@cartolassemcartola.com.br">contato@cartolassemcartola.com.br</a></p>
					      	
					      	
					      	<footer>Equipe <cite title="Source Title">Cartolas sem cartola</cite></footer>
				    	</blockquote>
				  	</div>
				</div><!-- card -->
			</div>
		</div><!-- row -->
	</div><!-- container -->	
</main>
<?php
	require_once('footer.php');
?>