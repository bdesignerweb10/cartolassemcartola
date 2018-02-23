<?php
	require_once('header_login.php');
?>
<main>
	<div class="container-fluid">
		<div class="row justify-content-md-center">
			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 form-box">
				<div class="login-header">
					<img src="../img/logo.png" alt="Logo Cartola">
					<span class="head-login">Painel Cartolas Sem Cartola</span>
				</div>
				<form id="form-login" data-toggle="validator" action="acts/acts.login.php" method="POST">
		  			<div class="form-group">		    			
						<label for="login">Usuário</label>
		    			<input type="text" class="form-control form-control-lg" id="login" name="login" aria-describedby="nome" placeholder="Digite seu usuário..." data-error="Por favor, informe o login." required>
		    			<div class="help-block with-errors"></div>
		    		</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Senha</label>
						<input type="password" class="form-control form-control-lg" id="senha" name="senha" placeholder="Digite sua senha..." data-error="Por favor, informe a senha." required>
					</div>
  					<button id="btn-login" type="submit" class="btn btn-success btn-lg form-control" name="submit">
  						<i class='fa fa-home'></i> Entrar
  					</button>		
				</form>
			</div>
		</div><!-- row -->
	</div><!-- contatiner -->
</main>
<?php
	require_once('footer.php');
?>