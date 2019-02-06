<?php 
require_once('header.php');
if($_SESSION["temporada"] != "2")
	header('location:./');
?>
<main class="inscmain">
	<div class="container">
		<div class="row capa-inscricao">		
		</div>
		<div class="row ">
			<div class="col-sm-8">
				<h3 class="headline">Inscrição liga Cartolas sem cartola - Temporada <?php echo $_SESSION["temp_atual"]; ?></h3>
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
			  				<div class="col-sm-12 col-md-6 col-lg-8 col-xl-8">	
			  					<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1" checked>
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Cartolas sem cartola (R$50,00) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Liga Clássica</h3></p><p><strong>Ínicio:</strong> 1º Rodada<br /><strong>Fim:</strong> 38º Rodada</p><p><strong>Premiações:</strong><br /> 1º ao 6º colocado, maior pontuador e 4 Rodadas Bônus (Informações no regulamento).</p><p><strong>Requisitos:</strong> Realizar a inscrição no site e efetuar o pagamento.</p>"></i></span>
								</label><br />

								<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Copa Kempes VI (R$10,00) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Mata Mata</h3></p><p><strong>Previsão ínicio:</strong> 4º Rodada<br /><strong>Previsão fim:</strong> 8º Rodada</p><p><strong>Premiações:</strong><br /> Campeão R$220,00 <br /> Vice-Campeão R$100,00 <br /> Informações no regulamento.</p><p><strong>Requisitos:</strong> Os 32 primeiros que realizar inscrição e efetuar o pagamento.</p>"></i></span>
								</label>							

								<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Copa Beer (Pack Heineken) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Mata Mata</h3></p><p><strong>Previsão ínicio:</strong> 9º Rodada<br /><strong>Previsão fim:</strong> 12º Rodada (16 Times) ou 13º Rodada (32 Times)</p><p><strong>Premiações:</strong> <br />Detalhes no no regulamento.</p><p><strong>Requisitos:</strong> Espera-se ao mínimo 16 times que realizem inscrição e efetuem o pagamento.</p>"></i></span>
								</label>
								

								<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Segunda Pele (R$10,00) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Mata Mata</h3></p><p><strong>Previsão ínicio:</strong> 14º Rodada <br /><strong>Previsão fim:</strong> 18º Rodada</p><p><strong>Premiações:</strong> <br />Campeão (Produto Oficial do Clube que torça no valor de R$200,00) vice-campeão (Produto Oficial do Clube que torça no valor de R$120,00).</p><p><strong>Requisitos:</strong> Os 32 primeiros que realizar inscrição e efetuar o pagamento.</p>"></i></span>
								</label>

								<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Copa Kempes VII (R$10,00) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Mata Mata</h3></p><p><strong>Previsão ínicio:</strong> 20º Rodada <br /><strong>Previsão fim:</strong> 24º Rodada</p><p><strong>Premiações:</strong><br /> Campeão R$220,00 <br /> Vice-Campeão R$100,00 <br /> Informações no regulamento.</p><p><strong>Requisitos:</strong> Os 32 primeiros que realizar inscrição e efetuar o pagamento.</p>"></i></span>
								</label>

								<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Segunda Pele (R$10,00) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Mata Mata</h3></p><p><strong>Previsão ínicio:</strong> 26º Rodada <br /><strong>Previsão fim:</strong> 30º Rodada</p><p><strong>Premiações:</strong> <br />Campeão (Produto Oficial do Clube que torça no valor de R$200,00) vice-campeão (Produto Oficial do Clube que torça no valor de R$120,00).</p><p><strong>Requisitos:</strong> Os 32 primeiros que realizar inscrição e efetuar o pagamento.</p>"></i></span>
								</label>

								<label class="custom-control custom-chek">
									<input id="" name="" type="checkbox" class="custom-control-input" value="1">
									<span class="custom-control-indicator"></span>
									<span class="custom-control-description">Copa Beer (Pack Heineken) <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Mata Mata</h3></p><p><strong>Previsão ínicio:</strong> 33º Rodada <br /><strong>Previsão fim:</strong> 36º Rodada (16 Times) ou 37º Rodada (32 Times)</p><p><strong>Premiações:</strong> <br />Detalhes no no regulamento.</p><p><strong>Requisitos:</strong> Espera-se ao mínimo 16 times que realizem inscrição e efetuem o pagamento.</p>"></i></span>
								</label>
			  				</div>
				  			<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4">	
			  					<input type="text" class="form-control mb-2 mr-sm-2 mb-sm-3" id="valor" name="valor" value="R$ 50,00" data-mask="R$ 00,00" data-mask-selectonfocus="true" data-mask-clearifnotmatch="true" readonly="readonly">
			  					<p>Valor total não inclui a Copa Beer, <strong style="color: #293541;">Inscrição deve ser efetuada separadamente.</strong></p>
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
								<span class="custom-control-description"> Eu declaro que li e aceito o regulamento da Liga Cartolas Sem Cartola e das ligas Mata Mata</span>
							</label>
						</div>						
	  					<button id="btn-inscricao" type="submit" class="btn btn-primary form-control" name="submit" disabled>Realizar inscrição</button>		
					</form>
				</div>
			</div><!-- col-sm-8-->
			<div class="col-sm-4">
				<div class="card card-inverse card-warning info">
					<div class="card-block">
				    	<blockquote class="card-blockquote">
					      	<p>Olá Cartoleiro!</p>
					      	<p>Seja bem-vindo a liga Cartolas sem cartola.</p>
					      	<p>Após realizar sua inscrição é necessário realizar o pagamento com o tesoureiro da Liga (Bruno Gomes) para que sua inscrição seja efetivada na liga.</p>
					      	
					      	<p>Formas de Pagamento:</p>
					      	<p> - Em mãos, com o tesoureiro<br />
					      	 - Transferência Bancária <i class="fa fa-info-circle" id="info" data-toggle="tooltip" data-html="true" title="<p><h3>Itaú</h3></p><p><strong>AG:</strong> 4890<br /><strong>CC:</strong> 21441-6</p><p><strong>Titular:</strong> Bruno Gomes da Silva</p><p><strong>CPF:</strong> 358.640.578-27</p>"></i></span><br />
					      	 - Pagseguro <b>(EM BREVE)</b></p>
					      	
					      	<p>Já leu o nosso regulamento?</p>
					      	<p><a href="regulamento">Acesse Regulamentos e leia todas as regras para depois não ficar de mimimi!</a></p>

					      	<p>Caso tenha alguma dúvida ou sugestão, entre em contato por:</p>
					      	<p> - (19) 99897-0090<br />
					      	 - <a href="mailto:contato@cartolassemcartola.com.br">contato@cartolassemcartola.com.br</a></p>
					      	
					      	<p>Desejamos a todos um bom divertimento.</p>
					      	<footer>Equipe <cite title="Source Title">Cartolas sem cartola</cite></footer>
				    	</blockquote>
				  	</div>
				</div><!-- card -->		
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
				<h2 class="headline-custom">Obrigado por se inscrever na liga Cartolas sem cartola</h2>
				<p class="pre-msg">Agora falta só um pouco, efetue seu pagamento e venha mitar conosco na liga.</p>				
			</div><!-- col-sm-12 -->
		</div><!-- row -->
	</div><!-- container -->
</main>
<?php require_once('footer.php'); ?>