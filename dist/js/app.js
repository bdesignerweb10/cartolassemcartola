function getRandomColor(){for(var a="0123456789ABCDEF".split(""),e="#",t=0;t<6;t++)e+=a[Math.floor(16*Math.random())];return e}$(function(){$("html, body").on("click",function(a){a.target==document.documentElement&&$("html").removeClass("open-sidebar")}),$(".js-open-sidebar").on("click",function(){$("html").addClass("open-sidebar")}),$("#regulamento").on("click",function(){this.checked?($("#btn-inscricao").removeAttr("disabled"),$("#btn-inscricao").removeClass("disabled")):($("#btn-inscricao").attr("disabled"),$("#btn-inscricao").addClass("disabled"))}),$("#pag-maos").on("click",function(){$("#valor").val("R$ 30,00")}),$("#pag-banco").on("click",function(){$("#valor").val("R$ 30,00")}),$("#pag-pagseguro").on("click",function(){$("#valor").val("R$ 35,00")}),$("#form-login").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=login",data:$("#form-login").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?e.href.length>0?window.location.href=e.href:window.location.href="index.php":($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),"12010"==e.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria.php"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-esqueceu-senha").click(function(a){a.preventDefault(),$(".mainlogin").hide(),$(".mainform").show()}),$("#btn-recuperar-senha").click(function(a){a.preventDefault(),a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=reset",data:$("#form-recuperar").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#alert-title").html("Solicitação enviada com sucesso!"),$("#alert-content").html("Sua requisição para resetar sua senha foi realizada com sucesso. Aguarde o e-mail com as informações! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#form-provisoria").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.provisoria.php",data:$("#form-provisoria").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#alert-title").html("Senha alterada com sucesso!"),$("#alert-content").html("Sua senha foi alterada definitivamente com sucesso! Ao fechar a mensagem você será redirecionado para o site!"),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.href="index.php"})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-voltar-inscricao").click(function(a){a.preventDefault(),$(".premain").hide(),$(".inscmain").show()}),$("#form-inscricao").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.inscricao.php",data:$("#form-inscricao").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?$(".premain").show(function(){$(".inscmain").hide(),$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#time").val(""),$('input[name="forma-pagto"]').prop("checked",!1),$("#regulamento").prop("checked",!1)}):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),-1!==window.location.pathname.indexOf("index.php")&&($("#destaques-rodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=destaques-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#destaques-rodada .card-block tbody").html(""),e.succeed?(e.list.length>0?$.each(e.list,function(a,e){$("#destaques-rodada .card-block tbody").append('<tr class="bg-success"><th scope="row" class="table-title">'+e.posicao+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+e.pontuacao.toFixed(2)+"</td></tr>")}):$("#destaques-rodada .card-block tbody").append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#destaques-rodada .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#destaques-rodada footer").fadeIn("slow")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#destaques-rodada .card-block").hide(),$("#destaques-rodada footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#destaques-rodada .card-block").hide(),$("#destaques-rodada footer").hide(),$("#loading").remove()}}}),$("#desempenho-rodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#desempenho-rodada .card-block tbody").html(""),e.succeed){if(e.series.length>0&&e.series[0].data&&e.series[0].data.length>0){$("#desempenho-rodada .card-block").append('<canvas id="chart-desempenho-rodada"></canvas>'),$.each(e.series,function(a,e){var t=getRandomColor();e.backgroundColor=t,e.borderColor=t});new Chart($("#chart-desempenho-rodada"),{type:"line",data:{labels:e.labels,datasets:e.series},options:{responsive:!0,hoverMode:"label",stacked:!1,scales:{xAxes:[{display:!1,gridLines:{offsetGridLines:!1},ticks:{stepSize:1,callback:function(a,e,t){return"Rodada "+a}}}],yAxes:[{labelString:"Posição na Liga",ticks:{reverse:!0,stepSize:1,callback:function(a,e,t){return a+"º"}}}]},legend:{position:"bottom"},tooltips:{callbacks:{label:function(a,e){var t=e.datasets[a.datasetIndex].label||"";return t&&(t+=" - "),t+=a.yLabel+"º lugar"}}}}})}else $("#desempenho-rodada .card-block").append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#desempenho-rodada .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#desempenho-rodada footer").fadeIn("slow")}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#desempenho-rodada .card-block").hide(),$("#desempenho-rodada footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-rodada .card-block").hide(),$("#desempenho-rodada footer").hide(),$("#loading").remove()}}}),$("#desempenho-geral").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-geral&limit=8",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#desempenho-geral .card-block tbody").html(""),e.succeed?(e.list.length>0?$.each(e.list,function(a,e){var t="bg-table";a<=6&&(t="bg-success"),$("#desempenho-geral .card-block tbody").append('<tr class="'+t+'"><th scope="row" class="table-title">'+e.posicao+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+e.pontuacao.toFixed(2)+"</td><td>"+e.variacao+"</td></tr>")}):$("#desempenho-geral .card-block tbody").append('<tr class="bg-table"><td colspan="5" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#desempenho-geral .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#desempenho-geral footer").fadeIn("slow")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#desempenho-geral .card-block").hide(),$("#desempenho-geral footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-geral .card-block").hide(),$("#desempenho-geral footer").hide(),$("#loading").remove()}}}),$("#mata-mata-andamento").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=mata-mata-andamento",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#mata-mata-andamento .card-block tbody").html(""),e.succeed?(e.list.length>0?$.each(e.list,function(a,e){$("#mata-mata-andamento .card-block").append('<div class="'+e.cor_fase+' text-white"><i class="fa fa-trophy"></i> '+e.nome+" - "+e.fase+"</div>")}):$("#mata-mata-andamento .card-block").append('<div class="bg-secondary center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$("#mata-mata-andamento .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#mata-mata-andamento footer").fadeIn("slow")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#mata-mata-andamento .card-block").hide(),$("#mata-mata-andamento footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#mata-mata-andamento .card-block").hide(),$("#mata-mata-andamento footer").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("destaques.php")&&($("#destaques").append('<div class="col-12" id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.destaques.php",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.list.length>0){var t="",o=0;$.each(e.list,function(a,e){t!=e.rodada&&($("#destaques").append('<div class="col-sm-4"><div class="card"><div class="card-header"><header><h2 class="card-title card-destaque">Destaques da '+e.rodada+'º rodada</h2></header></div><div class="card-block"><table class="table table-responsive liga-csc"><thead><tr class="bg-warning"><th class="table-title">#</th><th class="table-title"></th><th class="table-title">Time</th><th class="table-title">Pontos</th></tr></thead><tbody id="body_'+e.rodada+'">'),t=e.rodada,o=0),o<4&&$("#body_"+e.rodada).append('<tr class="bg-success"><th scope="row" class="table-title">'+e.posicao+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+e.pontuacao+"</td></tr>"),o++})}else $("#destaques").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$("#destaques .col-sm-4").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#destaques .col-sm-4").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#destaques .col-sm-4").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("liga.php")&&($("#desempenho-liga").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-geral&limit=8",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#desempenho-liga .card-block tbody").html(""),e.succeed){var t=e.list.length-4;e.list.length>0?$.each(e.list,function(a,e){var o="bg-table";a<=6&&(o="bg-success"),a>6&&a>=t&&(o="bg-danger"),$("#desempenho-liga .card-block tbody").append('<tr class="'+o+'"><th scope="row" class="table-title">'+e.posicao+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+e.pontuacao.toFixed(2)+"</td><td>"+e.pont_ult_rodada.toFixed(2)+"</td><td>"+e.variacao+"</td></tr>")}):$("#desempenho-liga .card-block tbody").append('<tr class="bg-table"><td colspan="6" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading").fadeOut("fast",function(){$("#desempenho-liga .card-block").fadeIn("slow"),$("#desempenho-liga footer").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#desempenho-liga .card-block").hide(),$("#desempenho-liga footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-liga .card-block").hide(),$("#desempenho-liga footer").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("mata_mata.php")&&($("#mata-mata").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.mata_mata.php?act=mata-mata",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.list.length>0){var t="";$.each(e.list,function(a,e){t!=e.fase&&($("#mata-mata").append('<div class="'+e.cor_fase+' text-white"><i class="fa fa-trophy"></i> Mata Mata - '+e.fase+'</div><div class="row" id="body_'+e.cor_fase+'">'),t=e.fase),$("#body_"+e.cor_fase).append('<div class="col-sm-4 mata-and"><a href="#" class="open-confrontos" data-id="'+e.id+'"><img src="img/'+e.imagem+'" class="rounded img-fluid" alt="Mata Mata '+e.fase+'"><h2 class="headline">'+e.nome+"</h2></a></div>")})}else $("#mata-mata").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$("#mata-mata .bg-info").fadeIn("slow"),$("#mata-mata .bg-success").fadeIn("slow"),$("#mata-mata .bg-danger").fadeIn("slow"),$("#mata-mata .mata-and").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#mata-mata .bg-info").hide(),$("#mata-mata .bg-success").hide(),$("#mata-mata .bg-danger").hide(),$("#mata-mata .mata-and").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#mata-mata .bg-info").hide(),$("#mata-mata .bg-success").hide(),$("#mata-mata .bg-danger").hide(),$("#mata-mata .mata-and").hide(),$("#loading").remove()}}}),$("body").on("click",".open-confrontos",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var e=$(this).data("id");$.ajax({type:"POST",url:"acts/acts.mata_mata.php?act=confrontos&idmatamata="+e,success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#loading-modal").modal("hide"),e.succeed?($("#nome-mata-mata").html(e.mata_mata),e.list.length>0?($.each(e.list,function(a,e){$("#nav-niveis").append('<li class="nav-item"><a class="nav-link'+e.active+'" data-toggle="tab" href="#nivel'+e.nivel+'">'+e.fase+"</a></li>"),$("#nav-confrontos").append('<div id="nivel'+e.nivel+'" class="tab-pane'+e.active+'"><h4 class="confrontos">Confrontos</h4><div class="row" id="cards'+e.nivel+'" >'),$.each(e.confrontos,function(a,t){var o="Chave "+t.chave;1==e.nivel&&(o=1==t.chave?"<b>Final</b>":"3º lugar"),$("#cards"+e.nivel).append('<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6"><div class="card"><p class="chaveamento">'+o+'</p><div class="card-block confronto"><div class="col-sm-3"><img src="img/escudos/'+t.escudo_time_1+'" class="img-fluid center-block"><p class="clube">'+t.time_1+'</p><p class="pontuacao">'+t.pontuacao_time_1+'</p></div><p class="vs">X</p><div class="col-sm-3"><img src="img/escudos/'+t.escudo_time_2+'" class="img-fluid center-block"><p class="clube">'+t.time_2+'</p><p class="pontuacao">'+t.pontuacao_time_2+"</p></div></div></div>")})}),0==$("#nav-niveis a.active").length&&$("#nav-niveis a.nav-link").first().click()):$("#nao-ha-dados").show(),$("#mainmata").fadeOut("fast",function(){$("#mainconfrontos").fadeIn("slow")})):($("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#voltar-mata-mata").click(function(a){a.preventDefault(),$("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#mainconfrontos").fadeOut("fast",function(){$("#mainmata").fadeIn("slow")})})),-1!==window.location.pathname.indexOf("rodada.php")&&($("#pontrodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.rodada.php?act=rodada-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#pontrodada .table-responsive tbody").html(""),e.succeed?(e.linhas.length>0?($("#pontrodada .table-responsive thead").append(e.cabecalho),$.each(e.linhas,function(a,e){$("#pontrodada .table-responsive tbody").append(e.linha)})):$("#pontrodada .table-responsive tbody").append('<tr class="bg-table"><td colspan="42" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading").fadeOut("fast",function(){$("#pontrodada .table-responsive").fadeIn("slow")})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#pontrodada .table-responsive").hide(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#pontrodada .table-responsive").hide(),$("#loading").remove()}}}),$("#grafico-rodada").append('<div id="loading-grafico"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.rodada.php?act=grafico-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#grafico-rodada .card-block tbody").html(""),e.succeed){if(e.series.length>0&&e.series[0].data&&e.series[0].data.length>0){$("#grafico-rodada .card-block").append('<canvas id="chart-grafico-rodada"></canvas>'),$.each(e.series,function(a,e){var t=getRandomColor();e.backgroundColor=t,e.borderColor=t});new Chart($("#chart-grafico-rodada"),{type:"line",data:{labels:e.labels,datasets:e.series},options:{responsive:!0,hoverMode:"label",stacked:!1,scales:{xAxes:[{display:!1,gridLines:{offsetGridLines:!1},ticks:{stepSize:1,callback:function(a,e,t){return"Rodada "+a}}}],yAxes:[{labelString:"Posição na Liga",ticks:{reverse:!0,stepSize:1,callback:function(a,e,t){return a+"º"}}}]},legend:{position:"bottom"},tooltips:{callbacks:{label:function(a,e){var t=e.datasets[a.datasetIndex].label||"";return t&&(t+=" - "),t+=a.yLabel+"º lugar"}}}}})}else $("#grafico-rodada .card-block").append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#grafico-rodada .card-block").fadeIn("slow",function(){$("#loading-grafico").fadeOut(),$("#loading-grafico").remove()})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#grafico-rodada .card-block").hide(),$("#loading-grafico").remove()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#grafico-rodada .card-block").hide(),$("#loading-grafico").remove()}}})),-1!==window.location.pathname.indexOf("eventos.php")&&($("#eventos-container").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.eventos.php?act=listagem-eventos",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.linhas.length>0){var t="";t=e.confirmado?'<a href="#" onclick="return false;" class="btn btn-info" disabled><i class="fa fa-check"></i> Preseça Confirmada!</a>':'<a href="#" data-id="'+e.id+'" class="btn btn-success btn-confirmar-presença"><i class="fa fa-check"></i> Confirmar Presença</a>',$("#eventos-container").append('<div class="col-sm-12 col-md-6 col-lg-4 col-xl-4 eventos-card"><div class="card"><div class="card-block"><h4 class="card-title">'+e.evento+'</h4><h6 class="card-subtitle mb-2 text-muted">'+e.data+"</h6><p>"+e.local+'</p><p class="card-text">'+e.descricao+"</p>"+t+"</div></div></div>")}else $("#eventos-container").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$(".eventos-card").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#eventos-card").hide(),$("#loading").remove()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#eventos-card").hide(),$("#loading").remove()}}}))}),function(a){"use strict";function e(e){return e.is('[type="checkbox"]')?e.prop("checked"):e.is('[type="radio"]')?!!a('[name="'+e.attr("name")+'"]:checked').length:e.is("select[multiple]")?(e.val()||[]).length:e.val()}function t(e){return this.each(function(){var t=a(this),r=a.extend({},o.DEFAULTS,t.data(),"object"==typeof e&&e),s=t.data("bs.validator");(s||"destroy"!=e)&&(s||t.data("bs.validator",s=new o(this,r)),"string"==typeof e&&s[e]())})}var o=function(t,r){this.options=r,this.validators=a.extend({},o.VALIDATORS,r.custom),this.$element=a(t),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var t=a(this),o=t.attr("data-match");a(o).on("input.bs.validator",function(){e(t)&&t.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return e(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};o.VERSION="0.11.9",o.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',o.FOCUS_OFFSET=20,o.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},o.VALIDATORS={native:function(a){var e=a[0];return e.checkValidity?!e.checkValidity()&&!e.validity.valid&&(e.validationMessage||"error!"):void 0},match:function(e){var t=e.attr("data-match");return e.val()!==a(t).val()&&o.DEFAULTS.errors.match},minlength:function(a){var e=a.attr("data-minlength");return a.val().length<e&&o.DEFAULTS.errors.minlength}},o.prototype.update=function(){var e=this;return this.$inputs=this.$element.find(o.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){e.clearErrors(a(this))})),this.toggleSubmit(),this},o.prototype.onInput=function(e){var t=this,o=a(e.target),r="focusout"!==e.type;this.$inputs.is(o)&&this.validateInput(o,r).done(function(){t.toggleSubmit()})},o.prototype.validateInput=function(t,o){var r=(e(t),t.data("bs.validator.errors"));t.is('[type="radio"]')&&(t=this.$element.find('input[name="'+t.attr("name")+'"]'));var s=a.Event("validate.bs.validator",{relatedTarget:t[0]});if(this.$element.trigger(s),!s.isDefaultPrevented()){var n=this;return this.runValidators(t).done(function(e){t.data("bs.validator.errors",e),e.length?o?n.defer(t,n.showErrors):n.showErrors(t):n.clearErrors(t),r&&e.toString()===r.toString()||(s=e.length?a.Event("invalid.bs.validator",{relatedTarget:t[0],detail:e}):a.Event("valid.bs.validator",{relatedTarget:t[0],detail:r}),n.$element.trigger(s)),n.toggleSubmit(),n.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:t[0]}))})}},o.prototype.runValidators=function(t){function o(a){return t.attr("data-"+a+"-error")}function r(){var a=t[0].validity;return a.typeMismatch?t.attr("data-type-error"):a.patternMismatch?t.attr("data-pattern-error"):a.stepMismatch?t.attr("data-step-error"):a.rangeOverflow?t.attr("data-max-error"):a.rangeUnderflow?t.attr("data-min-error"):a.valueMissing?t.attr("data-required-error"):null}function s(){return t.attr("data-error")}function n(a){return o(a)||r()||s()}var i=[],d=a.Deferred();return t.data("bs.validator.deferred")&&t.data("bs.validator.deferred").reject(),t.data("bs.validator.deferred",d),a.each(this.validators,a.proxy(function(a,o){var r=null;!e(t)&&!t.attr("required")||void 0===t.attr("data-"+a)&&"native"!=a||!(r=o.call(this,t))||(r=n(a)||r,!~i.indexOf(r)&&i.push(r))},this)),!i.length&&e(t)&&t.attr("data-remote")?this.defer(t,function(){var o={};o[t.attr("name")]=e(t),a.get(t.attr("data-remote"),o).fail(function(a,e,t){i.push(n("remote")||t)}).always(function(){d.resolve(i)})}):d.resolve(i),d.promise()},o.prototype.validate=function(){var e=this;return a.when(this.$inputs.map(function(){return e.validateInput(a(this),!1)})).then(function(){e.toggleSubmit(),e.focusError()}),this},o.prototype.focusError=function(){if(this.options.focus){var e=this.$element.find(".has-error :input:first");0!==e.length&&(a("html, body").animate({scrollTop:e.offset().top-o.FOCUS_OFFSET},250),e.focus())}},o.prototype.showErrors=function(e){var t=this.options.html?"html":"text",o=e.data("bs.validator.errors"),r=e.closest(".form-group"),s=r.find(".help-block.with-errors"),n=r.find(".form-control-feedback");o.length&&(o=a("<ul/>").addClass("list-unstyled").append(a.map(o,function(e){return a("<li/>")[t](e)})),void 0===s.data("bs.validator.originalContent")&&s.data("bs.validator.originalContent",s.html()),s.empty().append(o),r.addClass("has-error has-danger"),r.hasClass("has-feedback")&&n.removeClass(this.options.feedback.success)&&n.addClass(this.options.feedback.error)&&r.removeClass("has-success"))},o.prototype.clearErrors=function(a){var t=a.closest(".form-group"),o=t.find(".help-block.with-errors"),r=t.find(".form-control-feedback");o.html(o.data("bs.validator.originalContent")),t.removeClass("has-error has-danger has-success"),t.hasClass("has-feedback")&&r.removeClass(this.options.feedback.error)&&r.removeClass(this.options.feedback.success)&&e(a)&&r.addClass(this.options.feedback.success)&&t.addClass("has-success")},o.prototype.hasErrors=function(){function e(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(e).length},o.prototype.isIncomplete=function(){function t(){var t=e(a(this));return!("string"==typeof t?a.trim(t):t)}return!!this.$inputs.filter("[required]").filter(t).length},o.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},o.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},o.prototype.defer=function(e,t){return t=a.proxy(t,this,e),this.options.delay?(window.clearTimeout(e.data("bs.validator.timeout")),void e.data("bs.validator.timeout",window.setTimeout(t,this.options.delay))):t()},o.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var e=a(this),t=e.data("bs.validator.timeout");window.clearTimeout(t)&&e.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var e=a(this),t=e.data("bs.validator.originalContent");e.removeData("bs.validator.originalContent").html(t)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},o.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var r=a.fn.validator;a.fn.validator=t,a.fn.validator.Constructor=o,a.fn.validator.noConflict=function(){return a.fn.validator=r,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var e=a(this);t.call(e,e.data())})})}(jQuery);