<?php
	require_once('header.php');
?>

<main>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<h3 class="headline">Inscrição liga Cartolas sem cartola - Checkout</h3>
				<div class="inscricao">
					<form id="inscricao" action="">
			  			<div class="form-group">		    			
			    			<input type="text" class="form-control" id="nome" aria-describedby="nome" disabled>
			    		</div>
			  			<div class="form-group">
			    			<input type="email" class="form-control" id="email" aria-describedby="email" disabled>			    			
			            </div>         
			  			<div class="form-inline">		  				
			  				<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-3" id="telefone" disabled>			  					  				
			  				<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-3" id="time" disabled>
			  				
			  				<input type="number" class="form-control mb-2 mr-sm-2 mb-sm-3" id="valor" placeholder="R$30,00" disabled>
			  			</div>			  				  		     	
	  				</form>	  				
				</div>
			</div><!-- col-sm-8-->
			<div class="col-sm-4">
				<div class="card card-inverse card-success info">
					<div class="card-block">
				    	<blockquote class="card-blockquote">
					      	<p>Olá Bruno Gomes, para confirmar sua participação na liga, selecione a forma de pagamento abaixo:</p>
					      	<p>
					      		<!-- INICIO FORMULARIO BOTAO PAGSEGURO -->
								<form action="https://pagseguro.uol.com.br/checkout/v2/payment.html" method="post" onsubmit="PagSeguroLightbox(this); return false;">
								<!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
								<input type="hidden" name="code" value="722ED70CE8E8415554D13F9FB687A9BF" />
								<input type="hidden" name="iot" value="button" />
								<input type="image" src="https://stc.pagseguro.uol.com.br/public/img/botoes/pagamentos/205x30-pagar-laranja.gif" name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
								</form>
								<script type="text/javascript" src="https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.lightbox.js"></script><!-- FINAL FORMULARIO BOTAO PAGSEGURO -->
							</p>
							<p><a href="pre-inscricao.php" class="insc-resp">Pagar para o responsavél</a></p>
					      	<p>Após o sistema processar o pagamento, o cartoleiro receberá a confirmação de sua inscrição no e-mail cadastrado.</p>
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