<?php
	require_once('header.php');
?>

<main>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<h3 class="headline">Inscrição liga Cartolas sem cartola - Temporada 2018</h3>
				<div class="inscricao">
					<form id="inscricao" data-toggle="validator" action="">
			  			<div class="form-group">		    			
			    			<input type="text" class="form-control" id="nome" aria-describedby="nome" placeholder="Informe seu nome" data-error="Por favor, informe seu nome." required>
			    			<div class="help-block with-errors"></div>
			    		</div>
			  			<div class="form-group">
			    			<input type="email" class="form-control" id="email" aria-describedby="email" placeholder="Informe seu E-mail" data-error="Por favor, informe um e-mail correto." required>
			    			<div class="help-block with-errors"></div>
			            </div>         
			  			<div class="form-inline">		  				
			  				<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-3" id="telefone" placeholder="Informe nº do telefone" data-error="Por favor, informe um número de telefone correto." required>
			  				<div class="help-block with-errors"></div>		  				
			  				<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-3" id="time" placeholder="Informe o seu time" data-error="Por favor, informe o nome de seu time." required>
			  				<div class="help-block with-errors"></div>
			  				<input type="number" class="form-control mb-2 mr-sm-2 mb-sm-3" id="valor" placeholder="R$30,00" disabled>
			  			</div>  			     	
	  					<button type="submit" class="btn btn-primary form-control">Realizar inscrição</button>  					
					</form>
				</div>
			</div><!-- col-sm-8-->
			<div class="col-sm-4">
				<div class="card card-inverse card-warning info">
					<div class="card-block">
				    	<blockquote class="card-blockquote">
					      	<p>Olá Cartoleiro, seja bem-vindo a liga Cartolas sem cartola.</p>
					      	<p>Após realizar sua inscrição é necessário realizar o pagamento com os responsáveis (Bruno Gomes) para que sua inscrição seja efetivada na liga.</p>
					      	
					      	<p>Formas de Pagamento:</p>
					      	<p> - Diretamente com o Responsável<br />
					      	 - Transferência Bancária</p>
					      	
					      	<p>Desejamos a todos um bom divertimento.</p>
					      	<footer>Equipe <cite title="Source Title">Cartolas sem cartola</cite></footer>
				    	</blockquote>
				  	</div>
				</div><!-- card -->		
			</div>
		</div><!-- row -->
	</div><!-- contatiner -->
</main>

<?php
	require_once('footer.php');
?>