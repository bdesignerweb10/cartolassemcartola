function getRandomColor(){for(var a="0123456789ABCDEF".split(""),t="#",e=0;e<6;e++)t+=a[Math.floor(16*Math.random())];return t}$(function(){$("html, body").on("click",function(a){a.target==document.documentElement&&$("html").removeClass("open-sidebar")}),$(".js-open-sidebar").on("click",function(){$("html").addClass("open-sidebar")}),$("#regulamento").on("click",function(){this.checked?($("#btn-inscricao").removeAttr("disabled"),$("#btn-inscricao").removeClass("disabled")):($("#btn-inscricao").attr("disabled"),$("#btn-inscricao").addClass("disabled"))}),$("#pag-maos").on("click",function(){$("#valor").val("R$ 30,00")}),$("#pag-banco").on("click",function(){$("#valor").val("R$ 30,00")}),$("#pag-pagseguro").on("click",function(){$("#valor").val("R$ 35,00")}),$("#form-login").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=login",data:$("#form-login").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?t.href.length>0?window.location.href=t.href:window.location.href="index.php":($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),"12010"==t.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria.php"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-esqueceu-senha").click(function(a){a.preventDefault(),$(".mainlogin").hide(),$(".mainform").show()}),$("#btn-recuperar-senha").click(function(a){a.preventDefault(),a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=reset",data:$("#form-recuperar").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?($("#alert-title").html("Solicitação enviada com sucesso!"),$("#alert-content").html("Sua requisição para resetar sua senha foi realizada com sucesso. Aguarde o e-mail com as informações! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#form-provisoria").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.provisoria.php",data:$("#form-provisoria").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?($("#alert-title").html("Senha alterada com sucesso!"),$("#alert-content").html("Sua senha foi alterada definitivamente com sucesso! Ao fechar a mensagem você será redirecionado para o site!"),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.href="index.php"})):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-voltar-inscricao").click(function(a){a.preventDefault(),$(".premain").hide(),$(".inscmain").show()}),$("#form-inscricao").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.inscricao.php",data:$("#form-inscricao").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?$(".premain").show(function(){$(".inscmain").hide(),$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#time").val(""),$('input[name="forma-pagto"]').prop("checked",!1),$("#regulamento").prop("checked",!1)}):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),-1!==window.location.pathname.indexOf("index.php")&&($("#destaques-rodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=destaques-rodada",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#destaques-rodada .card-block tbody").html(""),t.succeed?(t.list.length>0?$.each(t.list,function(a,t){$("#destaques-rodada .card-block tbody").append('<tr class="bg-success"><th scope="row" class="table-title">'+t.posicao+'º</th><td><img src="img/escudos/'+t.escudo+'" class="img-fluid"></td><td>'+t.time+"</td><td>"+t.pontuacao.toFixed(2)+"</td></tr>")}):$("#destaques-rodada .card-block tbody").append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#destaques-rodada .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#destaques-rodada footer").fadeIn("slow")):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#destaques-rodada .card-block").hide(),$("#destaques-rodada footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#destaques-rodada .card-block").hide(),$("#destaques-rodada footer").hide(),$("#loading").remove()}}}),$("#desempenho-rodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-rodada",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#desempenho-rodada .card-block tbody").html(""),t.succeed){if(t.series.length>0&&t.series[0].data&&t.series[0].data.length>0){$("#desempenho-rodada .card-block").append('<canvas id="chart-desempenho-rodada"></canvas>'),$.each(t.series,function(a,t){var e=getRandomColor();t.backgroundColor=e,t.borderColor=e});new Chart($("#chart-desempenho-rodada"),{type:"line",data:{labels:t.labels,datasets:t.series},options:{responsive:!0,hoverMode:"label",stacked:!1,scales:{xAxes:[{display:!1,gridLines:{offsetGridLines:!1},ticks:{callback:function(a,t,e){return"Rodada "+a}}}],yAxes:[{labelString:"Posição na Liga",ticks:{reverse:!0,callback:function(a,t,e){return a+"º"}}}]},legend:{position:"bottom"},tooltips:{callbacks:{label:function(a,t){var e=t.datasets[a.datasetIndex].label||"";return e&&(e+=" - "),e+=a.yLabel+"º lugar"}}}}})}else $("#desempenho-rodada .card-block").append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#desempenho-rodada .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#desempenho-rodada footer").fadeIn("slow")}else $("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#desempenho-rodada .card-block").hide(),$("#desempenho-rodada footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-rodada .card-block").hide(),$("#desempenho-rodada footer").hide(),$("#loading").remove()}}}),$("#desempenho-geral").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-geral&limit=8",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#desempenho-geral .card-block tbody").html(""),t.succeed?(t.list.length>0?$.each(t.list,function(a,t){var e="bg-table";a<=6&&(e="bg-success"),$("#desempenho-geral .card-block tbody").append('<tr class="'+e+'"><th scope="row" class="table-title">'+t.posicao+'º</th><td><img src="img/escudos/'+t.escudo+'" class="img-fluid"></td><td>'+t.time+"</td><td>"+t.pontuacao.toFixed(2)+"</td><td>"+t.variacao+"</td></tr>")}):$("#desempenho-geral .card-block tbody").append('<tr class="bg-table"><td colspan="5" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#desempenho-geral .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#desempenho-geral footer").fadeIn("slow")):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#desempenho-geral .card-block").hide(),$("#desempenho-geral footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-geral .card-block").hide(),$("#desempenho-geral footer").hide(),$("#loading").remove()}}}),$("#mata-mata-andamento").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=mata-mata-andamento",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#mata-mata-andamento .card-block tbody").html(""),t.succeed?(t.list.length>0?$.each(t.list,function(a,t){$("#mata-mata-andamento .card-block").append('<div class="'+t.cor_fase+' text-white"><i class="fa fa-trophy"></i> '+t.nome+" - "+t.fase+"</div>")}):$("#mata-mata-andamento .card-block").append('<div class="bg-secondary center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$("#mata-mata-andamento .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#mata-mata-andamento footer").fadeIn("slow")):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#mata-mata-andamento .card-block").hide(),$("#mata-mata-andamento footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#mata-mata-andamento .card-block").hide(),$("#mata-mata-andamento footer").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("destaques.php")&&($("#destaques").append('<div class="col-12" id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.destaques.php",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(t.succeed){if(t.list.length>0){var e="",o=0;$.each(t.list,function(a,t){e!=t.rodada&&($("#destaques").append('<div class="col-sm-4"><div class="card"><div class="card-header"><header><h2 class="card-title card-destaque">Destaques da '+t.rodada+'º rodada</h2></header></div><div class="card-block"><table class="table table-responsive liga-csc"><thead><tr class="bg-warning"><th class="table-title">#</th><th class="table-title"></th><th class="table-title">Time</th><th class="table-title">Pontos</th></tr></thead><tbody id="body_'+t.rodada+'">'),e=t.rodada,o=0),o<4&&$("#body_"+t.rodada).append('<tr class="bg-success"><th scope="row" class="table-title">'+t.posicao+'º</th><td><img src="img/escudos/'+t.escudo+'" class="img-fluid"></td><td>'+t.time+"</td><td>"+t.pontuacao+"</td></tr>"),o++})}else $("#destaques").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$("#destaques .col-sm-4").fadeIn("slow")})}else $("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#destaques .col-sm-4").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#destaques .col-sm-4").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("liga.php")&&($("#desempenho-liga").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-geral&limit=8",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#desempenho-liga .card-block tbody").html(""),t.succeed){var e=t.list.length-4;t.list.length>0?$.each(t.list,function(a,t){var o="bg-table";a<=6&&(o="bg-success"),a>6&&a>=e&&(o="bg-danger"),$("#desempenho-liga .card-block tbody").append('<tr class="'+o+'"><th scope="row" class="table-title">'+t.posicao+'º</th><td><img src="img/escudos/'+t.escudo+'" class="img-fluid"></td><td>'+t.time+"</td><td>"+t.pontuacao.toFixed(2)+"</td><td>"+t.pont_ult_rodada.toFixed(2)+"</td><td>"+t.variacao+"</td></tr>")}):$("#desempenho-liga .card-block tbody").append('<tr class="bg-table"><td colspan="6" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading").fadeOut("fast",function(){$("#desempenho-liga .card-block").fadeIn("slow"),$("#desempenho-liga footer").fadeIn("slow")})}else $("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#desempenho-liga .card-block").hide(),$("#desempenho-liga footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-liga .card-block").hide(),$("#desempenho-liga footer").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("mata-mata.php")&&($("#mata-mata").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.mata_mata.php?act=mata-mata",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(t.succeed){if(t.list.length>0){var e="";$.each(t.list,function(a,t){e!=t.fase&&($("#mata-mata").append('<div class="'+t.cor_fase+' text-white"><i class="fa fa-trophy"></i> Mata Mata - '+t.fase+'</div><div class="row" id="body_'+t.cor_fase+'">'),e=t.fase),$("#body_"+t.cor_fase).append('<div class="col-sm-4 mata-and"><a href="#" class="open-confrontos" data-id="'+t.id+'"><img src="img/'+t.imagem+'" class="rounded img-fluid" alt="Mata Mata '+t.fase+'"><h2 class="headline">'+t.nome+"</h2></a></div>")})}else $("#mata-mata").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$("#mata-mata .bg-info").fadeIn("slow"),$("#mata-mata .bg-success").fadeIn("slow"),$("#mata-mata .bg-danger").fadeIn("slow"),$("#mata-mata .mata-and").fadeIn("slow")})}else $("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#mata-mata .bg-info").hide(),$("#mata-mata .bg-success").hide(),$("#mata-mata .bg-danger").hide(),$("#mata-mata .mata-and").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#mata-mata .bg-info").hide(),$("#mata-mata .bg-success").hide(),$("#mata-mata .bg-danger").hide(),$("#mata-mata .mata-and").hide(),$("#loading").remove()}}}),$("body").on("click",".open-confrontos",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var t=$(this).data("id");$.ajax({type:"POST",url:"acts/acts.mata_mata.php?act=confrontos&idmatamata="+t,success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#loading-modal").modal("hide"),t.succeed?($("#nome-mata-mata").html(t.mata_mata),t.list.length>0?($.each(t.list,function(a,t){$("#nav-niveis").append('<li class="nav-item"><a class="nav-link'+t.active+'" data-toggle="tab" href="#nivel'+t.nivel+'">'+t.fase+"</a></li>"),$("#nav-confrontos").append('<div id="nivel'+t.nivel+'" class="tab-pane'+t.active+'"><h4 class="confrontos">Confrontos</h4><div class="row" id="cards'+t.nivel+'" >'),$.each(t.confrontos,function(a,e){var o="Chave "+e.chave;1==t.nivel&&(o=1==e.chave?"<b>Final</b>":"3º lugar"),$("#cards"+t.nivel).append('<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6"><div class="card"><p class="chaveamento">'+o+'</p><div class="card-block confronto"><div class="col-sm-3"><img src="img/escudos/'+e.escudo_time_1+'" class="img-fluid center-block"><p class="clube">'+e.time_1+'</p><p class="pontuacao">'+e.pontuacao_time_1+'</p></div><p class="vs">X</p><div class="col-sm-3"><img src="img/escudos/'+e.escudo_time_2+'" class="img-fluid center-block"><p class="clube">'+e.time_2+'</p><p class="pontuacao">'+e.pontuacao_time_2+"</p></div></div></div>")})}),0==$("#nav-niveis a.active").length&&$("#nav-niveis a.nav-link").first().click()):$("#nao-ha-dados").show(),$("#mainmata").fadeOut("fast",function(){$("#mainconfrontos").fadeIn("slow")})):($("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"))}catch(a){$("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#voltar-mata-mata").click(function(a){a.preventDefault(),$("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#mainconfrontos").fadeOut("fast",function(){$("#mainmata").fadeIn("slow")})})),window.location.pathname.indexOf("rodada.php")}),function(a){"use strict";function t(t){return t.is('[type="checkbox"]')?t.prop("checked"):t.is('[type="radio"]')?!!a('[name="'+t.attr("name")+'"]:checked').length:t.is("select[multiple]")?(t.val()||[]).length:t.val()}function e(t){return this.each(function(){var e=a(this),r=a.extend({},o.DEFAULTS,e.data(),"object"==typeof t&&t),s=e.data("bs.validator");(s||"destroy"!=t)&&(s||e.data("bs.validator",s=new o(this,r)),"string"==typeof t&&s[t]())})}var o=function(e,r){this.options=r,this.validators=a.extend({},o.VALIDATORS,r.custom),this.$element=a(e),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var e=a(this),o=e.attr("data-match");a(o).on("input.bs.validator",function(){t(e)&&e.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return t(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};o.VERSION="0.11.9",o.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',o.FOCUS_OFFSET=20,o.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},o.VALIDATORS={native:function(a){var t=a[0];return t.checkValidity?!t.checkValidity()&&!t.validity.valid&&(t.validationMessage||"error!"):void 0},match:function(t){var e=t.attr("data-match");return t.val()!==a(e).val()&&o.DEFAULTS.errors.match},minlength:function(a){var t=a.attr("data-minlength");return a.val().length<t&&o.DEFAULTS.errors.minlength}},o.prototype.update=function(){var t=this;return this.$inputs=this.$element.find(o.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){t.clearErrors(a(this))})),this.toggleSubmit(),this},o.prototype.onInput=function(t){var e=this,o=a(t.target),r="focusout"!==t.type;this.$inputs.is(o)&&this.validateInput(o,r).done(function(){e.toggleSubmit()})},o.prototype.validateInput=function(e,o){var r=(t(e),e.data("bs.validator.errors"));e.is('[type="radio"]')&&(e=this.$element.find('input[name="'+e.attr("name")+'"]'));var s=a.Event("validate.bs.validator",{relatedTarget:e[0]});if(this.$element.trigger(s),!s.isDefaultPrevented()){var n=this;return this.runValidators(e).done(function(t){e.data("bs.validator.errors",t),t.length?o?n.defer(e,n.showErrors):n.showErrors(e):n.clearErrors(e),r&&t.toString()===r.toString()||(s=t.length?a.Event("invalid.bs.validator",{relatedTarget:e[0],detail:t}):a.Event("valid.bs.validator",{relatedTarget:e[0],detail:r}),n.$element.trigger(s)),n.toggleSubmit(),n.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:e[0]}))})}},o.prototype.runValidators=function(e){function o(a){return e.attr("data-"+a+"-error")}function r(){var a=e[0].validity;return a.typeMismatch?e.attr("data-type-error"):a.patternMismatch?e.attr("data-pattern-error"):a.stepMismatch?e.attr("data-step-error"):a.rangeOverflow?e.attr("data-max-error"):a.rangeUnderflow?e.attr("data-min-error"):a.valueMissing?e.attr("data-required-error"):null}function s(){return e.attr("data-error")}function n(a){return o(a)||r()||s()}var i=[],l=a.Deferred();return e.data("bs.validator.deferred")&&e.data("bs.validator.deferred").reject(),e.data("bs.validator.deferred",l),a.each(this.validators,a.proxy(function(a,o){var r=null;!t(e)&&!e.attr("required")||void 0===e.attr("data-"+a)&&"native"!=a||!(r=o.call(this,e))||(r=n(a)||r,!~i.indexOf(r)&&i.push(r))},this)),!i.length&&t(e)&&e.attr("data-remote")?this.defer(e,function(){var o={};o[e.attr("name")]=t(e),a.get(e.attr("data-remote"),o).fail(function(a,t,e){i.push(n("remote")||e)}).always(function(){l.resolve(i)})}):l.resolve(i),l.promise()},o.prototype.validate=function(){var t=this;return a.when(this.$inputs.map(function(){return t.validateInput(a(this),!1)})).then(function(){t.toggleSubmit(),t.focusError()}),this},o.prototype.focusError=function(){if(this.options.focus){var t=this.$element.find(".has-error :input:first");0!==t.length&&(a("html, body").animate({scrollTop:t.offset().top-o.FOCUS_OFFSET},250),t.focus())}},o.prototype.showErrors=function(t){var e=this.options.html?"html":"text",o=t.data("bs.validator.errors"),r=t.closest(".form-group"),s=r.find(".help-block.with-errors"),n=r.find(".form-control-feedback");o.length&&(o=a("<ul/>").addClass("list-unstyled").append(a.map(o,function(t){return a("<li/>")[e](t)})),void 0===s.data("bs.validator.originalContent")&&s.data("bs.validator.originalContent",s.html()),s.empty().append(o),r.addClass("has-error has-danger"),r.hasClass("has-feedback")&&n.removeClass(this.options.feedback.success)&&n.addClass(this.options.feedback.error)&&r.removeClass("has-success"))},o.prototype.clearErrors=function(a){var e=a.closest(".form-group"),o=e.find(".help-block.with-errors"),r=e.find(".form-control-feedback");o.html(o.data("bs.validator.originalContent")),e.removeClass("has-error has-danger has-success"),e.hasClass("has-feedback")&&r.removeClass(this.options.feedback.error)&&r.removeClass(this.options.feedback.success)&&t(a)&&r.addClass(this.options.feedback.success)&&e.addClass("has-success")},o.prototype.hasErrors=function(){function t(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(t).length},o.prototype.isIncomplete=function(){function e(){var e=t(a(this));return!("string"==typeof e?a.trim(e):e)}return!!this.$inputs.filter("[required]").filter(e).length},o.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},o.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},o.prototype.defer=function(t,e){return e=a.proxy(e,this,t),this.options.delay?(window.clearTimeout(t.data("bs.validator.timeout")),void t.data("bs.validator.timeout",window.setTimeout(e,this.options.delay))):e()},o.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var t=a(this),e=t.data("bs.validator.timeout");window.clearTimeout(e)&&t.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var t=a(this),e=t.data("bs.validator.originalContent");t.removeData("bs.validator.originalContent").html(e)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},o.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var r=a.fn.validator;a.fn.validator=e,a.fn.validator.Constructor=o,a.fn.validator.noConflict=function(){return a.fn.validator=r,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var t=a(this);e.call(t,t.data())})})}(jQuery);