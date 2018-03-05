<?php 
require_once('header.php');
if (!isset($_SESSION["usu_id"]) || empty($_SESSION["usu_id"]) || 
	!isset($_SESSION['usu_nivel']) || empty($_SESSION["usu_nivel"]) ||
	$_SESSION['usu_nivel'] != "1" || $_SESSION["usu_id"] == "0") header('Location: index.php');
?>
<main class="maintable">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h3 class="headline">Configurações gerais do sistema</h3>
			</div><!-- col-sm-8-->
		</div><!-- row -->
		<div class="row justify-content-md-center">
			<div id="box-config" class="col-sm-12 col-md-11 col-lg-10 col-xl-10 form-box">
					<fieldset class="form-group" style='margin-top:2rem;'>
					<div class="row">
			  			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">		    			
							<label for="status_temporada">Status Temporada</label>
							<h3><?php echo ($_SESSION["temporada"] == 1 ? "Temp. Aberta" : "Temp. Fechada"); ?></h3>
			    		</div>
			  			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">		    			
							<label for="status_mercado">Status Mercado</label>
			    			<h3><?php echo ($_SESSION["mercado"] == 1 ? "Merc. Aberto" : "Merc. Fechado")?></h3>
			    		</div>
			  			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">		    			
							<label for="fake_id">Multiplicador de ID (Fake ID)</label>
			    			<h3><?php echo $_SESSION["fake_id"]; ?></h3>
			    		</div>
			  			<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">		    			
							<label for="fake_id">Rodada/Temporada Atual</label>
			    			<h3><?php echo $_SESSION["rod_atual"] . "/" . $_SESSION["temp_atual"]; ?></h3>
			    		</div>
					</div>
				</fieldset>
					<fieldset class="form-group">
					<legend>Ações</legend>
					<div class="row">
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
			  				<?php
		  					if($_SESSION["temporada"] == 0) {
		  						echo "<button type='button' class='btn btn-success btn-lg form-control' id='btn-abrir-temporada'><i class='fa fa-clock-o'></i> Abrir temporada!</button>";
		  					} else  {
		  						echo "<button type='button' class='btn btn-danger btn-lg form-control' id='btn-fechar-temporada'><i class='fa fa-calendar-times-o'></i> Encerrar temporada!</button>";
		  					} 
			  				?>
		  					
			    		</div>
			  			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
			  				<?php
		  					if($_SESSION["mercado"] == 0) {
		  						echo "<button type='button' class='btn btn-info btn-lg form-control' id='btn-abrir-mercado' " . ($_SESSION["temporada"] == 0 ? "disabled" : "") . "><i class='fa fa-shopping-cart'></i> Abrir mercado!</button>";
		  					} else  {
		  						echo "<button type='button' class='btn btn-warning btn-lg form-control' id='btn-fechar-mercado' " . ($_SESSION["temporada"] == 0 ? "disabled" : "") . "><i class='fa fa-times'></i> Fechar mercado!</button>";
		  					} 
			  				?>
		  							    			
			    		</div>
					</div>
				</fieldset>
					<fieldset class="form-group" style="margin-bottom: 0rem; ">
					<legend>Alterar Dados</legend>
					<form id="form-config" data-toggle="validator" action="acts/acts.configuracoes.php" method="POST">
    					<div class="row">
				  			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">		    			
								<label for="inicio_temporada">Início Temp.</label>
				    			<input type="text" class="form-control form-control-lg" id="inicio_temporada" name="inicio_temporada" aria-describedby="inicio_temporada" placeholder="Informe o dia e mês de início da temporada..." data-error="Por favor, informe o dia e mês de início da temporada." value="<?php echo $_SESSION["inicio_temporada"]; ?>" data-mask="00/00" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" required>
				    		</div>
				  			<div class="col-sm-12 col-md-12 col-lg-5 col-xl-5">		    			
								<label for="email_pagseguro">E-mail Pagseguro</label>
				    			<input type="text" class="form-control form-control-lg" id="email_pagseguro" name="email_pagseguro" aria-describedby="email_pagseguro" placeholder="Informe o e-mail do pagseguro..." data-error="Por favor, informe o e-mail do pagseguro." value="<?php echo $_SESSION["email_pagseguro"]; ?>">
				    		</div>
				  			<div class="col-sm-12 col-md-12 col-lg-5 col-xl-5">		    			
								<label for="token_pagseguro">Token Pagseguro</label>
				    			<input type="text" class="form-control form-control-lg" id="token_pagseguro" name="token_pagseguro" aria-describedby="token_pagseguro" placeholder="Informe o token do pagseguro..." data-error="Por favor, informe o token do pagseguro." value="<?php echo $_SESSION["token_pagseguro"]; ?>">
				    		</div>
						</div>
    					<div class="row">
				  			<div class="col-12">	
				    			<div class="help-block with-errors"></div>
				    		</div>
						</div>	
    					<div class="row" style="margin-top:20px; margin-bottom: 10px;">
				  			<div class="col-12">
				  				<div class="checkbox">
									<label>
										<input type="checkbox" id="api_ligada" name="api_ligada" <?php echo ($_SESSION["api_ligada"] == 1 ? "checked" : "") ?> data-toggle="toggle" data-on="Ativo" data-off="Inativo" data-onstyle="success" data-offstyle="danger">
										Comunicação via API do Cartola, pegando dados diretamente do sistema está ativada?
									</label>
								</div>
				    		</div>
						</div>
	  					<button type="button" class="btn btn-primary btn-lg form-control" id="btn-dados-config">
	  						<i class='fa fa-save'></i> Salvar dados
	  					</button>
					</form>
				</fieldset>
			</div><!-- col-sm-8--> 
		</div>
	</div>
</main>
<?php require_once('footer.php'); ?>