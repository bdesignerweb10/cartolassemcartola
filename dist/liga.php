<?php
require_once('header.php');
?> <div id="fb-root"></div><script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.12';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script><main><div class="container"><div class="row capa-liga"><div class="col-sm-12"></div></div><div class="col-sm 10"><article><div id="desempenho-liga" class="card"><div class="card-header"><header><h2 class="card-title">Liga Cartoleirão - Trabalho Seguro TS</h2></header></div><!-- card-header --><div class="card-block"><div class="table-responsive"><table class="table liga-csc"><thead><tr class="bg-warning"><th class="table-title">#</th><th class="table-title"></th><th class="table-title">Time</th><th class="table-title">Pontos no Campeonato</th><th class="table-title">Pontos na última rodada</th><th class="table-title">Variação</th></tr></thead><tbody></tbody></table></div><!-- table-responsive --></div><!-- card-block --><footer><div class="card-footer"><ul class="nav"><li class="nav-item"><span class="badge premiacao badge-bottom"></span> Zona de Premiação</li><li class="nav-item"><span class="badge neutro badge-bottom"></span> Zona Neutra</li><li class="nav-item"><span class="badge rebaixamento badge-bottom"></span> Zona de Rebaixamento</li><li class="nav-item"><span class="badge myteam badge-bottom"></span> Meu time</li><li class="nav-item"><img class="badge-bottom" src="img/medal.png"> Maior pontuador em uma única rodada</li></ul></div><!-- card-footer --></footer></div><!-- card --> <a href="pontuacao.php" class="btn btn-primary"><i class="fa fa-bar-chart"></i>	Pontuação do Cartola</a></article><!--<div class="row">
					<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3 offset-sm-6 offset-md-6 offset-lg-9 offset-xl-9" style="margin-bottom: 20px;">
						<div class="fb-share-button" data-href="http://www.cartolassemcartola.com.br/liga" data-layout="button_count" data-size="large" data-mobile-iframe="true"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.cartolassemcartola.com.br%2Fliga&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Compartilhar</a></div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="fb-comments" data-href="http://www.cartolassemcarola.com.br" data-numposts="10"></div>
					</div>
				</div>--></div></div></main> <?php
	require_once('footer.php');
?>