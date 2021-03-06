		<div id="alert" class="modal modal-default modal-danger fade" data-backdrop="static">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-2x fa-times-circle-o"></i></h5>
					</div>
					<div class="modal-body">
						<h3 class="modal-title" id="alert-title"></h3>
						<p class="modal-message" id="alert-content"></p>
					</div>		
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
					</div>
				</div>
			</div>
		</div>		
		<div id="loading-modal" class="modal" data-backdrop="static">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Aguarde! Processando seus dados...</h5>
					</div>
					<div class="modal-body">
						<p id="alert-content" style="text-align: center;">
						<img src="img/loading.gif" border="0"><br />
						Sua requisição foi enviada e está sendo processada pelo nosso sistema! Aguarde alguns instantes....
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal Info -->
		<div class="modal modal-default modal-info fade" id="info" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-2x fa-info-circle"></i></h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<h3 class="modal-title" id="exampleModalLabel">Atenção, cartoleiro!</h3>
		      	<p class="modal-message">O Jogo entre Santos x Vasco, da 3º rodada, será apenas em julho. Portanto, não valerá para o Cartola FC. </p>
		      </div>		      
		    </div>
		  </div>
		</div>

		<!-- Modal Resumo Rodada -->
		<div class="modal modal-default modal-resumo fade" id="res-rodada" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-2x fa-bar-chart" aria-hidden="true"></i></h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<div class="row">
			      	<div class="col-sm-12">
			      		<h3 class="modal-title" id="exampleModalLabel">Resumo da Rodada 10</h3>		
			      	</div>
			      	<div class="col-sm-6">
			      		<div class="row">			      		
				      		<div class="col-sm-12">
				      			<p class="modal-title-res">Maior Pontuador</p>	
				      		</div>			      		
			      			<div class="col-sm-2 img-center">
			      				<img src="img/escudos/boleanosfc.png">	
			      			</div>
			      			<div class="col-sm-10">
			      				<p><span class="modal-time">Boleanos FC</span><br />
			      				<strong class="modal-pts">115.63</strong>pts</p>
			      			</div>			      			
			      		</div>
			      	</div>
		      	    <div class="col-sm-6">
		      	    	<div class="row">			      		
				      		<div class="col-sm-12">
				      			<p class="modal-title-res">Menor Pontuador</p>	
				      		</div>			      		
			      			<div class="col-sm-2 img-center">
			      				<img src="img/escudos/hasdrubalf.c.png">	
			      			</div>
			      			<div class="col-sm-10">
			      				<p><span class="modal-time menor">Hasdrubal FC</span><br />
			      				<strong class="modal-pts">25.61</strong>pts</p>
			      			</div>			      			
			      		</div>
		      	    </div>

		      	    <div class="col-sm-6">
			      		<div class="row">			      		
				      		<div class="col-sm-12">
				      			<p class="modal-title-res">Melhor Jogador</p>	
				      		</div>			      		
			      			<div class="col-sm-2 img-center">
			      				<img src="https://s.glbimg.com/es/sde/f/2018/03/20/c125fa08820e1bbf4a2640e7108b05d2_80x80.png" style="height: 30px; width: 30px;">	
			      			</div>
			      			<div class="col-sm-10">
			      				<p><span class="modal-time">Rodriguinho</span><br />
			      				<strong class="modal-pts">26.85</strong>pts</p>
			      			</div>			      			
			      		</div>
			      	</div>

			      	<div class="col-sm-6">
			      		<div class="row">			      		
				      		<div class="col-sm-12">
				      			<p class="modal-title-res">Pior Jogador</p>	
				      		</div>			      		
			      			<div class="col-sm-2 img-center">
			      				<img src="https://s.glbimg.com/es/sde/f/2018/06/26/a77b90cda4d9d26c34f44befcf3a4f6d_80x80.png" style="height: 30px; width: 30px;">	
			      			</div>
			      			<div class="col-sm-10">
			      				<p><span class="modal-time menor">Danilo Avelar</span><br />
			      				<strong class="modal-pts">-8.65</strong>pts</p>
			      			</div>			      			
			      		</div>
			      	</div> 
			      	<div class="modal-footer">			      				      		
			      		<div class="col-sm-3">
			      			<img src="img/logo-ts.png" style="width: 100px;">
			      		</div>
			      		<div class="col-sm-9">
			      			<h1 class="headline-empresa-modal">Trabalho Seguro Treinamentos e Serviços</h1>
							<p class="info-patr">Waner Luis Gomide <br />
							(19) 99888-51741 / (19) 4101-0288</p>
							<p class="site-patr"><a href="http://www.trabalhosegurots.com.br" target="_blank">www.trabalhosegurots.com.br</a></p>
			      		</div>
			      	</div>
		      	</div> 	
		      </div>		      
		    </div>
		  </div>
		</div>
		<script src="js/main.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/app.js" type="text/javascript" charset="utf-8"></script>		
		<script src='js/moment.min.js' type="text/javascript" charset="utf-8"></script>
		<script src='js/fullcalendar.min.js' type="text/javascript" charset="utf-8"></script>
		<script src='js/pt-br.js' type="text/javascript" charset="utf-8"></script>
		<script src="js/textext.core.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/textext.plugin.autocomplete.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/textext.plugin.ajax.js" type="text/javascript" charset="utf-8"></script>
 		<script src="js/jquery.tablesorter.min.js" type="text/javascript"></script>
 		<script>
 			$(function() {
				$('[data-toggle="tooltip"]').tooltip();
			});
 		</script>
		<?php if($conn) $conn->close(); ob_end_flush(); ob_clean(); ?>
	</body>
</html>