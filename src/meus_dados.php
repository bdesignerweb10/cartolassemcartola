<?php
require_once('header.php');
?>
<main>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<h3 class="headline-dados">Meus dados</h3>
				<form id="form-meusdados" data-toggle="validator" action="" method="POST">
					<div class="row justify-content-md-center">
						<div id="box-ano" class="col-sm-12 col-md-12 col-lg-12 col-xl-12 form-box">
							<h3 class="headline headline-form">Alterar informação da minha conta</h3> 
							<div class="row">			  			
					  			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">		    			
									<label for="nome">Nome</label>
					    			<input type="text" class="form-control form-control-lg" id="nome" name="nome" aria-describedby="nome" data-error="Por favor, informe o seu nome." maxlength="120" required>
					    			<div class="help-block with-errors"></div>
					    		</div>
							</div>					
							<div class="row">
					  			<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">		    			
									<label for="email">E-mail</label>
					    			<input type="email" class="form-control form-control-lg" id="email" name="email" aria-describedby="email" data-error="Por favor, informe o e-mail." maxlength="120" required>
					    			<div class="help-block with-errors"></div>
					    		</div>
					    	</div>
					    	<div class="row">	
					  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">		    			
									<label for="telefone">Telefone</label>
					    			<input type="text" class="form-control form-control-lg" id="telefone" name="telefone" aria-describedby="telefone" data-error="Por favor, informe um número de telefone correto." data-mask="(00) 00000-0000" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" maxlength="15" required>
					    			<div class="help-block with-errors"></div>
					    		</div>
					    		<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">		    			
									<label for="senha">Senha</label>
					    			<input type="password" class="form-control form-control-lg" id="senha" name="senha" aria-describedby="senha"  data-error="Por favor, informe sua senha." maxlength="120" required>
					    			<div class="help-block with-errors"></div>
					    		</div>
							</div>					
		  					<button type="button" class="btn btn-success btn-lg form-control" id="btn-salvar-time">
		  						<i class='fa fa-save'></i> Alterar dados
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
					      	<p>Pois serão essas as informações que utilizaremos para entrar em contato com o você.</p>				      	
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