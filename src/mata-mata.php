<?php
require_once('header.php');
?>
<main id="mainmata">
	<div id="mata-mata" class="container">
		<div class="row capa-matamata"></div>
	</div><!-- container -->
</main>
<main id="mainconfrontos">	
	<div class="container">
		<div class="row nome-mata">
			<div class="col-sm-6">
				<h2 class="headline" id="nome-mata-mata"></h2>
			</div>	
			<div class="col-sm-6">
				<div class="btn btn-info vol-mata" id="voltar-mata-mata"><a href="#"><i class='fa fa-arrow-left'></i>&nbsp;&nbsp;&nbsp;Voltar para a lista de mata-mata</div>
			</div>	
		</div>	
		<div class="row">
			<div class="col-12">
				<ul class="nav nav-pills nav-fill nav-tabs" id="nav-niveis">
				</ul>
				<div class="tab-content" id="nav-confrontos">
  				</div><!-- tab-content -->
			</div><!-- col-sm-12 -->
		</div><!-- row -->
		<div class="row" id="nao-ha-dados">
			<div class="col-12 center infor">
				<i class="fa fa-thumbs-down fa-2x"></i><br /><br />
				Não há dados a serem exibidos aqui.
			</div>
		</div>
	</div>
</main>
<?php
require_once('footer.php');
?>