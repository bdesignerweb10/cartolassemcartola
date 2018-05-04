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
		      	<p class="modal-message">O Jogo entre Santos x Vasco, da rodada #3, será apenas em julho. Portanto, não valerá para o Cartola FC. </p>
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
		<?php if($conn) $conn->close(); ob_end_flush(); ob_clean(); ?>
	</body>
</html>