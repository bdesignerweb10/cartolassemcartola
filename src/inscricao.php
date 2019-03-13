<?php 
require_once('header.php');
if($_SESSION["temporada"] != "2")
	header('location:./');
?>
<main class="inscmain">
	<div class="container">
		<div class="row capa-inscricao">		
		</div>
		<div class="row">
			<div class="col-sm-8">
				<h3 class="headline">Inscrição Liga Cartoleirão - Trabalho Seguro TS - Temporada <?php echo $_SESSION["temp_atual"]; ?></h3>
				<div class="inscricao">
					<div class="row">
						<div class="col-sm-12">
							<div class="alert alert-danger" role="alert">
							  <strong>Atenção!</strong> Se você já participou da liga, insira apenas o nome do seu time e revise os dados!
							</div>
						</div>
					</div>					
					<form id="form-inscricao" data-toggle="validator" action="acts/acts.inscricao.php" method="POST">
			  			<div class="form-group">		    			
			    			<input type="text" class="form-control" id="nome" name="nome" aria-describedby="nome" placeholder="Informe o nome do Cartoleiro" data-error="Parça, insira o nome do presidente do seu clube, ou seja, o seu." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			    		</div>
			  			<div class="form-group">
			    			<input type="email" class="form-control" id="email" name="email" aria-describedby="email" placeholder="Informe seu e-mail" data-error="Por favor, informe um e-mail correto." maxlength="120" required>
			    			<div class="help-block with-errors"></div>
			            </div>         
						<div class="row" style="margin-bottom: 1rem;">			  			
				  			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">	
				  				<input type="text" class="form-control mb-3 mr-sm-3 mb-sm-3" id="telefone" name="telefone" placeholder="Informe nº do telefone" data-error="Por favor, informe um número de telefone correto." data-mask="(00) 00000-0000" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" maxlength="15" required>
				  				<div class="help-block with-errors"></div>		  				
			  				</div>
				  			<div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">	
				  				<input type="text" class="form-control mb-3 mr-sm-3 mb-sm-3" id="nome_time" name="nome_time" placeholder="Informe o seu time do cartola" data-error="Por favor, informe o nome de seu time do cartola." maxlength="120" required>
				  				<div class="help-block with-errors"></div>
			  				</div>
			  				<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
			  					<div class="alert alert-info" role="alert">
								  <strong>Atenção!</strong> Ao selecionar o torneio desejado, o Cartoleiro estará apenas reservando sua participação, a confirmação de sua inscrição nos torneios selecioandos, será mediante ao pagamento.
								</div>
			  				</div>
			  				<div class="col-sm-12 col-md-12 col-lg-9 col-xl-9">
								<?php
								$competicoes = $conn->query("SELECT id, descricao, valor, is_default, outro_valor, informacoes FROM tbl_competicoes ORDER BY is_default DESC") or trigger_error($conn->error);

								if($competicoes && $competicoes->num_rows > 0) {
									$arrcount = 0;
				        			while($c = $competicoes->fetch_object()) {
				        				$valor_comp = "";
				        				if($c->valor == 0) {
			        						$valor_comp = $c->outro_valor;
				        				}
				        				else {
				        					$valor_comp = number_format($c->valor, 2, ',', '.');
				        				}

			        					echo "<label class='custom-control custom-chek'>
										<input id='competicao[$arrcount]' name='competicao[$arrcount]' type='checkbox' class='custom-control-input competicao' data-money='$c->valor' value='$c->id' " . ($c->is_default == 1 ? "checked disabled" : "") . ">
										<span class='custom-control-indicator'></span>
										<span class='custom-control-description'>$c->descricao (R$ $valor_comp) <i class='fa fa-info-circle' id='info' data-toggle='tooltip' data-html='true' title='$c->informacoes'></i></span>
										</label>";

										if($c->is_default == 1) {
											echo "<br /><input type='hidden' id='competicao[$arrcount]' name='competicao[$arrcount]' value='$c->id' />";
										}

										$arrcount++;
			        				}
		        				}
		        				else {
		        					echo '<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="ERR" checked disabled>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">ERRO (R$99) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="Erro ao executar a Query!"></i></span>
									</label><br />';
		        				}
								?>
			  				</div>
				  			<div class="col-sm-12 col-md-12 col-lg-3 col-xl-3">	
			  					<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-3" id="valor" name="valor" value="R$ 50,00" data-mask="R$ 00,00" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" readonly="readonly">
			  					<p style="font-size: 0.8rem">Valor total não inclui a Copa Beer, <strong style="color: #293541;">o pagamento da inscrição deve ser efetuado separadamente.</strong></p>
			  				</div>
			  			</div>
					    <fieldset class="form-group row" style="margin-left: 0px; margin-right: 0px;">
      						<legend class="col-form-legend col-sm-12" style="padding-left: 0px;">Forma de pagamento: </legend>
				  			<div class="form-inline">
								<label class="custom-control custom-radio">
									<input id="pag-maos" name="forma-pagto" type="radio" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Pagamento em mãos com o tesoureiro</span>
								</label>
								<label class="custom-control custom-radio">
									<input id="pag-banco" name="forma-pagto" type="radio" class="custom-control-input" value="2">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Transferência bancária</span>
								</label>
								<label class="custom-control custom-radio">
									<input id="pag-pagseguro" name="forma-pagto" type="radio" class="custom-control-input" value="3" disabled>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Pagseguro (EM BREVE)</span>
								</label>
				            </div>
				        </fieldset>
				        <div class="form-check" style="justify-content: left; margin-bottom: 10px;">
					        <label class="custom-control custom-chek form-check">
								<input id="regulamento" name="regulamento" type="checkbox" class="custom-control-input" value="1">
								<span class="custom-control-indicator"></span>
								<span class="custom-control-description"> Eu declaro que li e aceito o regulamento da Liga Cartoleirão - Trabalho Seguro TS e das ligas Mata Mata</span>
							</label>
						</div>
						<input type="hidden" id="id_time" name="id_time" />				
	  					<button id="btn-inscricao" type="submit" class="btn btn-primary form-control" name="submit" disabled>Realizar inscrição</button>		
					</form>
				</div>
			</div><!-- col-sm-8-->
			<div class="col-sm-4">
				<div class="card card-inverse card-warning info">
					<div class="card-block">
				    	<blockquote class="card-blockquote">
					      	<p>Olá Cartoleiro!</p>
					      	<p>Seja bem-vindo a Liga Cartoleirão - Trabalho Seguro TS.</p>
					      	<p>Após realizar sua inscrição é necessário realizar o pagamento com o tesoureiro da Liga (Bruno Gomes) para que sua inscrição seja efetivada na liga.</p>
					      	
					      	<p>Formas de Pagamento:</p>
					      	<p> - Em mãos, com o tesoureiro<br />
					      	 - Transferência Bancária <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Itaú</h3></p><p><strong>AG:</strong> 4890<br /><strong>CC:</strong> 21441-6</p><p><strong>Titular:</strong> Bruno Gomes da Silva</p><p><strong>CPF:</strong> 358.640.578-27</p>"></i></span></b></p>
					      	
					      	<p>Já leu o nosso regulamento?</p>
					      	<p><a href="regulamento">Acesse Regulamentos e leia todas as regras para depois não ficar de mimimi!</a></p>

					      	<p>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p>
					      	<p> - (19) 99897-0090<br />
					      	 - <a href="mailto:contato@cartoleirao.com.br">contato@cartoleirao.com.br</a></p>
					      	
					      	<p>Desejamos a todos um bom divertimento.</p>
					      	<footer>Equipe <cite title="Source Title">Cartoleirão - Trabalho Seguro TS</cite></footer>
				    	</blockquote>
				  	</div>
				</div><!-- card -->	
				<h1 class="headline-patrocinadores">Patrocinadores:</h1>
				<div class="row patrocinio">
					<div class="col-sm-3">
						<img src="img/logo-ts.png" alt="Logo Trabalho Seguro TS">
					</div>	
					<div class="col-sm-9">
						<h1 class="headline-empresa">Trabalho Seguro Treinamentos e Serviços</h1>
						<p class="info-patr">Waner Luis Gomide <br />
						(19) 99888-51741 / (19) 4101-0288</p>
						<p class="site-patr"><a href="http://www.trabalhosegurots.com.br" target="_blank">www.trabalhosegurots.com.br</a></p>
					</div>
				</div><!-- row -->
			</div>			
		</div><!-- row -->
	</div><!-- contatiner -->
</main>
<main class="premain">
	<div class="container pre-inscricao">
		<div class="row" style="margin-bottom: 20px;">
			<div class="col-sm-12 col-md-6 col-lg-2 col-xl-2">
				<button type="button" class="btn btn-link btn-lg form-control" id="btn-voltar-inscricao">
					<i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar
				</button>
			</div><!-- col-sm-8-->
		</div><!-- row -->	
		<div class="row">
			<div class="col-sm-12">	
				<h2 class="headline-custom">Obrigado por se inscrever na Liga Cartoleirão - Trabalho Seguro TS</h2>
				<p class="pre-msg">Agora falta só um pouco, efetue seu pagamento e venha mitar conosco na liga.</p>				
			</div><!-- col-sm-12 -->
		</div><!-- row -->
	</div><!-- container -->
</main>
<?php require_once('footer.php'); ?>