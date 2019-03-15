function getRandomColor(){for(var a="0123456789ABCDEF".split(""),e="#",t=0;t<6;t++)e+=a[Math.floor(16*Math.random())];return e}function formatDate(a){var e=new Date(a),t=e.getDate(),o=e.getMonth()+1,i=e.getFullYear(),s=e.getHours()<10?"0"+e.getHours():e.getHours(),r=e.getMinutes()<10?"0"+e.getMinutes():e.getMinutes();return t<10&&(t="0"+t),o<10&&(o="0"+o),t+"/"+o+"/"+i+" - "+s+":"+r+"hrs"}function formatBRDate(a){var e=a.getDate(),t=a.getMonth()+1,o=a.getFullYear();return e<10&&(e="0"+e),t<10&&(t="0"+t),isNaN(a.getTime())?"A definir":e+"/"+t+"/"+o}function formatTodayEUDate(){var a=new Date,e=a.getDate(),t=a.getMonth()+1,o=a.getFullYear();return e<10&&(e="0"+e),t<10&&(t="0"+t),isNaN(a.getTime())?"0000-00-00":o+"-"+t+"-"+e}function formatTime(a){var e=a.getHours()<10?"0"+a.getHours():a.getHours(),t=a.getMinutes()<10?"0"+a.getMinutes():a.getMinutes();return isNaN(a.getTime())?"--:--":e+":"+t}function weekDay(a){var e=new Array(7);return e[0]="DOM",e[1]="SEG",e[2]="TER",e[3]="QUA",e[4]="QUI",e[5]="SEX",e[6]="SAB",isNaN(a)?"---":e[a]}function setCookie(a,e,t){var o,i;i=new Date,i.setTime(i.getTime()+24*t*60*60*1e3),o=i.toUTCString(),document.cookie=a+"="+e+"; expires="+o+"; path=/"}function getCookie(a){var e=document.cookie,t=a+"=",o=e.indexOf("; "+t);if(-1==o){if(0!=(o=e.indexOf(t)))return null}else o+=2;var i=e.indexOf(";",o);return-1==i&&(i=e.length),unescape(e.substring(o+t.length,i))}function deleteCookie(a){getCookie(a)&&(document.cookie=a+"=; expires=Thu, 01-Jan-70 00:00:01 GMT")}function deleteAllCookies(){for(var a=document.cookie.split(";"),e=0;e<a.length;e++){var t=a[e],o=t.indexOf("="),i=o>-1?t.substr(0,o):t;document.cookie=i+"=;expires=Thu, 01 Jan 1970 00:00:00 GMT"}}$(function(){function a(a){var e=a.find("#nome_time").val(),t=new FormData;t.append("nome_time",e),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.inscricao.php?act=dados_time",data:t,processData:!1,contentType:!1,timeout:0,success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#nome").val(e.nome),$("#email").val(e.email),$("#telefone").val(e.telefone),$("#id_time").val(e.id),$("#loading-modal").modal("hide")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#id_time").val(""),$("#loading-modal").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#id_time").val(""),$("#loading-modal").remove()}}})}function e(a){$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.clube.php?act=historia&idclube="+a,success:function(e){try{$("#loading-modal").modal("hide");var t=JSON.parse(e.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?($(".brasao").prop("src","img/escudos/clube/"+t.escudo),$(".nome_time").html(t.nome_time),$(".ano_fundacao").html(t.ano_fundacao),$(".nome_presidente").html(t.nome_presidente),$(".text-hitoria").html(t.historia),$(".dropdown-temporada").html(""),t.list_temp.length>0&&$.each(t.list_temp,function(e,t){if(t.is_actual)$(".dropdown-temporada").append('<div class="dropdown-divider"></div><a class="dropdown-item disabled" href="#">'+t.temporada+"</a>");else{var o="";0==e&&(o='role="tab"'),$(".dropdown-temporada").append('<a class="dropdown-item" data-toggle="tab" href="#a'+t.id+'" data-time-id="'+a+'" '+o+">"+t.temporada+"</a>"),$(".tab-content").append('<div class="tab-pane" id="a'+t.id+'" role="tabpanel"></div>')}}),$(".geral-campeonatos").html(""),t.list_camps.length>0&&(t.list_camps.sort(function(a,e){return e.temporada-a.temporada}),$.each(t.list_camps,function(a,e){if("liga"==e.tipo){var t="";t=1==e.posicao?'<img src="img/taca.png" class="img-fluid center-block">':'<h2 class="posicao">'+e.posicao+"º</h2>",$(".geral-campeonatos").append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3">'+t+'<h3 class="nome-torneio">Cartolas sem cartola</h3><p class="ano">'+e.temporada+"</p></div>")}if("mata_mata"==e.tipo){var o="";o=e.campeao?e.mata_mata.toLowerCase().indexOf("kempes")>=0?'<img src="img/mata-mata-kempes.png" class="img-fluid center-block">':'<img src="img/mata-mata.png" class="img-fluid center-block">':'<h2 class="posicao">X</h2>',$(".geral-campeonatos").append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3">'+o+'<h3 class="nome-torneio">'+e.mata_mata+'</h3><p class="ano">'+e.temporada+"</p></div>")}})),$(".desempenho-geral").click()):($(".brasao").prop("src",""),$(".nome_time").html(""),$(".ano_fundacao").html(""),$(".nome_presidente").html(""),$(".text-hitoria").html(""),$(".dropdown-temporada").html(""),$(".geral-campeonatos").html(""),$("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"))}catch(a){$(".brasao").prop("src",""),$(".nome_time").html(""),$(".ano_fundacao").html(""),$(".nome_presidente").html(""),$(".text-hitoria").html(""),$(".dropdown-temporada").html(""),$(".geral-campeonatos").html(""),$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}function t(a){a.confrontos.length>0?($(".n-rodada").html(a.rodada+"ª Rodada"),a.confrontos.sort(function(a,e){return a.data-e.data}),$.each(a.confrontos,function(a,e){var t=new Date(e.data);$("#confrontos-br").append('<div class="card estrutura"><p class="info-data"><i class="fa fa-calendar"></i> '+weekDay(t.getDay())+" "+formatBRDate(t)+'</p><div class=" confronto"><div class="col-sm-3 titulo-clube"><p class="nome-abrev-right">'+e.m_time+'</p><img src="'+e.m_escudo+'" class="img-fluid center-block time"></div><p class="confronto">'+e.m_placar+'</p><p class="confronto">X</p><p class="confronto">'+e.v_placar+'</p><div class="col-sm-3 titulo-clube"><img src="'+e.v_escudo+'" class="img-fluid center-block time"><p class="nome-abrev-float">'+e.v_time+'</p></div></div><p class="info-local"><i class="fa fa-map-marker"></i> '+e.local+" - "+formatTime(t)+"<strong>hrs</strong></p></div>")}),$("#confrontos-br .card").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()})):($("#confrontos-br").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$("#confrontos-br .infor").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}))}function o(a){var e=new FormData;e.append("nome_time",a.find(".busca-time").val()),a.find(".card").hide(),$("#loading").remove(),a.find(".info-clube .nome").html(""),a.find(".img-scouts").prop("src",""),a.find(".dados-pont").html(""),a.find(".dados-patri").html(""),a.find("table tbody").html(""),a.append('<div style="margin-top:70px;" id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.scouts.php?act=pontuacao",data:e,processData:!1,contentType:!1,timeout:0,success:function(e){try{var t=JSON.parse(e.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?(a.find(".info-clube .nome").html(t.time),a.find(".img-scouts").prop("src","img/escudos/clube/"+t.escudo),a.find(".dados-pont").html(t.pont_total),a.find(".dados-patri").html("C$ "+t.patrimonio),t.atletas.length>0?(t.atletas.sort(function(a,e){return a.index-e.index}),$.each(t.atletas,function(e,t){var o="";t.capitao&&(o='<img class="capitao" src="img/capitao.png" />'),a.find("table tbody").append('<tr><td class="logo-time"><img src="'+t.escudo+'"></td><td>'+t.posicao+"</td><td>"+o+t.nome+'</td><td class="'+t.css_pont+'">'+t.pontuacao+"</td></tr>")})):a.find("table tbody").append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),a.find(".card").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()})):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),a.find(".info-clube .nome").html(""),a.find(".img-scouts").prop("src",""),a.find(".dados-pont").html(""),a.find(".dados-patri").html(""),a.find("table tbody").html(""),a.find(".card").hide(),$("#loading").remove())}catch(e){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(e.stack)),$("#alert").modal("show"),a.find(".info-clube .nome").html(""),a.find(".img-scouts").prop("src",""),a.find(".dados-pont").html(""),a.find(".dados-patri").html(""),a.find("table tbody").html(""),a.find(".card").hide(),$("#loading").remove()}}})}function i(a,e){var t=new FormData;t.append("nome_time",a),$("#loading-modal").modal({keyboard:!1});var o=1;1==e&&(o=2),$(".dados_time"+e).html(""),$(".posicao_time"+e).html(""),$(".pontos_time"+e).html(""),$(".patrimonio_time"+e).html(""),$(".media_time"+e).html(""),$(".maior_time"+e).html(""),$(".menor_time"+e).html(""),$(".ultima_time"+e).html(""),$(".table-estatisticas").hide(),$(".med_g_time"+e).html(""),$(".med_l_time"+e).html(""),$(".med_z_time"+e).html(""),$(".med_m_time"+e).html(""),$(".med_a_time"+e).html(""),$(".med_t_time"+e).html(""),$(".table-medias").hide(),$.ajax({type:"POST",url:"acts/acts.comparacao.php?act=dados_time",data:t,processData:!1,contentType:!1,timeout:0,success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));t.succeed?($(".dados_time"+e).html('<img src="img/escudos/'+t.escudo+'"> '+t.time),$(".posicao_time"+e).html(t.posicao+" º"),$(".pontos_time"+e).html(t.tot_pontos.toFixed(2)),$(".patrimonio_time"+e).html("C$"+t.patrimonio.replace(",",".")),$(".media_time"+e).html(t.media),$(".maior_time"+e).html(t.max_pontos),$(".menor_time"+e).html(t.min_pontos),$(".ultima_time"+e).html(t.ult_pontos),$(".posicao_time"+e).removeClass("positivo"),$(".posicao_time"+e).removeClass("negativo"),$(".pontos_time"+e).removeClass("positivo"),$(".pontos_time"+e).removeClass("negativo"),$(".patrimonio_time"+e).removeClass("positivo"),$(".patrimonio_time"+e).removeClass("negativo"),$(".media_time"+e).removeClass("positivo"),$(".media_time"+e).removeClass("negativo"),$(".maior_time"+e).removeClass("positivo"),$(".maior_time"+e).removeClass("negativo"),$(".menor_time"+e).removeClass("positivo"),$(".menor_time"+e).removeClass("negativo"),$(".ultima_time"+e).removeClass("positivo"),$(".ultima_time"+e).removeClass("negativo"),$(".med_g_time"+e).removeClass("positivo"),$(".med_g_time"+e).removeClass("negativo"),$(".med_l_time"+e).removeClass("positivo"),$(".med_l_time"+e).removeClass("negativo"),$(".med_z_time"+e).removeClass("positivo"),$(".med_z_time"+e).removeClass("negativo"),$(".med_m_time"+e).removeClass("positivo"),$(".med_m_time"+e).removeClass("negativo"),$(".med_a_time"+e).removeClass("positivo"),$(".med_a_time"+e).removeClass("negativo"),$(".med_t_time"+e).removeClass("positivo"),$(".med_t_time"+e).removeClass("negativo"),$(".posicao_time"+o).removeClass("positivo"),$(".posicao_time"+o).removeClass("negativo"),$(".pontos_time"+o).removeClass("positivo"),$(".pontos_time"+o).removeClass("negativo"),$(".patrimonio_time"+o).removeClass("positivo"),$(".patrimonio_time"+o).removeClass("negativo"),$(".media_time"+o).removeClass("positivo"),$(".media_time"+o).removeClass("negativo"),$(".maior_time"+o).removeClass("positivo"),$(".maior_time"+o).removeClass("negativo"),$(".menor_time"+o).removeClass("positivo"),$(".menor_time"+o).removeClass("negativo"),$(".ultima_time"+o).removeClass("positivo"),$(".ultima_time"+o).removeClass("negativo"),$(".med_g_time"+o).removeClass("positivo"),$(".med_g_time"+o).removeClass("negativo"),$(".med_l_time"+o).removeClass("positivo"),$(".med_l_time"+o).removeClass("negativo"),$(".med_z_time"+o).removeClass("positivo"),$(".med_z_time"+o).removeClass("negativo"),$(".med_m_time"+o).removeClass("positivo"),$(".med_m_time"+o).removeClass("negativo"),$(".med_a_time"+o).removeClass("positivo"),$(".med_a_time"+o).removeClass("negativo"),$(".med_t_time"+o).removeClass("positivo"),$(".med_t_time"+o).removeClass("negativo"),parseFloat($(".posicao_time"+e).html().replace(" º",""))<parseFloat($(".posicao_time"+o).html().replace(" º",""))?($(".posicao_time"+e).addClass("positivo"),$(".posicao_time"+o).addClass("negativo")):($(".posicao_time"+e).addClass("negativo"),$(".posicao_time"+o).addClass("positivo")),parseFloat($(".pontos_time"+e).html())>parseFloat($(".pontos_time"+o).html())?($(".pontos_time"+e).addClass("positivo"),$(".pontos_time"+o).addClass("negativo")):($(".pontos_time"+e).addClass("negativo"),$(".pontos_time"+o).addClass("positivo")),parseFloat($(".patrimonio_time"+e).html().replace("C$",""))>parseFloat($(".patrimonio_time"+o).html().replace("C$",""))?($(".patrimonio_time"+e).addClass("positivo"),$(".patrimonio_time"+o).addClass("negativo")):($(".patrimonio_time"+e).addClass("negativo"),$(".patrimonio_time"+o).addClass("positivo")),parseFloat($(".media_time"+e).html())>parseFloat($(".media_time"+o).html())?($(".media_time"+e).addClass("positivo"),$(".media_time"+o).addClass("negativo")):($(".media_time"+e).addClass("negativo"),$(".media_time"+o).addClass("positivo")),parseFloat($(".maior_time"+e).html())>parseFloat($(".maior_time"+o).html())?($(".maior_time"+e).addClass("positivo"),$(".maior_time"+o).addClass("negativo")):($(".maior_time"+e).addClass("negativo"),$(".maior_time"+o).addClass("positivo")),parseFloat($(".menor_time"+e).html())>parseFloat($(".menor_time"+o).html())?($(".menor_time"+e).addClass("positivo"),$(".menor_time"+o).addClass("negativo")):($(".menor_time"+e).addClass("negativo"),$(".menor_time"+o).addClass("positivo")),parseFloat($(".ultima_time"+e).html())>parseFloat($(".ultima_time"+o).html())?($(".ultima_time"+e).addClass("positivo"),$(".ultima_time"+o).addClass("negativo")):($(".ultima_time"+e).addClass("negativo"),$(".ultima_time"+o).addClass("positivo")),$(".table-estatisticas").fadeIn("slow"),$(".med_g_time"+e).html(t.media_g),$(".med_l_time"+e).html(t.media_l),$(".med_z_time"+e).html(t.media_z),$(".med_m_time"+e).html(t.media_m),$(".med_a_time"+e).html(t.media_a),$(".med_t_time"+e).html(t.media_t),parseFloat($(".med_g_time"+e).html())>parseFloat($(".med_g_time"+o).html())?($(".med_g_time"+e).addClass("positivo"),$(".med_g_time"+o).addClass("negativo")):($(".med_g_time"+e).addClass("negativo"),$(".med_g_time"+o).addClass("positivo")),parseFloat($(".med_l_time"+e).html())>parseFloat($(".med_l_time"+o).html())?($(".med_l_time"+e).addClass("positivo"),$(".med_l_time"+o).addClass("negativo")):($(".med_l_time"+e).addClass("negativo"),$(".med_l_time"+o).addClass("positivo")),parseFloat($(".med_z_time"+e).html())>parseFloat($(".med_z_time"+o).html())?($(".med_z_time"+e).addClass("positivo"),$(".med_z_time"+o).addClass("negativo")):($(".med_z_time"+e).addClass("negativo"),$(".med_z_time"+o).addClass("positivo")),parseFloat($(".med_m_time"+e).html())>parseFloat($(".med_m_time"+o).html())?($(".med_m_time"+e).addClass("positivo"),$(".med_m_time"+o).addClass("negativo")):($(".med_m_time"+e).addClass("negativo"),$(".med_m_time"+o).addClass("positivo")),parseFloat($(".med_a_time"+e).html())>parseFloat($(".med_a_time"+o).html())?($(".med_a_time"+e).addClass("positivo"),$(".med_a_time"+o).addClass("negativo")):($(".med_a_time"+e).addClass("negativo"),$(".med_a_time"+o).addClass("positivo")),parseFloat($(".med_t_time"+e).html())>parseFloat($(".med_t_time"+o).html())?($(".med_t_time"+e).addClass("positivo"),$(".med_t_time"+o).addClass("negativo")):($(".med_t_time"+e).addClass("negativo"),$(".med_t_time"+o).addClass("positivo")),$(".table-medias").fadeIn("slow"),$("#loading-modal").modal("hide")):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$(".dados_time"+e).html(""),$(".posicao_time"+e).html(""),$(".pontos_time"+e).html(""),$(".patrimonio_time"+e).html(""),$(".media_time"+e).html(""),$(".maior_time"+e).html(""),$(".menor_time"+e).html(""),$(".ultima_time"+e).html(""),$(".table-estatisticas").hide(),$(".med_g_time"+e).html(""),$(".med_l_time"+e).html(""),$(".med_z_time"+e).html(""),$(".med_m_time"+e).html(""),$(".med_a_time"+e).html(""),$(".med_t_time"+e).html(""),$(".table-medias").hide(),$(".posicao_time"+e).removeClass("positivo"),$(".posicao_time"+e).removeClass("negativo"),$(".pontos_time"+e).removeClass("positivo"),$(".pontos_time"+e).removeClass("negativo"),$(".patrimonio_time"+e).removeClass("positivo"),$(".patrimonio_time"+e).removeClass("negativo"),$(".media_time"+e).removeClass("positivo"),$(".media_time"+e).removeClass("negativo"),$(".maior_time"+e).removeClass("positivo"),$(".maior_time"+e).removeClass("negativo"),$(".menor_time"+e).removeClass("positivo"),$(".menor_time"+e).removeClass("negativo"),$(".ultima_time"+e).removeClass("positivo"),$(".ultima_time"+e).removeClass("negativo"),$(".med_g_time"+e).removeClass("positivo"),$(".med_g_time"+e).removeClass("negativo"),$(".med_l_time"+e).removeClass("positivo"),$(".med_l_time"+e).removeClass("negativo"),$(".med_z_time"+e).removeClass("positivo"),$(".med_z_time"+e).removeClass("negativo"),$(".med_m_time"+e).removeClass("positivo"),$(".med_m_time"+e).removeClass("negativo"),$(".med_a_time"+e).removeClass("positivo"),$(".med_a_time"+e).removeClass("negativo"),$(".med_t_time"+e).removeClass("positivo"),$(".med_t_time"+e).removeClass("negativo"),$(".posicao_time"+o).removeClass("positivo"),$(".posicao_time"+o).removeClass("negativo"),$(".pontos_time"+o).removeClass("positivo"),$(".pontos_time"+o).removeClass("negativo"),$(".patrimonio_time"+o).removeClass("positivo"),$(".patrimonio_time"+o).removeClass("negativo"),$(".media_time"+o).removeClass("positivo"),$(".media_time"+o).removeClass("negativo"),$(".maior_time"+o).removeClass("positivo"),$(".maior_time"+o).removeClass("negativo"),$(".menor_time"+o).removeClass("positivo"),$(".menor_time"+o).removeClass("negativo"),$(".ultima_time"+o).removeClass("positivo"),$(".ultima_time"+o).removeClass("negativo"),$(".med_g_time"+o).removeClass("positivo"),$(".med_g_time"+o).removeClass("negativo"),$(".med_l_time"+o).removeClass("positivo"),$(".med_l_time"+o).removeClass("negativo"),$(".med_z_time"+o).removeClass("positivo"),$(".med_z_time"+o).removeClass("negativo"),$(".med_m_time"+o).removeClass("positivo"),$(".med_m_time"+o).removeClass("negativo"),$(".med_a_time"+o).removeClass("positivo"),$(".med_a_time"+o).removeClass("negativo"),$(".med_t_time"+o).removeClass("positivo"),$(".med_t_time"+o).removeClass("negativo"),$("#loading-modal").modal("hide"))}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$(".dados_time"+e).html(""),$(".posicao_time"+e).html(""),$(".pontos_time"+e).html(""),$(".patrimonio_time"+e).html(""),$(".media_time"+e).html(""),$(".maior_time"+e).html(""),$(".menor_time"+e).html(""),$(".ultima_time"+e).html(""),$(".table-estatisticas").hide(),$(".med_g_time"+e).html(""),$(".med_l_time"+e).html(""),$(".med_z_time"+e).html(""),$(".med_m_time"+e).html(""),$(".med_a_time"+e).html(""),$(".med_t_time"+e).html(""),$(".table-medias").hide(),$(".posicao_time"+e).removeClass("positivo"),$(".posicao_time"+e).removeClass("negativo"),$(".pontos_time"+e).removeClass("positivo"),$(".pontos_time"+e).removeClass("negativo"),$(".patrimonio_time"+e).removeClass("positivo"),$(".patrimonio_time"+e).removeClass("negativo"),$(".media_time"+e).removeClass("positivo"),$(".media_time"+e).removeClass("negativo"),$(".maior_time"+e).removeClass("positivo"),$(".maior_time"+e).removeClass("negativo"),$(".menor_time"+e).removeClass("positivo"),$(".menor_time"+e).removeClass("negativo"),$(".ultima_time"+e).removeClass("positivo"),$(".ultima_time"+e).removeClass("negativo"),$(".med_g_time"+e).removeClass("positivo"),$(".med_g_time"+e).removeClass("negativo"),$(".med_l_time"+e).removeClass("positivo"),$(".med_l_time"+e).removeClass("negativo"),$(".med_z_time"+e).removeClass("positivo"),$(".med_z_time"+e).removeClass("negativo"),$(".med_m_time"+e).removeClass("positivo"),$(".med_m_time"+e).removeClass("negativo"),$(".med_a_time"+e).removeClass("positivo"),$(".med_a_time"+e).removeClass("negativo"),$(".med_t_time"+e).removeClass("positivo"),$(".med_t_time"+e).removeClass("negativo"),$(".posicao_time"+o).removeClass("positivo"),$(".posicao_time"+o).removeClass("negativo"),$(".pontos_time"+o).removeClass("positivo"),$(".pontos_time"+o).removeClass("negativo"),$(".patrimonio_time"+o).removeClass("positivo"),$(".patrimonio_time"+o).removeClass("negativo"),$(".media_time"+o).removeClass("positivo"),$(".media_time"+o).removeClass("negativo"),$(".maior_time"+o).removeClass("positivo"),$(".maior_time"+o).removeClass("negativo"),$(".menor_time"+o).removeClass("positivo"),$(".menor_time"+o).removeClass("negativo"),$(".ultima_time"+o).removeClass("positivo"),$(".ultima_time"+o).removeClass("negativo"),$(".med_g_time"+o).removeClass("positivo"),$(".med_g_time"+o).removeClass("negativo"),$(".med_l_time"+o).removeClass("positivo"),$(".med_l_time"+o).removeClass("negativo"),$(".med_z_time"+o).removeClass("positivo"),$(".med_z_time"+o).removeClass("negativo"),$(".med_m_time"+o).removeClass("positivo"),$(".med_m_time"+o).removeClass("negativo"),$(".med_a_time"+o).removeClass("positivo"),$(".med_a_time"+o).removeClass("negativo"),$(".med_t_time"+o).removeClass("positivo"),$(".med_t_time"+o).removeClass("negativo"),$("#loading-modal").modal("hide")}}})}$("html, body").on("click",function(a){a.target==document.documentElement&&$("html").removeClass("open-sidebar")}),$(".js-open-sidebar").on("click",function(){$("html").addClass("open-sidebar")}),$("#regulamento").on("click",function(){this.checked?($("#btn-inscricao").removeAttr("disabled"),$("#btn-inscricao").removeClass("disabled")):($("#btn-inscricao").attr("disabled"),$("#btn-inscricao").addClass("disabled"))}),$("#logout").on("click",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.logout.php",success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?(document.cookie.split(";").forEach(function(a){document.cookie=a.replace(/^ +/,"").replace(/=.*/,"=;expires="+(new Date).toUTCString()+";path=/")}),window.location.href="./"):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),"12010"==e.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#form-login").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=login",data:$("#form-login").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?e.href.length>0?window.location.href=e.href:window.location.href="./":($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),"12010"==e.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-login").click(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=login",data:$("#form-login").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?e.href.length>0?window.location.href=e.href:window.location.href="./":($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),"12010"==e.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-esqueceu-senha").click(function(a){a.preventDefault(),$(".mainlogin").hide(),$(".mainform").show()}),$("#btn-recuperar-senha").click(function(a){a.preventDefault(),a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.login.php?act=reset",data:$("#form-recuperar").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#alert-title").html("Solicitação enviada com sucesso!"),$("#alert-content").html("Sua requisição para resetar sua senha foi realizada com sucesso. Aguarde o e-mail com as informações! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#form-provisoria").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.provisoria.php",data:$(this).serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#alert-title").html("Senha alterada com sucesso!"),$("#alert-content").html("Sua senha foi alterada definitivamente com sucesso! Ao fechar a mensagem você será redirecionado para o site!"),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.href="./"})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#btn-provisoria").click(function(a){a.preventDefault(),$("#form-provisoria").submit()}),-1!==window.location.pathname.indexOf("inscricao")&&($("#nome_time").textext({plugins:"autocomplete ajax",ajax:{url:"acts/acts.inscricao.php?act=times",dataType:"json",cacheResults:!0}}),$("#btn-voltar-inscricao").click(function(a){a.preventDefault(),$(".premain").hide(),$(".inscmain").show()}),$("body").on("click",".text-core .text-wrap .text-dropdown .text-list .text-suggestion",function(e){a($(this).parent().parent().parent().parent().parent())}),$("#nome_time").on("keyup",function(e){if(13==e.keyCode){a($(this).parent().parent().parent())}}),$(".competicao").on("change",function(a){var e=parseFloat($("#valor").val().replace("R$","").replace(",","."));$(this).is(":checked")?e+=$(this).data("money"):e-=$(this).data("money"),$("#valor").val("R$ "+e.toString().replace(".",",")+",00")}),$("#form-inscricao").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.inscricao.php?act=add",data:$("#form-inscricao").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?$(".inscmain").fadeOut("fast",function(){$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#nome_time").val(""),$('input[name="forma-pagto"]').prop("checked",!1),$(".competicao").prop("checked",!1),$("#regulamento").prop("checked",!1),$("#id_time").val(""),$(".premain").fadeIn("slow")}):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})})),-1===window.location.pathname.indexOf("destaques")&&-1===window.location.pathname.indexOf("liga")&&-1===window.location.pathname.indexOf("mata_mata")&&-1===window.location.pathname.indexOf("rodada")&&-1===window.location.pathname.indexOf("eventos")&&-1===window.location.pathname.indexOf("inscricao")&&-1===window.location.pathname.indexOf("regulamento")&&-1===window.location.pathname.indexOf("login")&&-1===window.location.pathname.indexOf("logout")&&-1===window.location.pathname.indexOf("brasileiro")&&-1===window.location.pathname.indexOf("scouts")&&-1===window.location.pathname.indexOf("clube")&&-1===window.location.pathname.indexOf("dados_clube")&&-1===window.location.pathname.indexOf("meus_dados")&&-1===window.location.pathname.indexOf("provisoria")&&-1===window.location.pathname.indexOf("temporeal")&&-1===window.location.pathname.indexOf("comparacao")&&($("#res-rodada").modal({keyboard:!1}),0==$("#resumo-temporada").length?($("#destaques-rodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=destaques-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#destaques-rodada .card-block tbody").html(""),e.succeed){if(e.list.length>0){var t=1;$.each(e.list,function(a,e){var o="";e.isMyTeam&&(o="myteam"),$("#destaques-rodada .card-block tbody").append('<tr class="bg-success '+o+'"><th scope="row" class="table-title">'+t+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+e.pontuacao.toFixed(2)+"</td></tr>"),t++})}else $("#destaques-rodada .card-block tbody").append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');$("#destaques-rodada .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#destaques-rodada footer").fadeIn("slow")}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#destaques-rodada .card-block").hide(),$("#destaques-rodada footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#destaques-rodada .card-block").hide(),$("#destaques-rodada footer").hide(),$("#loading").remove()}}}),$("#desempenho-rodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#desempenho-rodada .card-block tbody").html(""),e.succeed){if(e.series.length>0&&e.series[0].data&&e.series[0].data.length>0){$("#desempenho-rodada .card-block").append('<canvas id="chart-desempenho-rodada"></canvas>'),$.each(e.series,function(a,e){var t=getRandomColor();e.backgroundColor=t,e.borderColor=t});new Chart($("#chart-desempenho-rodada"),{type:"line",data:{labels:e.labels,datasets:e.series},options:{responsive:!0,hoverMode:"label",stacked:!1,scales:{xAxes:[{display:!1,gridLines:{offsetGridLines:!1},ticks:{stepSize:1,callback:function(a,e,t){return"Rodada "+a}}}],yAxes:[{labelString:"Posição na Liga",ticks:{reverse:!0,stepSize:1,callback:function(a,e,t){return a+"º"}}}]},legend:{position:"bottom"},tooltips:{callbacks:{label:function(a,e){var t=e.datasets[a.datasetIndex].label||"";t&&(t+=" - "),t+=a.yLabel+"º lugar";try{var o=a.index+1,i=e.datasets[a.datasetIndex].label,e=$.ajax({type:"POST",url:"acts/acts.rodada.php?act=pontuacao&rodada="+o+"&time="+i,async:!1
}).responseText,s=JSON.parse(e.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));s.succeed&&(t+=" - "+s.pontuacao+" pts.")}catch(a){console.log(a)}return t}}}}})}else $("#desempenho-rodada .card-block").append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#desempenho-rodada .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#desempenho-rodada footer").fadeIn("slow")}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#desempenho-rodada .card-block").hide(),$("#desempenho-rodada footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-rodada .card-block").hide(),$("#desempenho-rodada footer").hide(),$("#loading").remove()}}}),$("#desempenho-geral").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=desempenho-geral&limit=8",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#desempenho-geral .card-block tbody").html(""),e.succeed?(e.list.length>0?$.each(e.list,function(a,e){var t="bg-table";a<6&&(t="bg-success");var o="";e.isMyTeam&&(o="myteam"),$("#desempenho-geral .card-block tbody").append('<tr class="'+t+" "+o+'"><th scope="row" class="table-title">'+e.posicao+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+e.pontuacao.toFixed(2)+"</td><td>"+e.variacao+"</td></tr>")}):$("#desempenho-geral .card-block tbody").append('<tr class="bg-table"><td colspan="5" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#desempenho-geral .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#desempenho-geral footer").fadeIn("slow")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#desempenho-geral .card-block").hide(),$("#desempenho-geral footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-geral .card-block").hide(),$("#desempenho-geral footer").hide(),$("#loading").remove()}}}),$("#mata-mata-andamento").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=mata-mata-andamento",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#mata-mata-andamento .card-block tbody").html(""),e.succeed?(e.list.length>0?$.each(e.list,function(a,e){$("#mata-mata-andamento .card-block").append('<div class="'+e.cor_fase+' text-white"><i class="fa fa-trophy"></i> '+e.nome+" - "+e.fase+"</div>")}):$("#mata-mata-andamento .card-block").append('<div class="bg-secondary center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$("#mata-mata-andamento .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#mata-mata-andamento footer").fadeIn("slow")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#mata-mata-andamento .card-block").hide(),$("#mata-mata-andamento footer").hide())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#mata-mata-andamento .card-block").hide(),$("#mata-mata-andamento footer").hide(),$("#loading").remove()}}}),$("#eventos").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=eventos",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#eventos .card-block tbody").html(""),e.succeed?($("#calendar").fullCalendar({themeSystem:"bootstrap4",defaultView:"month",defaultDate:formatTodayEUDate(),eventRender:function(a,e){e.popover({content:function(){return a.description},html:!0,trigger:"hover",placement:"top",container:"body"})},events:e.eventos,timeFormat:"H:mm"}),$("#eventos .card-block").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),$("#eventos footer").fadeIn("slow")):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#eventos .card-block").hide(),$("#eventos footer").hide(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#eventos .card-block").hide(),$("#eventos footer").hide(),$("#loading").remove()}}})):($("#resumo-temporada").append('<li class="loading-li"><div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div></li>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=resumo",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.list.length>0){var t=1;$.each(e.list,function(a,e){var o="";o=1==t?"Campeão da Liga Cartolas sem cartola":2==t?"Vice Campeão da Liga Cartolas sem cartola":t+"º Colocado da Liga Cartolas sem cartola";var i="";e.hasMaxPont&&(i="<p><span>Maior pontuador da liga em uma única rodada</span></p><h3>"+e.max_pont.toFixed(2)+' <span style="font-size: 10px;">pontos</span></h3>'),$("#resumo-temporada").append('<li><figure><div class="card-temporada"><img src="img/escudos/clube/'+e.escudo+'" class="temporada-escudo"><h3 class="temporada-clube">'+e.time+"</h3></div><figcaption><p><span>"+o+'</span></p><h3 class="temporada-pontos">'+e.pontuacao.toFixed(2)+' <span style="font-size: 10px;">pontos</span></h3>'+i+"</figcaption></figure></li>"),t++})}else $("#resumo-temporada").append('<li class="loading-li"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</li>');$("#resumo-temporada li").fadeIn("slow",function(){$(".loading-li").fadeOut(),$(".loading-li").remove(),$("#resumo-temporada li").css("display","inline-block")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#resumo-temporada").html("")}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#resumo-temporada").html("")}}}),$("#resumo-mata-mata").append('<li class="loading-li"><div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div></li>'),$.ajax({type:"POST",url:"acts/acts.index.php?act=res-mata",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?(e.list.length>0?$.each(e.list,function(a,e){var t="";t=e.mata_mata.toLowerCase().indexOf("kempes")>-1?"kempes.png":e.mata_mata.toLowerCase().indexOf("beer")>-1?"copa-beer.png":"taca-default.png",$("#resumo-mata-mata").append('<li><figure><div class="card-temporada"><img src="img/escudos/clube/'+e.escudo+'" class="temporada-escudo"><h3 class="temporada-clube">'+e.time+'</h3></div><figcaption><img src="img/fimtemporada/'+t+'" class="taca-temp"><p class="temp-torneio"><span>'+e.mata_mata+"</span></p></figcaption></figure></li>")}):$("#resumo-mata-mata").append('<li class="loading-li"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</li>'),$("#resumo-mata-mata li").fadeIn("slow",function(){$(".loading-li").fadeOut(),$(".loading-li").remove(),$("#resumo-mata-mata li").css("display","inline-block")})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#resumo-mata-mata").html(""))}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#resumo-temporada").html("")}}}),$("#btn-dados-time").on("click",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.index.php?act=dados-time",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#loading-modal").modal("hide"),e.succeed?($(".temp-escudo").attr("src","img/escudos/clube/"+e.escudo),$(".temp-nome").html(e.nome_time),$(".pont-result").html(e.total_pontos.toFixed(2)+"<span>pts</span>"),$(".media-result").html(e.media.toFixed(2)+"<span>média</span>"),$(".total-g").html(e.total_g.toFixed(2)),$(".total-l").html(e.total_l.toFixed(2)),$(".total-z").html(e.total_z.toFixed(2)),$(".total-m").html(e.total_m.toFixed(2)),$(".total-a").html(e.total_a.toFixed(2)),$(".total-t").html(e.total_t.toFixed(2)),$(".maior-j").html(e.maior_j.toFixed(2)),$(".menor-j").html(e.menor_j.toFixed(2)),$(".maior-c").html(e.maior_c.toFixed(2)),$(".menor-c").html(e.menor_c.toFixed(2)),$(".max-pont").html(e.max_pontos.toFixed(2)),$(".max-rodada").html("Maior pontuação <br />"+e.max_rodada+"º Rodada"),$(".min-pont").html(e.min_pontos.toFixed(2)),$(".min-rodada").html("Menor pontuação <br />"+e.min_rodada+"º Rodada"),$(".patrimonio").html("C$"+e.patrimonio.toFixed(2)),$("#main-resumo").fadeOut("fast",function(){$("#main-clube").fadeIn("slow")})):($("#loading-modal").modal("hide"),$("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#main-resumo").show(),$("#main-clube").hide())}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#main-resumo").show(),$("#main-clube").hide()}}})}))),-1!==window.location.pathname.indexOf("destaques")&&($("#destaques").append('<div class="col-12" id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.destaques.php",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.list.length>0){var t="",o=0;$.each(e.list,function(a,e){var i="";e.isMyTeam&&(i="myteam"),t!=e.rodada&&($("#destaques").append('<div class="col-sm-6 col-md-6 col-lg-4 col-xl-4"><div class="card"><div class="card-header"><header><h2 class="card-title card-destaque">Destaques da '+e.rodada+'º rodada</h2></header></div><div class="card-block"><table class="table table-responsive liga-csc"><thead><tr class="bg-warning"><th class="table-title">#</th><th class="table-title"></th><th class="table-title">Time</th><th class="table-title">Pontos</th></tr></thead><tbody id="body_'+e.rodada+'">'),t=e.rodada,o=0),o<4&&$("#body_"+e.rodada).append('<tr class="bg-success '+i+'"><th scope="row" class="table-title">'+(o+1)+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+e.time+"</td><td>"+parseFloat(Math.round(100*e.pontuacao)/100).toFixed(2)+"</td></tr>"),o++})}else $("#destaques").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$("#destaques .col-sm-4").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#destaques .col-sm-4").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#destaques .col-sm-4").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("liga")&&($("#desempenho-liga").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.liga.php",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#desempenho-liga .card-block tbody").html(""),e.succeed){var t=e.list.length-4;e.list.length>0?($.each(e.list,function(a,e){var o="bg-table";a<6&&(o="bg-success"),a>6&&a>=t&&(o="bg-danger");var i="";e.isMyTeam&&(i="myteam");var s="";e.hasMaxPont&&(s="<img class='badge-medal' src='img/medal.png' />"),$("#desempenho-liga .card-block tbody").append('<tr class="'+o+" "+i+'"><th scope="row" class="table-title">'+e.posicao+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td>'+s+e.time+"</td><td>"+e.pontuacao.toFixed(2)+"</td><td>"+e.pont_ult_rodada.toFixed(2)+"</td><td>"+e.variacao+"</td></tr>")}),$(".liga-csc").tablesorter({dateFormat:"pt",sortList:[[3,1]],headers:{1:{sorter:!1},5:{sorter:!1}}})):$("#desempenho-liga .card-block tbody").append('<tr class="bg-table"><td colspan="6" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading").fadeOut("fast",function(){$("#desempenho-liga .card-block").fadeIn("slow"),$("#desempenho-liga footer").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#desempenho-liga .card-block").hide(),$("#desempenho-liga footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#desempenho-liga .card-block").hide(),$("#desempenho-liga footer").hide(),$("#loading").remove()}}})),-1!==window.location.pathname.indexOf("mata_mata")&&($("#mata-mata").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.mata_mata.php?act=mata-mata",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.list.length>0){e.list.sort(function(a,e){return a.ordem>e.ordem?1:e.ordem>a.ordem?-1:0});var t="";$.each(e.list,function(a,e){t!=e.fase&&($("#mata-mata").append('<div class="'+e.cor_fase+' text-white"><i class="fa fa-trophy"></i> Mata Mata - '+e.fase+'</div><div class="row" id="body_'+e.cor_fase+'">'),t=e.fase),$("#body_"+e.cor_fase).append('<div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 mata-and"><a href="#" class="open-confrontos" data-id="'+e.id+'"><img src="img/'+e.imagem+'" class="rounded img-fluid" alt="Mata Mata '+e.fase+'"><h2 class="headline">'+e.nome+"</h2></a></div>")})}else $("#mata-mata").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#loading").fadeOut("fast",function(){$("#mata-mata .bg-info").fadeIn("slow"),$("#mata-mata .bg-success").fadeIn("slow"),$("#mata-mata .bg-danger").fadeIn("slow"),$("#mata-mata .mata-and").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#mata-mata .bg-info").hide(),$("#mata-mata .bg-success").hide(),$("#mata-mata .bg-danger").hide(),$("#mata-mata .mata-and").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#mata-mata .bg-info").hide(),$("#mata-mata .bg-success").hide(),$("#mata-mata .bg-danger").hide(),$("#mata-mata .mata-and").hide(),$("#loading").remove()}}}),$("body").on("click",".open-confrontos",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var e=$(this).data("id");$.ajax({type:"POST",url:"acts/acts.mata_mata.php?act=confrontos&idmatamata="+e,success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#loading-modal").modal("hide"),e.succeed?($("#nome-mata-mata").html(e.mata_mata),e.list.length>0?($.each(e.list,function(a,e){1==e.chave&&($("#nav-niveis").append('<li class="nav-item"><a class="nav-link'+e.active+'" data-toggle="tab" href="#nivel'+e.nivel+'">'+e.fase+"</a></li>"),$("#nav-confrontos").append('<div id="nivel'+e.nivel+'" class="tab-pane'+e.active+'"><h4 class="confrontos">Confrontos</h4><div class="row" id="cards'+e.nivel+'" >')),$.each(e.confrontos,function(a,t){var o="Chave "+t.chave;1==e.nivel&&(o=1==t.chave?"<b>Final</b>":"3º lugar");var i=parseFloat(t.pontuacao_time_1),s=parseFloat(t.pontuacao_time_2);$("#cards"+e.nivel).append('<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6"><div class="card"><p class="rodada_anda">'+o+'</p><div class="card-block confronto"><div class="col-sm-6"><img src="img/escudos/'+t.escudo_time_1+'" class="img-fluid center-block"><p class="clube">'+(i>s?"<b>"+t.time_1+"</b>":t.time_1)+'</p><p class="pontuacao">'+i+'</p></div><p class="vs">X</p><div class="col-sm-6"><img src="img/escudos/'+t.escudo_time_2+'" class="img-fluid center-block"><p class="clube">'+(s>i?"<b>"+t.time_2+"</b>":t.time_2)+'</p><p class="pontuacao">'+s+'</p></div></div><p class="chaveamento">Rodada em andamento (Pontuação parcial)</p></div>')})}),0==$("#nav-niveis a.active").length&&$("#nav-niveis a.nav-link").first().click()):$("#nao-ha-dados").show(),$("#mainmata").fadeOut("fast",function(){$("#mainconfrontos").fadeIn("slow")})):($("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"))}catch(a){$("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("#voltar-mata-mata").click(function(a){a.preventDefault(),$("#nome-mata-mata").html(""),$("#nav-niveis").html(""),$("#nav-confrontos").html(""),$("#nao-ha-dados").hide(),$("#mainconfrontos").fadeOut("fast",function(){$("#mainmata").fadeIn("slow")})})),-1!==window.location.pathname.indexOf("rodada")&&($("#pontrodada").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.rodada.php?act=rodada-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$("#pontrodada .table-responsive tbody").html(""),e.succeed?(e.linhas.length>0?($("#pontrodada .table-responsive thead").append(e.cabecalho),$.each(e.linhas,function(a,e){$("#pontrodada .table-responsive tbody").append(e.linha)})):$("#pontrodada .table-responsive tbody").append('<tr class="bg-table"><td colspan="42" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading").fadeOut("fast",function(){$("#pontrodada .table-responsive").fadeIn("slow")})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#pontrodada .table-responsive").hide(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#pontrodada .table-responsive").hide(),$("#loading").remove()}}}),$("#grafico-rodada").append('<div id="loading-grafico"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.rodada.php?act=grafico-rodada",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#grafico-rodada .card-block tbody").html(""),e.succeed){if(e.series.length>0&&e.series[0].data&&e.series[0].data.length>0){$("#grafico-rodada .card-block").append('<canvas id="chart-grafico-rodada"></canvas>'),$.each(e.series,function(a,e){var t=getRandomColor();e.backgroundColor=t,e.borderColor=t});new Chart($("#chart-grafico-rodada"),{type:"line",data:{labels:e.labels,datasets:e.series},options:{responsive:!0,hoverMode:"label",stacked:!1,scales:{xAxes:[{display:!1,gridLines:{offsetGridLines:!1},ticks:{stepSize:1,callback:function(a,e,t){return"Rodada "+a}}}],yAxes:[{labelString:"Posição na Liga",ticks:{reverse:!0,stepSize:1,callback:function(a,e,t){return a+"º"}}}]},legend:{position:"bottom"},tooltips:{callbacks:{label:function(a,e){var t=e.datasets[a.datasetIndex].label||"";t&&(t+=" - "),t+=a.yLabel+"º lugar";try{var o=a.index+1,i=e.datasets[a.datasetIndex].label,e=$.ajax({type:"POST",url:"acts/acts.rodada.php?act=pontuacao&rodada="+o+"&time="+i,async:!1}).responseText,s=JSON.parse(e.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));s.succeed&&(t+=" - "+s.pontuacao+" pts.")}catch(a){console.log(a)}return t}}}}})}else $("#grafico-rodada .card-block").append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#grafico-rodada .card-block").fadeIn("slow",function(){$("#loading-grafico").fadeOut(),$("#loading-grafico").remove()})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#grafico-rodada .card-block").hide(),$("#loading-grafico").remove()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#grafico-rodada .card-block").hide(),$("#loading-grafico").remove()}}})),-1!==window.location.pathname.indexOf("eventos")&&($("#eventos-container").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.eventos.php?act=listagem-eventos",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?(e.eventos.length>0&&$.each(e.eventos,function(a,e){var t=new Date(1e3*e.data),o="",i="";new Date<=t?(i="#proximos-eventos",o=e.confirmado?'<a href="#" data-id="'+e.id+'" class="btn btn-danger btn-remover-presenca"><i class="fa fa-ban"></i> Não vou poder ir mais</a>':'<a href="#" data-id="'+e.id+'" class="btn btn-success btn-confirmar-presenca"><i class="fa fa-check"></i> Confirmar Presença</a>',o+='<span style="margin-left: 30px;"><b>'+e.participantes+"</b> cartoleiros vão no evento!</span>"):(i="#eventos-passados",o='<p style="margin-top: 35px; margin-bottom: 0px;"><b>'+e.participantes+"</b> cartoleiros foram a esse evento!</p>"),$(i).append('<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 eventos-card"><div class="card"><div class="card-block"><h4 class="card-title">'+e.titulo+'</h4><h6 class="card-subtitle mb-2 text-muted">Data: '+formatDate(1e3*e.data)+"</h6><p>Local: "+e.local+'</p><p class="card-text">'+e.descricao+"</p>"+o+"</div></div></div>")}),0==e.eventos.length&&$("#eventos-container").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$("#loading").fadeOut("fast",function(){$("#proximos-eventos").children().length>0&&($("#proximos-eventos").fadeIn("slow"),$("#eventos-container .bg-success").fadeIn("slow")),$("#eventos-passados").children().length>0&&($("#eventos-passados").fadeIn("slow"),$("#eventos-container .bg-info").fadeIn("slow")),0==$("#proximos-eventos").children().length&&0==$("#eventos-passados").children().length&&($("#eventos-container .bg-success").fadeIn("slow"),$("#eventos-container .infor").fadeIn("slow"))})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#proximos-eventos").hide(),$("#eventos-passados").hide(),$("#eventos-container .bg-success").hide(),$("#eventos-container .bg-info").hide(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#proximos-eventos").hide(),$("#eventos-passados").hide(),$("#eventos-container .bg-success").hide(),$("#eventos-container .bg-info").hide(),$("#loading").remove()}}}),$("body").on("click",".btn-confirmar-presenca",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var e=$(this).data("id");$.ajax({type:"POST",url:"acts/acts.eventos.php?act=confirmar-presenca&idevento="+e,success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#alert-title").html("Presença confirmada com sucesso!"),$("#alert-content").html("Você confirmou sua presença no evento com sucesso! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),"12010"==e.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})}),$("body").on("click",".btn-remover-presenca",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var e=$(this).data("id");$.ajax({type:"POST",url:"acts/acts.eventos.php?act=remover-presenca&idevento="+e,success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#alert-title").html("Presença removida com sucesso!"),$("#alert-content").html("Não vai mais, arregão? A patroa não deixou? Fazer o que! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),"12010"==e.errno&&$("#alert").on("hidden.bs.modal",function(a){window.location.href="provisoria"}))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show")}}})})),$("#form-meus-dados").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1}),$.ajax({type:"POST",url:"acts/acts.meus_dados.php",data:$("#form-meus-dados").serialize(),success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#senha").val(""),$("#senha2").val(""),$("#alert-title").html("Dados alterados com sucesso!"),$("#alert-content").html("Você alterou seus dados com sucesso! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#senha").val(""),$("#senha2").val(""))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#nome").val(""),$("#email").val(""),$("#telefone").val(""),$("#senha").val(""),$("#senha2").val("")}}})}),$("#form-dados-clube").submit(function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var e=new FormData;e.append("time",$("#time").val()),e.append("historia",$("#historia").val()),e.append("ano_fundacao",$("#ano_fundacao").val()),e.append("brasao",$("#brasao")[0].files[0]),$.ajax({type:"POST",url:"acts/acts.dados_clube.php",data:e,processData:!1,contentType:!1,success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));e.succeed?($("#time").val(""),$("#historia").val(""),$("#ano_fundacao").val(""),$("#brasao").val(""),$("#alert-title").html("Dados alterados com sucesso!"),$("#alert-content").html("Você alterou os dados do seu clube com sucesso! Ao fechar esta mensagem a página será recarregada."),$("#alert").modal("show"),$("#alert").on("hidden.bs.modal",function(a){window.location.reload()})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#time").val(""),$("#historia").val(""),$("#ano_fundacao").val(""),$("#brasao").val(""))}catch(a){$("#loading-modal").modal("hide"),$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#time").val(""),$("#historia").val(""),$("#ano_fundacao").val(""),$("#brasao").val("")}}})}),-1!==window.location.pathname.indexOf("clube")&&($("#escudos-container").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.clube.php?act=escudos",success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$(".escudos").html(""),t.succeed?t.list.length>0?($.each(t.list,function(a,e){$(".escudos").append('<li><a href="#" data-id="'+e.id+'" class="btn-historia-clube"><img src="img/escudos/'+e.escudo+'" class="img-fluid" alt="'+e.time+'" title="Visualizar história de '+e.time+'"></a></li>')}),$(".escudos").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()}),e(t.id_clube_default)):($("#escudos-container").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$("#escudos-container .infor").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()})):($("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$(".escudos").hide(),$("#escudos-container .infor").hide(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$(".escudos").hide(),$("#escudos-container .infor").hide(),$("#loading").remove()}}}),$("body").on("click",".btn-historia-clube",function(a){a.preventDefault(),e($(this).data("id"))}),$("body").on("click",".dropdown-item",function(a){a.preventDefault();var e=$(this).attr("href"),t=$(this).attr("href").replace("#a",""),o=$(this).data("time-id");$(e).append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.clube.php?act=paineis&idano="+t+"&idtime="+o,success:function(a){try{var o=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));o.succeed?($(e).html(""),$(e).append('<div class="row painel-'+t+'"><h1 class="headline-rodada">Temporada selecionada: <strong>'+o.temporada+"</strong></h1></div>"),$(e).append('<div class="col-12 historia painel-'+t+'"><div id="container-'+t+'" class="row"></div><div class="btn btn-lg btn-primary btn-temporada"><a href="#" class="link-temporada" data-id-ano="'+t+'">Confira sua pontuação detalhada da temporada '+o.temporada+"</a></div></div>"),o.list_camps.length>0&&$.each(o.list_camps,function(a,e){if("liga"==e.tipo){var o="";o=1==e.posicao?'<img src="img/taca.png" class="img-fluid center-block">':'<h2 class="posicao">'+e.posicao+"º</h2>",$("#container-"+t).append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3">'+o+'<h3 class="nome-torneio">Cartolas sem cartola</h3><p class="ano">'+e.temporada+"</p></div>")}if("mata_mata"==e.tipo){var i=""
;i=e.campeao?e.mata_mata.toLowerCase().indexOf("kempes")>=0?'<img src="img/mata-mata-kempes.png" class="img-fluid center-block">':'<img src="img/mata-mata.png" class="img-fluid center-block">':'<h2 class="posicao">X</h2>',$("#container-"+t).append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3">'+i+'<h3 class="nome-torneio">'+e.mata_mata+'</h3><p class="ano">'+e.temporada+"</p></div>")}}),$("#container-"+t).append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3"><h2 class="pontuacao_temp">'+o.max_pontos+'</h2><h3 class="nome-torneio">Maior pontuação</h3><p class="ano">'+o.temporada+"</p></div>"),$("#container-"+t).append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3"><h2 class="pontuacao_temp">'+o.min_pontos+'</h2><h3 class="nome-torneio">Menor pontuação</h3><p class="ano">'+o.temporada+"</p></div>"),$("#container-"+t).append('<div class="col-sm-4 col-md-4 col-lg-3 col-xl-3"><h2 class="pontuacao_temp">'+o.media+'</h2><h3 class="nome-torneio">Média de pontos</h3><p class="ano">'+o.temporada+"</p></div>"),$(".painel-"+t).fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()})):($("#alert-title").html(o.title),$("#alert-content").html(o.errno+" - "+o.erro),$("#alert").modal("show"),$("#loading").remove(),$(e).html(""))}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#loading").remove(),$(e).html("")}}})}),$("body").on("click",".link-temporada",function(a){a.preventDefault(),$("#mainclube").fadeOut("fast",function(){$("#maindetold").fadeIn("slow")});var e=$(this).data("id-ano");$("#pontrodada").append('<div id="loading-tab"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.rodada.php?act=rodada-rodada&idano="+e,success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$(".info-ano").html(e.temporada),$("#pontrodada .table-responsive thead").html(""),$("#pontrodada .table-responsive tbody").html(""),e.succeed?(e.linhas.length>0?($("#pontrodada .table-responsive thead").append(e.cabecalho),$.each(e.linhas,function(a,e){$("#pontrodada .table-responsive tbody").append(e.linha)})):$("#pontrodada .table-responsive tbody").append('<tr class="bg-table"><td colspan="42" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading-tab").fadeOut("fast",function(){$("#pontrodada .table-responsive").fadeIn("slow")})):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#pontrodada .table-responsive").hide(),$("#loading-tab").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#pontrodada .table-responsive").hide(),$("#loading-tab").remove()}}}),$("#grafico-rodada").append('<div id="loading-grafico"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.rodada.php?act=grafico-rodada&idano="+e,success:function(a){try{var t=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#grafico-rodada .card-block tbody").html(""),$("#grafico-rodada .card-block .infor").remove(),$("#chart-grafico-rodada").remove(),t.succeed){if($(".info-ano").html(t.temporada),t.series.length>0&&t.series[0].data&&t.series[0].data.length>0){$("#grafico-rodada .card-block").append('<canvas id="chart-grafico-rodada"></canvas>'),$.each(t.series,function(a,e){var t=getRandomColor();e.backgroundColor=t,e.borderColor=t});new Chart($("#chart-grafico-rodada"),{type:"line",data:{labels:t.labels,datasets:t.series},options:{responsive:!0,hoverMode:"label",stacked:!1,scales:{xAxes:[{display:!1,gridLines:{offsetGridLines:!1},ticks:{stepSize:1,callback:function(a,e,t){return"Rodada "+a}}}],yAxes:[{labelString:"Posição na Liga",ticks:{reverse:!0,stepSize:1,callback:function(a,e,t){return a+"º"}}}]},legend:{position:"bottom"},tooltips:{callbacks:{label:function(a,t){var o=t.datasets[a.datasetIndex].label||"";o&&(o+=" - "),o+=a.yLabel+"º lugar";try{var i=a.index+1,s=t.datasets[a.datasetIndex].label,t=$.ajax({type:"POST",url:"acts/acts.rodada.php?act=pontuacao&rodada="+i+"&time="+s+"&idano="+e,async:!1}).responseText,r=JSON.parse(t.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));r.succeed&&(o+=" - "+r.pontuacao+" pts.")}catch(a){console.log(a)}return o}}}}})}else $("#grafico-rodada .card-block").append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');$("#grafico-rodada .card-block").fadeIn("slow",function(){$("#loading-grafico").fadeOut(),$("#loading-grafico").remove()})}else $("#alert-title").html(t.title),$("#alert-content").html(t.errno+" - "+t.erro),$("#alert").modal("show"),$("#grafico-rodada .card-block").hide(),$("#loading-grafico").remove()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#grafico-rodada .card-block").hide(),$("#loading-grafico").remove()}}})}),$("#voltar-desempenho").click(function(a){a.preventDefault(),$("#maindetold").fadeOut("fast",function(){$("#mainclube").fadeIn("slow"),$("#loading-grafico").fadeOut(),$("#loading-grafico").remove(),$("#loading-tab").fadeOut(),$("#loading-tab").remove(),$("#pontrodada .table-responsive tbody").html("")})})),-1!==window.location.pathname.indexOf("brasileiro")&&($(".table-responsive").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.brasileiro.php?act=tabela",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($(".escudos").html(""),$(".tbl-pos-brasileiro").html(""),e.succeed)if(e.equipes.length>0){var t=0;$.each(e.equipes,function(a,e){var o="";t<4?o="media-parcial":t>=4&&t<6?o="bom":t>=6&&t<12?o="media-camp":t>=13&&t<16?o="":t>=16&&(o="ruim"),$(".tbl-pos-brasileiro").append('<tr><th class="'+o+'">'+(t+1)+"</th><th>"+e.clube+"</th><td>"+e.pontos+"</td><td>"+e.jogos+"</td><td>"+e.vitorias+"</td><td>"+e.empates+"</td><td>"+e.derrotas+"</td><td>"+e.gols_pro+"</td><td>"+e.gols_contra+"</td><td>"+e.saldo_gols+"</td><td>"+e.aproveitamento+"%</td></tr>"),t++}),$(".table-responsive table").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()})}else $(".table-responsive").append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>'),$(".table-responsive .infor").fadeIn("slow",function(){$("#loading").fadeOut(),$("#loading").remove()});else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$(".table-responsive .infor").remove(),$(".table-responsive table").remove(),$("#loading").remove()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$(".table-responsive .infor").remove(),$(".table-responsive table").remove(),$("#loading").remove()}}}),$("#confrontos-br").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.brasileiro.php?act=confrontos",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$(".escudos").html(""),e.succeed?t(e):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#loading").remove()}}}),$(".voltar-rodada").on("click",function(a){a.preventDefault(),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#confrontos-br").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.brasileiro.php?act=confrontos&rodant",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$(".escudos").html(""),e.succeed?t(e):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#loading").remove()}}})}),$(".avancar-rodada").on("click",function(a){a.preventDefault(),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#confrontos-br").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.brasileiro.php?act=confrontos&proxrod",success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));$(".escudos").html(""),e.succeed?t(e):($("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#loading").remove())}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$(".n-rodada").html(""),$("#confrontos-br .card").remove(),$("#loading").remove()}}})})),-1!==window.location.pathname.indexOf("scouts")&&($("#scout1").textext({plugins:"autocomplete ajax",ajax:{url:"acts/acts.scouts.php?act=times",dataType:"json",cacheResults:!0}}),$("#scout2").textext({plugins:"autocomplete ajax",ajax:{url:"acts/acts.scouts.php?act=times",dataType:"json",cacheResults:!0}}),$("#scout3").textext({plugins:"autocomplete ajax",ajax:{url:"acts/acts.scouts.php?act=times",dataType:"json",cacheResults:!0}}),$("#salva_scout1").change(function(){$(this).prop("checked")?setCookie("scout1",$("#scout1").val(),1):deleteCookie("scout1")}),$("#salva_scout2").change(function(){$(this).prop("checked")?setCookie("scout2",$("#scout2").val(),1):deleteCookie("scout2")}),$("#salva_scout3").change(function(){$(this).prop("checked")?setCookie("scout3",$("#scout3").val(),1):deleteCookie("scout3")}),getCookie("scout1")&&($("#scout1").val(getCookie("scout1")),$("#salva_scout1").bootstrapToggle("on")),getCookie("scout2")&&($("#scout2").val(getCookie("scout2")),$("#salva_scout2").bootstrapToggle("on")),getCookie("scout3")&&($("#scout3").val(getCookie("scout3")),$("#salva_scout3").bootstrapToggle("on")),$("#scout1").val().length>0&&o($("#scout1").parent().parent().parent()),$("#scout2").val().length>0&&o($("#scout2").parent().parent().parent()),$("#scout3").val().length>0&&o($("#scout3").parent().parent().parent()),$("body").on("click",".text-core .text-wrap .text-dropdown .text-list .text-suggestion",function(a){o($(this).parent().parent().parent().parent().parent())}),$(".busca-time").on("keyup",function(a){13==a.keyCode&&o($(this).parent().parent().parent())}),self.setInterval(function(){$("#scout1").val().length>0&&o($("#scout1").parent().parent().parent()),$("#scout2").val().length>0&&o($("#scout2").parent().parent().parent()),$("#scout3").val().length>0&&o($("#scout3").parent().parent().parent())},2e4)),-1!==window.location.pathname.indexOf("temporeal")&&($("#tempo-real").append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>'),$.ajax({type:"POST",url:"acts/acts.tempo_real.php?act=listagem",timeout:0,success:function(a){try{var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if($("#tempo-real .card-block tbody").html(""),e.succeed){var t=e.list.length-4;e.list.length>0?(e.list.sort(function(a,e){return e.parcial_total-a.parcial_total}),$.each(e.list,function(a,e){var o="bg-table";a<6&&(o="bg-success"),a>6&&a>=t&&(o="bg-danger");var i=a+1,s="";s=0==e.posicao?"+"+i:e.posicao-i>0?"+"+(e.posicao-i):e.posicao-i<0?e.posicao-i:"-";var r="";e.isMyTeam&&(r="myteam"),$("#tempo-real .card-block tbody").append('<tr class="'+o+" "+r+'"><th scope="row" class="table-title">'+i+'º</th><td><img src="img/escudos/'+e.escudo+'" class="img-fluid"></td><td><a href="#" class="scout-time" data-id="'+e.id+'">'+e.time+"</a></td><td>"+e.pontuacao.toFixed(2)+"</td><td>"+e.parcial.toFixed(2)+"</td><td>"+e.parcial_total.toFixed(2)+"</td><td>"+s+"</td></tr>")}),$(".liga-csc").tablesorter({dateFormat:"pt",sortList:[[4,1]],headers:{1:{sorter:!1},6:{sorter:!1}}})):$("#tempo-real .card-block tbody").append('<tr class="bg-table"><td colspan="6" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>'),$("#loading").fadeOut("fast",function(){$("#tempo-real .card-block").fadeIn("slow"),$("#tempo-real footer").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#tempo-real .card-block").hide(),$("#tempo-real footer").hide()}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#tempo-real .card-block").hide(),$("#tempo-real footer").hide(),$("#loading").remove()}}}),$("body").on("click",".scout-time",function(a){a.preventDefault(),$("#loading-modal").modal({keyboard:!1});var e=$(this).data("id");$(".table-lista-scout tbody").html(""),$(".comissao-tecnica").html(""),$(".idx1_2").html(""),$(".idx3").html(""),$(".idx4").html(""),$.ajax({type:"POST",url:"acts/acts.tempo_real.php?act=scouts&idtime="+e,timeout:0,success:function(a){try{$("#loading-modal").modal("hide");var e=JSON.parse(a.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));if(e.succeed){if(e.atletas.length>0){e.atletas.sort(function(a,e){return a.index-e.index}),$(".table-lista-scout tbody").append('<tr><td class="nome-clube">#</td><th class="nome-clube">'+e.time+'</th><td class="pts-tot">'+e.pont_total+"</td></tr>");var t=0,o=0,i=0;$.each(e.atletas,function(a,e){1!=e.index&&2!=e.index||t++,3==e.index&&o++,4==e.index&&i++});var s="col-sm-2",r="col-sm-3",l="col-sm-3";3==t&&(s="col-sm-3"),5==t&&(s="col-sm-2"),2==o&&(r="col-sm-6"),3==o&&(r="col-sm-3"),4==o&&(r="col-sm-2"),5==o&&(r="col-sm-2"),1==i&&(l="col-sm-12"),2==i&&(l="col-sm-4"),3==i&&(l="col-sm-3");var n=!1;$.each(e.atletas,function(a,e){var t="",o="";e.capitao&&(t='<img class="capitao" src="img/capitao.png" />',o='<div class="capitao-wrapper"><img class="capitao" src="img/capitao.png" /></div>');var i='<div class="brasao-wrapper"><img src="'+e.escudo+'" /></div>';if(0==e.index&&$(".comissao-tecnica").append('<div class="clearfix col-sm-2 goleiro">'+o+i+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+e.foto+') no-repeat center center; background-size: contain;"></div></div>'),1==e.index&&($(".idx1_2").append('<div class="clearfix '+s+" lat"+a+'">'+o+i+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+e.foto+') no-repeat center center; background-size: contain;"></div></div>'),n=!0),2==e.index){var d=0;n&&(d=a),$(".idx1_2").append('<div class="clearfix '+s+" zag"+d+'">'+o+i+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+e.foto+') no-repeat center center; background-size: contain;"></div></div>')}3==e.index&&$(".idx3").append('<div class="clearfix '+r+'">'+o+i+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+e.foto+') no-repeat center center; background-size: contain;"></div></div>'),4==e.index&&$(".idx4").append('<div class="clearfix '+l+'">'+o+i+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+e.foto+') no-repeat center center; background-size: contain;"></div></div>'),5==e.index&&$(".comissao-tecnica").append('<div class="col-sm-2 tecnico">'+i+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+e.foto+') no-repeat center center; background-size: contain;"></div></div>'),$(".table-lista-scout tbody").append("<tr><td>"+e.posicao+"</td><th>"+t+e.nome+'</th><td class="'+e.css_pont+'">'+e.pontuacao+"</td></tr>")})}else $(".table-lista-scout tbody").append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');$("#maintable").fadeOut("fast",function(){$("#mainscout").fadeIn("slow")})}else $("#alert-title").html(e.title),$("#alert-content").html(e.errno+" - "+e.erro),$("#alert").modal("show"),$("#maintable").show(),$("#mainscout").hide(),$(".table-lista-scout tbody").html(""),$(".comissao-tecnica").html(""),$(".idx1_2").html(""),$(".idx3").html(""),$(".idx4").html("")}catch(a){$("#alert-title").html("Erro ao fazer parse do JSON!"),$("#alert-content").html(String(a.stack)),$("#alert").modal("show"),$("#loading-modal").modal("hide"),$("#maintable").show(),$("#mainscout").hide(),$(".table-lista-scout tbody").html(""),$(".comissao-tecnica").html(""),$(".idx1_2").html(""),$(".idx3").html(""),$(".idx4").html("")}}})}),$("#btn-voltar-listagem").on("click",function(a){a.preventDefault(),$("#mainscout").fadeOut("fast",function(){$("#maintable").fadeIn("slow")}),$(".table-lista-scout tbody").html(""),$(".comissao-tecnica").html(""),$(".idx1_2").html(""),$(".idx3").html(""),$(".idx4").html("")}),self.setInterval(function(){$("#maintable").is(":visible")&&window.location.reload()},18e4)),-1!==window.location.pathname.indexOf("comparacao")&&($("#comparacao1").textext({plugins:"autocomplete ajax",ajax:{url:"acts/acts.comparacao.php?act=times",dataType:"json",cacheResults:!0}}),$("#comparacao2").textext({plugins:"autocomplete ajax",ajax:{url:"acts/acts.comparacao.php?act=times",dataType:"json",cacheResults:!0}}),$("#salva_comparacao1").change(function(){$(this).prop("checked")?setCookie("comparacao1",$("#comparacao1").val(),1):deleteCookie("comparacao1")}),$("#salva_comparacao2").change(function(){$(this).prop("checked")?setCookie("comparacao2",$("#comparacao2").val(),1):deleteCookie("comparacao2")}),getCookie("comparacao1")&&($("#comparacao1").val(getCookie("comparacao1")),$("#salva_comparacao1").bootstrapToggle("on")),getCookie("comparacao2")&&($("#comparacao2").val(getCookie("comparacao2")),$("#salva_comparacao2").bootstrapToggle("on")),$("#comparacao1").val().length>0&&i($("#comparacao1").val(),1),$("#comparacao2").val().length>0&&i($("#comparacao2").val(),2),$("body").on("click",".text-core .text-wrap .text-dropdown .text-list .text-suggestion",function(a){i($(this).parent().parent().parent().find(".busca-time").val(),$(this).parent().parent().parent().find(".busca-time").attr("id").replace("comparacao",""))}),$(".busca-time").on("keyup",function(a){13==a.keyCode&&i($(this).val(),$(this).attr("id").replace("comparacao",""))}))}),function(a){"use strict";function e(e){return e.is('[type="checkbox"]')?e.prop("checked"):e.is('[type="radio"]')?!!a('[name="'+e.attr("name")+'"]:checked').length:e.is("select[multiple]")?(e.val()||[]).length:e.val()}function t(e){return this.each(function(){var t=a(this),i=a.extend({},o.DEFAULTS,t.data(),"object"==typeof e&&e),s=t.data("bs.validator");(s||"destroy"!=e)&&(s||t.data("bs.validator",s=new o(this,i)),"string"==typeof e&&s[e]())})}var o=function(t,i){this.options=i,this.validators=a.extend({},o.VALIDATORS,i.custom),this.$element=a(t),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var t=a(this),o=t.attr("data-match");a(o).on("input.bs.validator",function(){e(t)&&t.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return e(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};o.VERSION="0.11.9",o.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',o.FOCUS_OFFSET=20,o.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},o.VALIDATORS={native:function(a){var e=a[0];return e.checkValidity?!e.checkValidity()&&!e.validity.valid&&(e.validationMessage||"error!"):void 0},match:function(e){var t=e.attr("data-match");return e.val()!==a(t).val()&&o.DEFAULTS.errors.match},minlength:function(a){var e=a.attr("data-minlength");return a.val().length<e&&o.DEFAULTS.errors.minlength}},o.prototype.update=function(){var e=this;return this.$inputs=this.$element.find(o.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){e.clearErrors(a(this))})),this.toggleSubmit(),this},o.prototype.onInput=function(e){var t=this,o=a(e.target),i="focusout"!==e.type;this.$inputs.is(o)&&this.validateInput(o,i).done(function(){t.toggleSubmit()})},o.prototype.validateInput=function(t,o){var i=(e(t),t.data("bs.validator.errors"));t.is('[type="radio"]')&&(t=this.$element.find('input[name="'+t.attr("name")+'"]'));var s=a.Event("validate.bs.validator",{relatedTarget:t[0]});if(this.$element.trigger(s),!s.isDefaultPrevented()){var r=this;return this.runValidators(t).done(function(e){t.data("bs.validator.errors",e),e.length?o?r.defer(t,r.showErrors):r.showErrors(t):r.clearErrors(t),i&&e.toString()===i.toString()||(s=e.length?a.Event("invalid.bs.validator",{relatedTarget:t[0],detail:e}):a.Event("valid.bs.validator",{relatedTarget:t[0],detail:i}),r.$element.trigger(s)),r.toggleSubmit(),r.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:t[0]}))})}},o.prototype.runValidators=function(t){function o(a){return t.attr("data-"+a+"-error")}function i(){var a=t[0].validity;return a.typeMismatch?t.attr("data-type-error"):a.patternMismatch?t.attr("data-pattern-error"):a.stepMismatch?t.attr("data-step-error"):a.rangeOverflow?t.attr("data-max-error"):a.rangeUnderflow?t.attr("data-min-error"):a.valueMissing?t.attr("data-required-error"):null}function s(){return t.attr("data-error")}function r(a){return o(a)||i()||s()}var l=[],n=a.Deferred();return t.data("bs.validator.deferred")&&t.data("bs.validator.deferred").reject(),t.data("bs.validator.deferred",n),a.each(this.validators,a.proxy(function(a,o){var i=null;!e(t)&&!t.attr("required")||void 0===t.attr("data-"+a)&&"native"!=a||!(i=o.call(this,t))||(i=r(a)||i,!~l.indexOf(i)&&l.push(i))},this)),!l.length&&e(t)&&t.attr("data-remote")?this.defer(t,function(){var o={};o[t.attr("name")]=e(t),a.get(t.attr("data-remote"),o).fail(function(a,e,t){l.push(r("remote")||t)}).always(function(){n.resolve(l)})}):n.resolve(l),n.promise()},o.prototype.validate=function(){var e=this;return a.when(this.$inputs.map(function(){return e.validateInput(a(this),!1)})).then(function(){e.toggleSubmit(),e.focusError()}),this},o.prototype.focusError=function(){if(this.options.focus){var e=this.$element.find(".has-error :input:first");0!==e.length&&(a("html, body").animate({scrollTop:e.offset().top-o.FOCUS_OFFSET},250),e.focus())}},o.prototype.showErrors=function(e){var t=this.options.html?"html":"text",o=e.data("bs.validator.errors"),i=e.closest(".form-group"),s=i.find(".help-block.with-errors"),r=i.find(".form-control-feedback");o.length&&(o=a("<ul/>").addClass("list-unstyled").append(a.map(o,function(e){return a("<li/>")[t](e)})),void 0===s.data("bs.validator.originalContent")&&s.data("bs.validator.originalContent",s.html()),s.empty().append(o),i.addClass("has-error has-danger"),i.hasClass("has-feedback")&&r.removeClass(this.options.feedback.success)&&r.addClass(this.options.feedback.error)&&i.removeClass("has-success"))},o.prototype.clearErrors=function(a){var t=a.closest(".form-group"),o=t.find(".help-block.with-errors"),i=t.find(".form-control-feedback");o.html(o.data("bs.validator.originalContent")),t.removeClass("has-error has-danger has-success"),t.hasClass("has-feedback")&&i.removeClass(this.options.feedback.error)&&i.removeClass(this.options.feedback.success)&&e(a)&&i.addClass(this.options.feedback.success)&&t.addClass("has-success")},o.prototype.hasErrors=function(){function e(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(e).length},o.prototype.isIncomplete=function(){function t(){var t=e(a(this));return!("string"==typeof t?a.trim(t):t)}return!!this.$inputs.filter("[required]").filter(t).length},o.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},o.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},o.prototype.defer=function(e,t){return t=a.proxy(t,this,e),this.options.delay?(window.clearTimeout(e.data("bs.validator.timeout")),void e.data("bs.validator.timeout",window.setTimeout(t,this.options.delay))):t()},o.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var e=a(this),t=e.data("bs.validator.timeout");window.clearTimeout(t)&&e.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var e=a(this),t=e.data("bs.validator.originalContent");e.removeData("bs.validator.originalContent").html(t)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},o.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var i=a.fn.validator;a.fn.validator=t,a.fn.validator.Constructor=o,a.fn.validator.noConflict=function(){return a.fn.validator=i,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var e=a(this);t.call(e,e.data())})})}(jQuery);	});
	    }

	    self.setInterval(function () {
    		if($('#scout1').val().length > 0) { 
    			listaAtletas($('#scout1').parent().parent().parent()); 
    		} 

    		if($('#scout2').val().length > 0) { 
    			listaAtletas($('#scout2').parent().parent().parent()); 
    		} 

    		if($('#scout3').val().length > 0) { 
    			listaAtletas($('#scout3').parent().parent().parent()); 
    		}
    	}, 20000);
	}

	// END SCOUTS (scouts)

	// BEGIN TEMPO REAL (temporeal)

	if(window.location.pathname.indexOf('temporeal') !== -1) {
				
		// DESEMPENHO GERAL
		$('#tempo-real').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.tempo_real.php?act=listagem",
    		timeout: 0,
			success: function(data)
			{ 
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('#tempo-real .card-block tbody').html('');

					if(retorno.succeed) {
						var rebaixamento = retorno.list.length - 4;
						if(retorno.list.length > 0) {
							retorno.list.sort(function(a,b) {
							    return b.parcial_total - a.parcial_total;
							});

							$.each(retorno.list, function(i, item) {
								var bg = "bg-table";
								if(i < 6) 
									bg = "bg-success";
								if(i > 6 && i >= rebaixamento) 
									bg = "bg-danger";

								var posatual = i + 1;

								var variacao = "";
								if(item.posicao == 0) {
									variacao = "+" + posatual;
								}
						        else if((item.posicao - posatual) > 0) {
						        	variacao = "+" + (item.posicao - posatual);
						        }
						        else if((item.posicao - posatual) < 0) {
						        	variacao = (item.posicao - posatual);
						        }
						        else {
						        	variacao = "-";
						        }

								var myTeamClass = "";
								if(item.isMyTeam)
									myTeamClass = "myteam";
								
								$('#tempo-real .card-block tbody').append('<tr class="' + bg + ' '+myTeamClass+'"><th scope="row" class="table-title">' + posatual + 'º</th><td><img src="img/escudos/' + item.escudo + '" class="img-fluid"></td><td><a href="#" class="scout-time" data-id="' + item.id + '">' + item.time + '</a></td><td>' + item.pontuacao.toFixed(2) + '</td><td>' + item.parcial.toFixed(2) + '</td><td>' + item.parcial_total.toFixed(2) + '</td><td>' + variacao + '</td></tr>');
							});

							$('.liga-csc').tablesorter({
								dateFormat: 'pt', 
								sortList: [[4,1]], 
						        headers: { 
						            1: { 
						                sorter: false 
						            }, 
						            6: { 
						                sorter: false 
						            } 
						        }
							});
						}
						else {
							$('#tempo-real .card-block tbody').append('<tr class="bg-table"><td colspan="6" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');
						}

						$('#loading').fadeOut("fast", function() {
							$('#tempo-real .card-block').fadeIn("slow");
							$('#tempo-real footer').fadeIn("slow");
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#tempo-real .card-block').hide();
						$('#tempo-real footer').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#tempo-real .card-block').hide();
					$('#tempo-real footer').hide();
					$('#loading').remove();
			    };
			}
		});

	    $('body').on('click', '.scout-time', function(e) {
			e.preventDefault();

			$('#loading-modal').modal({
				keyboard: false
			});

			var id = $(this).data("id");

			$('.table-lista-scout tbody').html('');
			$('.comissao-tecnica').html('');
			$('.idx1_2').html('');
			$('.idx3').html('');
			$('.idx4').html('');

			$.ajax({
				type: "POST",
				url: "acts/acts.tempo_real.php?act=scouts&idtime=" + id,
	    		timeout: 0,
				success: function(data)
				{ 
				    try {
						$('#loading-modal').modal('hide');
						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

						if(retorno.succeed) {
							if(retorno.atletas.length > 0) {
								retorno.atletas.sort(function(a,b) {
								    return a.index - b.index;
								});

								$('.table-lista-scout tbody').append('<tr><td class="nome-clube">#</td><th class="nome-clube">'+retorno.time+'</th><td class="pts-tot">'+retorno.pont_total+'</td></tr>');
								
								var countidx12 = 0,
									countidx3 = 0,
									countidx4 = 0;

								$.each(retorno.atletas, function(a, atleta) {
									if(atleta.index == 1 || atleta.index == 2)
										countidx12++;

									if(atleta.index == 3)
										countidx3++;

									if(atleta.index == 4)
										countidx4++;
								});

								var idx12class = "col-sm-2",
								    idx3class = "col-sm-3", 
								    idx4class = "col-sm-3";

							    if(countidx12 == 3)
							    	idx12class = "col-sm-3";
							    if(countidx12 == 5)
							    	idx12class = "col-sm-2";

							    if(countidx3 == 2) 
							    	idx3class = "col-sm-6";
							    if(countidx3 == 3) 
							    	idx3class = "col-sm-3";
							    if(countidx3 == 4) 
							    	idx3class = "col-sm-2";
							    if(countidx3 == 5) 
							    	idx3class = "col-sm-2";

							    if(countidx4 == 1) 
							    	idx4class = "col-sm-12";
							    if(countidx4 == 2) 
							    	idx4class = "col-sm-4";
							    if(countidx4 == 3) 
							    	idx4class = "col-sm-3";

							    var hasLateral = false;

								$.each(retorno.atletas, function(a, atleta) {
									var capitao = "", capitaowrp = "";
									if(atleta.capitao) {
										capitao = '<img class="capitao" src="img/capitao.png" />';
										capitaowrp = '<div class="capitao-wrapper"><img class="capitao" src="img/capitao.png" /></div>';
									}
									
									var escudowrp = '<div class="brasao-wrapper"><img src="'+atleta.escudo+'" /></div>';

									if(atleta.index == 0) {
										$('.comissao-tecnica').append('<div class="clearfix col-sm-2 goleiro">'+capitaowrp+escudowrp+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+atleta.foto+') no-repeat center center; background-size: contain;"></div></div>');
									}
									if(atleta.index == 1) {
										$('.idx1_2').append('<div class="clearfix '+idx12class+' lat'+a+'">'+capitaowrp+escudowrp+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+atleta.foto+') no-repeat center center; background-size: contain;"></div></div>');
										hasLateral = true;
									}
									if(atleta.index == 2) {
										var idx = 0;
										if(hasLateral)
											idx = a;
										$('.idx1_2').append('<div class="clearfix '+idx12class+' zag'+idx+'">'+capitaowrp+escudowrp+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+atleta.foto+') no-repeat center center; background-size: contain;"></div></div>');
									}
									if(atleta.index == 3) {
										$('.idx3').append('<div class="clearfix '+idx3class+'">'+capitaowrp+escudowrp+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+atleta.foto+') no-repeat center center; background-size: contain;"></div></div>');
									}
									if(atleta.index == 4) {
										$('.idx4').append('<div class="clearfix '+idx4class+'">'+capitaowrp+escudowrp+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+atleta.foto+') no-repeat center center; background-size: contain;"></div></div>');
									}
									if(atleta.index == 5) {
										$('.comissao-tecnica').append('<div class="col-sm-2 tecnico">'+escudowrp+'<div class="cartola-campinho-atleta-foto" style="background: #fff url('+atleta.foto+') no-repeat center center; background-size: contain;"></div></div>');
									}

									$('.table-lista-scout tbody').append('<tr><td>'+atleta.posicao+'</td><th>'+capitao+atleta.nome+'</th><td class="'+atleta.css_pont+'">'+atleta.pontuacao+'</td></tr>');
								});
							}
							else {
								$('.table-lista-scout tbody').append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');
							}

							$('#maintable').fadeOut("fast", function() {
								$('#mainscout').fadeIn("slow");
							});
						}
						else {
							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');

							$('#maintable').show();
							$('#mainscout').hide();
							$('.table-lista-scout tbody').html('');
							$('.comissao-tecnica').html('');
							$('.idx1_2').html('');
							$('.idx3').html('');
							$('.idx4').html('');
						}
				    }
				    catch (e) {
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');

						$('#loading-modal').modal('hide');
						$('#maintable').show();
						$('#mainscout').hide();
						$('.table-lista-scout tbody').html('');
						$('.comissao-tecnica').html('');
						$('.idx1_2').html('');
						$('.idx3').html('');
						$('.idx4').html('');
				    };
				}
			});


	    });

	    $('#btn-voltar-listagem').on('click', function (e) {
			e.preventDefault();

			$('#mainscout').fadeOut("fast", function() {
				$('#maintable').fadeIn("slow");
			});

			$('.table-lista-scout tbody').html('');
			$('.comissao-tecnica').html('');
			$('.idx1_2').html('');
			$('.idx3').html('');
			$('.idx4').html('');
	    });

	    self.setInterval(function () {
	    	if($('#maintable').is(":visible")) 
    			window.location.reload();
    	}, 180000);
	}

	// END TEMPO REAL (temporeal)

	// BEGIN SCOUTS (comparacao)

	if(window.location.pathname.indexOf('comparacao') !== -1) {

	    $('#comparacao1').textext({
	        plugins : 'autocomplete ajax',
	        ajax : {
	            url : 'acts/acts.comparacao.php?act=times',
	            dataType : 'json',
	            cacheResults : true
	        }
	    });

	    $('#comparacao2').textext({
	        plugins : 'autocomplete ajax',
	        ajax : {
	            url : 'acts/acts.comparacao.php?act=times',
	            dataType : 'json',
	            cacheResults : true
	        }
	    });

	    $('#salva_comparacao1').change(function() {
	    	if($(this).prop('checked')) {
		        setCookie("comparacao1", $('#comparacao1').val(), 1);
	    	}
	    	else {
	    		deleteCookie("comparacao1");
	    	}
	    });

	    $('#salva_comparacao2').change(function() {
	    	if($(this).prop('checked')) {
		        setCookie("comparacao2", $('#comparacao2').val(), 1);
	    	}
	    	else {
	    		deleteCookie("comparacao2");
	    	}
	    });

		if (getCookie("comparacao1")) {
			$('#comparacao1').val(getCookie("comparacao1"));
    		$('#salva_comparacao1').bootstrapToggle('on');
		}

		if (getCookie("comparacao2")) {
			$('#comparacao2').val(getCookie("comparacao2"));
    		$('#salva_comparacao2').bootstrapToggle('on');
		}

		if($('#comparacao1').val().length > 0) { 
			carregaInfos($('#comparacao1').val(), 1); 
		} 

		if($('#comparacao2').val().length > 0) { 
			carregaInfos($('#comparacao2').val(), 2); 
		}

	    $('body').on('click', '.text-core .text-wrap .text-dropdown .text-list .text-suggestion', function(e) {
	    	carregaInfos($(this).parent().parent().parent().find('.busca-time').val(), $(this).parent().parent().parent().find('.busca-time').attr('id').replace('comparacao', '')); 
	    });

	    $('.busca-time').on('keyup', function (e) {
		    if (e.keyCode == 13) {
		    	carregaInfos($(this).val(), $(this).attr('id').replace('comparacao', ''));
		    }
	    });

	    function carregaInfos(nome_time, idx) {
			var formData = new FormData();
			formData.append('nome_time', nome_time);

			$('#loading-modal').modal({
				keyboard: false
			});

			var idx2 = 1;

			if(idx == 1)
				idx2 = 2;

			$('.dados_time' + idx).html('');
			$('.posicao_time' + idx).html('');
			$('.pontos_time' + idx).html('');
			$('.patrimonio_time' + idx).html('');
			$('.media_time' + idx).html('');
			$('.maior_time' + idx).html('');
			$('.menor_time' + idx).html('');
			$('.ultima_time' + idx).html('');
			$('.table-estatisticas').hide();

			$('.med_g_time' + idx).html('');
			$('.med_l_time' + idx).html('');
			$('.med_z_time' + idx).html('');
			$('.med_m_time' + idx).html('');
			$('.med_a_time' + idx).html('');
			$('.med_t_time' + idx).html('');
			$('.table-medias').hide();

			$.ajax({
				type: "POST",
				url: "acts/acts.comparacao.php?act=dados_time",
				data : formData,
				processData: false,
				contentType: false,
    			timeout: 0,
				success: function(data)
				{
				    try {
						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

						if(retorno.succeed) {
							$('.dados_time' + idx).html('<img src="img/escudos/' + retorno.escudo + '"> ' + retorno.time);
							$('.posicao_time' + idx).html(retorno.posicao + ' º');
							$('.pontos_time' + idx).html(retorno.tot_pontos.toFixed(2));
							$('.patrimonio_time' + idx).html('C$' + retorno.patrimonio.replace(',', '.'));
							$('.media_time' + idx).html(retorno.media);
							$('.maior_time' + idx).html(retorno.max_pontos);
							$('.menor_time' + idx).html(retorno.min_pontos);
							$('.ultima_time' + idx).html(retorno.ult_pontos);

							$('.posicao_time' + idx).removeClass('positivo');
							$('.posicao_time' + idx).removeClass('negativo');
							$('.pontos_time' + idx).removeClass('positivo');
							$('.pontos_time' + idx).removeClass('negativo');
							$('.patrimonio_time' + idx).removeClass('positivo');
							$('.patrimonio_time' + idx).removeClass('negativo');
							$('.media_time' + idx).removeClass('positivo');
							$('.media_time' + idx).removeClass('negativo');
							$('.maior_time' + idx).removeClass('positivo');
							$('.maior_time' + idx).removeClass('negativo');
							$('.menor_time' + idx).removeClass('positivo');
							$('.menor_time' + idx).removeClass('negativo');
							$('.ultima_time' + idx).removeClass('positivo');
							$('.ultima_time' + idx).removeClass('negativo');
							$('.med_g_time' + idx).removeClass('positivo');
							$('.med_g_time' + idx).removeClass('negativo');
							$('.med_l_time' + idx).removeClass('positivo');
							$('.med_l_time' + idx).removeClass('negativo');
							$('.med_z_time' + idx).removeClass('positivo');
							$('.med_z_time' + idx).removeClass('negativo');
							$('.med_m_time' + idx).removeClass('positivo');
							$('.med_m_time' + idx).removeClass('negativo');
							$('.med_a_time' + idx).removeClass('positivo');
							$('.med_a_time' + idx).removeClass('negativo');
							$('.med_t_time' + idx).removeClass('positivo');
							$('.med_t_time' + idx).removeClass('negativo');

							$('.posicao_time' + idx2).removeClass('positivo');
							$('.posicao_time' + idx2).removeClass('negativo');
							$('.pontos_time' + idx2).removeClass('positivo');
							$('.pontos_time' + idx2).removeClass('negativo');
							$('.patrimonio_time' + idx2).removeClass('positivo');
							$('.patrimonio_time' + idx2).removeClass('negativo');
							$('.media_time' + idx2).removeClass('positivo');
							$('.media_time' + idx2).removeClass('negativo');
							$('.maior_time' + idx2).removeClass('positivo');
							$('.maior_time' + idx2).removeClass('negativo');
							$('.menor_time' + idx2).removeClass('positivo');
							$('.menor_time' + idx2).removeClass('negativo');
							$('.ultima_time' + idx2).removeClass('positivo');
							$('.ultima_time' + idx2).removeClass('negativo');
							$('.med_g_time' + idx2).removeClass('positivo');
							$('.med_g_time' + idx2).removeClass('negativo');
							$('.med_l_time' + idx2).removeClass('positivo');
							$('.med_l_time' + idx2).removeClass('negativo');
							$('.med_z_time' + idx2).removeClass('positivo');
							$('.med_z_time' + idx2).removeClass('negativo');
							$('.med_m_time' + idx2).removeClass('positivo');
							$('.med_m_time' + idx2).removeClass('negativo');
							$('.med_a_time' + idx2).removeClass('positivo');
							$('.med_a_time' + idx2).removeClass('negativo');
							$('.med_t_time' + idx2).removeClass('positivo');
							$('.med_t_time' + idx2).removeClass('negativo');

							if(parseFloat($('.posicao_time' + idx).html().replace(' º', '')) < 
							   parseFloat($('.posicao_time' + idx2).html().replace(' º', ''))) {
								$('.posicao_time' + idx).addClass('positivo');
								$('.posicao_time' + idx2).addClass('negativo');
							}
							else {
								$('.posicao_time' + idx).addClass('negativo');
								$('.posicao_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.pontos_time' + idx).html()) > parseFloat($('.pontos_time' + idx2).html())) {
								$('.pontos_time' + idx).addClass('positivo');
								$('.pontos_time' + idx2).addClass('negativo');
							}
							else {
								$('.pontos_time' + idx).addClass('negativo');
								$('.pontos_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.patrimonio_time' + idx).html().replace('C$', '')) > 
							   parseFloat($('.patrimonio_time' + idx2).html().replace('C$', ''))) {
								$('.patrimonio_time' + idx).addClass('positivo');
								$('.patrimonio_time' + idx2).addClass('negativo');
							}
							else {
								$('.patrimonio_time' + idx).addClass('negativo');
								$('.patrimonio_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.media_time' + idx).html()) > parseFloat($('.media_time' + idx2).html())) {
								$('.media_time' + idx).addClass('positivo');
								$('.media_time' + idx2).addClass('negativo');
							}
							else {
								$('.media_time' + idx).addClass('negativo');
								$('.media_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.maior_time' + idx).html()) > parseFloat($('.maior_time' + idx2).html())) {
								$('.maior_time' + idx).addClass('positivo');
								$('.maior_time' + idx2).addClass('negativo');
							}
							else {
								$('.maior_time' + idx).addClass('negativo');
								$('.maior_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.menor_time' + idx).html()) > parseFloat($('.menor_time' + idx2).html())) {
								$('.menor_time' + idx).addClass('positivo');
								$('.menor_time' + idx2).addClass('negativo');
							}
							else {
								$('.menor_time' + idx).addClass('negativo');
								$('.menor_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.ultima_time' + idx).html()) > parseFloat($('.ultima_time' + idx2).html())) {
								$('.ultima_time' + idx).addClass('positivo');
								$('.ultima_time' + idx2).addClass('negativo');
							}
							else {
								$('.ultima_time' + idx).addClass('negativo');
								$('.ultima_time' + idx2).addClass('positivo');
							}

							$('.table-estatisticas').fadeIn("slow");

							$('.med_g_time' + idx).html(retorno.media_g);
							$('.med_l_time' + idx).html(retorno.media_l);
							$('.med_z_time' + idx).html(retorno.media_z);
							$('.med_m_time' + idx).html(retorno.media_m);
							$('.med_a_time' + idx).html(retorno.media_a);
							$('.med_t_time' + idx).html(retorno.media_t);

							if(parseFloat($('.med_g_time' + idx).html()) > parseFloat($('.med_g_time' + idx2).html())) {
								$('.med_g_time' + idx).addClass('positivo');
								$('.med_g_time' + idx2).addClass('negativo');
							}
							else {
								$('.med_g_time' + idx).addClass('negativo');
								$('.med_g_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.med_l_time' + idx).html()) > parseFloat($('.med_l_time' + idx2).html())) {
								$('.med_l_time' + idx).addClass('positivo');
								$('.med_l_time' + idx2).addClass('negativo');
							}
							else {
								$('.med_l_time' + idx).addClass('negativo');
								$('.med_l_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.med_z_time' + idx).html()) > parseFloat($('.med_z_time' + idx2).html())) {
								$('.med_z_time' + idx).addClass('positivo');
								$('.med_z_time' + idx2).addClass('negativo');
							}
							else {
								$('.med_z_time' + idx).addClass('negativo');
								$('.med_z_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.med_m_time' + idx).html()) > parseFloat($('.med_m_time' + idx2).html())) {
								$('.med_m_time' + idx).addClass('positivo');
								$('.med_m_time' + idx2).addClass('negativo');
							}
							else {
								$('.med_m_time' + idx).addClass('negativo');
								$('.med_m_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.med_a_time' + idx).html()) > parseFloat($('.med_a_time' + idx2).html())) {
								$('.med_a_time' + idx).addClass('positivo');
								$('.med_a_time' + idx2).addClass('negativo');
							}
							else {
								$('.med_a_time' + idx).addClass('negativo');
								$('.med_a_time' + idx2).addClass('positivo');
							}

							if(parseFloat($('.med_t_time' + idx).html()) > parseFloat($('.med_t_time' + idx2).html())) {
								$('.med_t_time' + idx).addClass('positivo');
								$('.med_t_time' + idx2).addClass('negativo');
							}
							else {
								$('.med_t_time' + idx).addClass('negativo');
								$('.med_t_time' + idx2).addClass('positivo');
							}

							$('.table-medias').fadeIn("slow");

							$('#loading-modal').modal('hide');
						}
						else {
							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');

							$('.dados_time' + idx).html('');
							$('.posicao_time' + idx).html('');
							$('.pontos_time' + idx).html('');
							$('.patrimonio_time' + idx).html('');
							$('.media_time' + idx).html('');
							$('.maior_time' + idx).html('');
							$('.menor_time' + idx).html('');
							$('.ultima_time' + idx).html('');
							$('.table-estatisticas').hide();

							$('.med_g_time' + idx).html('');
							$('.med_l_time' + idx).html('');
							$('.med_z_time' + idx).html('');
							$('.med_m_time' + idx).html('');
							$('.med_a_time' + idx).html('');
							$('.med_t_time' + idx).html('');
							$('.table-medias').hide();

							$('.posicao_time' + idx).removeClass('positivo');
							$('.posicao_time' + idx).removeClass('negativo');
							$('.pontos_time' + idx).removeClass('positivo');
							$('.pontos_time' + idx).removeClass('negativo');
							$('.patrimonio_time' + idx).removeClass('positivo');
							$('.patrimonio_time' + idx).removeClass('negativo');
							$('.media_time' + idx).removeClass('positivo');
							$('.media_time' + idx).removeClass('negativo');
							$('.maior_time' + idx).removeClass('positivo');
							$('.maior_time' + idx).removeClass('negativo');
							$('.menor_time' + idx).removeClass('positivo');
							$('.menor_time' + idx).removeClass('negativo');
							$('.ultima_time' + idx).removeClass('positivo');
							$('.ultima_time' + idx).removeClass('negativo');
							$('.med_g_time' + idx).removeClass('positivo');
							$('.med_g_time' + idx).removeClass('negativo');
							$('.med_l_time' + idx).removeClass('positivo');
							$('.med_l_time' + idx).removeClass('negativo');
							$('.med_z_time' + idx).removeClass('positivo');
							$('.med_z_time' + idx).removeClass('negativo');
							$('.med_m_time' + idx).removeClass('positivo');
							$('.med_m_time' + idx).removeClass('negativo');
							$('.med_a_time' + idx).removeClass('positivo');
							$('.med_a_time' + idx).removeClass('negativo');
							$('.med_t_time' + idx).removeClass('positivo');
							$('.med_t_time' + idx).removeClass('negativo');

							$('.posicao_time' + idx2).removeClass('positivo');
							$('.posicao_time' + idx2).removeClass('negativo');
							$('.pontos_time' + idx2).removeClass('positivo');
							$('.pontos_time' + idx2).removeClass('negativo');
							$('.patrimonio_time' + idx2).removeClass('positivo');
							$('.patrimonio_time' + idx2).removeClass('negativo');
							$('.media_time' + idx2).removeClass('positivo');
							$('.media_time' + idx2).removeClass('negativo');
							$('.maior_time' + idx2).removeClass('positivo');
							$('.maior_time' + idx2).removeClass('negativo');
							$('.menor_time' + idx2).removeClass('positivo');
							$('.menor_time' + idx2).removeClass('negativo');
							$('.ultima_time' + idx2).removeClass('positivo');
							$('.ultima_time' + idx2).removeClass('negativo');
							$('.med_g_time' + idx2).removeClass('positivo');
							$('.med_g_time' + idx2).removeClass('negativo');
							$('.med_l_time' + idx2).removeClass('positivo');
							$('.med_l_time' + idx2).removeClass('negativo');
							$('.med_z_time' + idx2).removeClass('positivo');
							$('.med_z_time' + idx2).removeClass('negativo');
							$('.med_m_time' + idx2).removeClass('positivo');
							$('.med_m_time' + idx2).removeClass('negativo');
							$('.med_a_time' + idx2).removeClass('positivo');
							$('.med_a_time' + idx2).removeClass('negativo');
							$('.med_t_time' + idx2).removeClass('positivo');
							$('.med_t_time' + idx2).removeClass('negativo');

							$('#loading-modal').modal('hide');
						}
				    }
				    catch (e) {
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');

						$('.dados_time' + idx).html('');
						$('.posicao_time' + idx).html('');
						$('.pontos_time' + idx).html('');
						$('.patrimonio_time' + idx).html('');
						$('.media_time' + idx).html('');
						$('.maior_time' + idx).html('');
						$('.menor_time' + idx).html('');
						$('.ultima_time' + idx).html('');
						$('.table-estatisticas').hide();

						$('.med_g_time' + idx).html('');
						$('.med_l_time' + idx).html('');
						$('.med_z_time' + idx).html('');
						$('.med_m_time' + idx).html('');
						$('.med_a_time' + idx).html('');
						$('.med_t_time' + idx).html('');
						$('.table-medias').hide();

						$('.posicao_time' + idx).removeClass('positivo');
						$('.posicao_time' + idx).removeClass('negativo');
						$('.pontos_time' + idx).removeClass('positivo');
						$('.pontos_time' + idx).removeClass('negativo');
						$('.patrimonio_time' + idx).removeClass('positivo');
						$('.patrimonio_time' + idx).removeClass('negativo');
						$('.media_time' + idx).removeClass('positivo');
						$('.media_time' + idx).removeClass('negativo');
						$('.maior_time' + idx).removeClass('positivo');
						$('.maior_time' + idx).removeClass('negativo');
						$('.menor_time' + idx).removeClass('positivo');
						$('.menor_time' + idx).removeClass('negativo');
						$('.ultima_time' + idx).removeClass('positivo');
						$('.ultima_time' + idx).removeClass('negativo');
						$('.med_g_time' + idx).removeClass('positivo');
						$('.med_g_time' + idx).removeClass('negativo');
						$('.med_l_time' + idx).removeClass('positivo');
						$('.med_l_time' + idx).removeClass('negativo');
						$('.med_z_time' + idx).removeClass('positivo');
						$('.med_z_time' + idx).removeClass('negativo');
						$('.med_m_time' + idx).removeClass('positivo');
						$('.med_m_time' + idx).removeClass('negativo');
						$('.med_a_time' + idx).removeClass('positivo');
						$('.med_a_time' + idx).removeClass('negativo');
						$('.med_t_time' + idx).removeClass('positivo');
						$('.med_t_time' + idx).removeClass('negativo');

						$('.posicao_time' + idx2).removeClass('positivo');
						$('.posicao_time' + idx2).removeClass('negativo');
						$('.pontos_time' + idx2).removeClass('positivo');
						$('.pontos_time' + idx2).removeClass('negativo');
						$('.patrimonio_time' + idx2).removeClass('positivo');
						$('.patrimonio_time' + idx2).removeClass('negativo');
						$('.media_time' + idx2).removeClass('positivo');
						$('.media_time' + idx2).removeClass('negativo');
						$('.maior_time' + idx2).removeClass('positivo');
						$('.maior_time' + idx2).removeClass('negativo');
						$('.menor_time' + idx2).removeClass('positivo');
						$('.menor_time' + idx2).removeClass('negativo');
						$('.ultima_time' + idx2).removeClass('positivo');
						$('.ultima_time' + idx2).removeClass('negativo');
						$('.med_g_time' + idx2).removeClass('positivo');
						$('.med_g_time' + idx2).removeClass('negativo');
						$('.med_l_time' + idx2).removeClass('positivo');
						$('.med_l_time' + idx2).removeClass('negativo');
						$('.med_z_time' + idx2).removeClass('positivo');
						$('.med_z_time' + idx2).removeClass('negativo');
						$('.med_m_time' + idx2).removeClass('positivo');
						$('.med_m_time' + idx2).removeClass('negativo');
						$('.med_a_time' + idx2).removeClass('positivo');
						$('.med_a_time' + idx2).removeClass('negativo');
						$('.med_t_time' + idx2).removeClass('positivo');
						$('.med_t_time' + idx2).removeClass('negativo');

						$('#loading-modal').modal('hide');
				    };
				}
			});
	    }
	}

	// END SCOUTS (comparacao)
});

function getRandomColor() {
    var letters = '0123456789ABCDEF'.split('');
    var color = '#';
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }
    return color;
}

function formatDate(milliseconds) {
	var today = new Date(milliseconds);
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();

	var h = today.getHours() < 10 ? "0" + today.getHours() : today.getHours();
	var i = today.getMinutes() < 10 ? "0" + today.getMinutes() : today.getMinutes();
	
	if(dd<10) {
	    dd = '0'+dd
	} 

	if(mm<10) {
	    mm = '0'+mm
	}

	return dd + '/' + mm + '/' + yyyy + ' - ' + h + ':' + i + 'hrs';
}

function formatBRDate(date) {
	var dd = date.getDate();
	var mm = date.getMonth()+1; //January is 0!
	var yyyy = date.getFullYear();

	if(dd<10) {
	    dd = '0'+dd
	} 

	if(mm<10) {
	    mm = '0'+mm
	}

	if(isNaN(date.getTime())) {
		return "A definir";
	}
	else {
		return dd + '/' + mm + '/' + yyyy;
	}
}

function formatTodayEUDate() {
	var date = new Date();
	var dd = date.getDate();
	var mm = date.getMonth()+1; //January is 0!
	var yyyy = date.getFullYear();

	if(dd<10) {
	    dd = '0'+dd
	} 

	if(mm<10) {
	    mm = '0'+mm
	}

	if(isNaN(date.getTime())) {
		return "0000-00-00";
	}
	else {
		return yyyy + '-' + mm + '-' + dd;
	}
}

function formatTime(date) {
	var h = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
	var i = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
	if(isNaN(date.getTime())) {
		return "--:--";
	}
	else {
		return h + ':' + i;
	}
}

function weekDay(day) {
	var weekday = new Array(7);
	weekday[0] =  "DOM";
	weekday[1] = "SEG";
	weekday[2] = "TER";
	weekday[3] = "QUA";
	weekday[4] = "QUI";
	weekday[5] = "SEX";
	weekday[6] = "SAB";

	if(isNaN(day)) {
		return "---";
	}
	else {
		return weekday[day];
	}
}

function setCookie(name, value, exdays) {
	var expires;

	var date; 

	date = new Date(); //  criando o COOKIE com a data atual
	date.setTime(date.getTime()+(exdays*24*60*60*1000));
	expires = date.toUTCString();
	document.cookie = name+"="+value+"; expires="+expires+"; path=/";
}

function getCookie(name) {
    var cookies = document.cookie;
    var prefix = name + "=";
    var begin = cookies.indexOf("; " + prefix);
 
    if (begin == -1) {
 
        begin = cookies.indexOf(prefix);
         
        if (begin != 0) {
            return null;
        }
 
    } else {
        begin += 2;
    }
 
    var end = cookies.indexOf(";", begin);
     
    if (end == -1) {
        end = cookies.length;                        
    }
 
    return unescape(cookies.substring(begin + prefix.length, end));
}


function deleteCookie(name) {
	if (getCookie(name)) {
		document.cookie = name + "=" + "; expires=Thu, 01-Jan-70 00:00:01 GMT";
	}
}

function deleteAllCookies() {
    var cookies = document.cookie.split(";");

    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i];
        var eqPos = cookie.indexOf("=");
        var name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";
    }
}

/*!
 * Validator v0.11.9 for Bootstrap 3, by @1000hz
 * Copyright 2017 Cina Saffary
 * Licensed under http://opensource.org/licenses/MIT
 *
 * https://github.com/1000hz/bootstrap-validator
 */

+function(a){"use strict";function b(b){return b.is('[type="checkbox"]')?b.prop("checked"):b.is('[type="radio"]')?!!a('[name="'+b.attr("name")+'"]:checked').length:b.is("select[multiple]")?(b.val()||[]).length:b.val()}function c(b){return this.each(function(){var c=a(this),e=a.extend({},d.DEFAULTS,c.data(),"object"==typeof b&&b),f=c.data("bs.validator");(f||"destroy"!=b)&&(f||c.data("bs.validator",f=new d(this,e)),"string"==typeof b&&f[b]())})}var d=function(c,e){this.options=e,this.validators=a.extend({},d.VALIDATORS,e.custom),this.$element=a(c),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var c=a(this),d=c.attr("data-match");a(d).on("input.bs.validator",function(){b(c)&&c.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return b(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};d.VERSION="0.11.9",d.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',d.FOCUS_OFFSET=20,d.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},d.VALIDATORS={"native":function(a){var b=a[0];return b.checkValidity?!b.checkValidity()&&!b.validity.valid&&(b.validationMessage||"error!"):void 0},match:function(b){var c=b.attr("data-match");return b.val()!==a(c).val()&&d.DEFAULTS.errors.match},minlength:function(a){var b=a.attr("data-minlength");return a.val().length<b&&d.DEFAULTS.errors.minlength}},d.prototype.update=function(){var b=this;return this.$inputs=this.$element.find(d.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){b.clearErrors(a(this))})),this.toggleSubmit(),this},d.prototype.onInput=function(b){var c=this,d=a(b.target),e="focusout"!==b.type;this.$inputs.is(d)&&this.validateInput(d,e).done(function(){c.toggleSubmit()})},d.prototype.validateInput=function(c,d){var e=(b(c),c.data("bs.validator.errors"));c.is('[type="radio"]')&&(c=this.$element.find('input[name="'+c.attr("name")+'"]'));var f=a.Event("validate.bs.validator",{relatedTarget:c[0]});if(this.$element.trigger(f),!f.isDefaultPrevented()){var g=this;return this.runValidators(c).done(function(b){c.data("bs.validator.errors",b),b.length?d?g.defer(c,g.showErrors):g.showErrors(c):g.clearErrors(c),e&&b.toString()===e.toString()||(f=b.length?a.Event("invalid.bs.validator",{relatedTarget:c[0],detail:b}):a.Event("valid.bs.validator",{relatedTarget:c[0],detail:e}),g.$element.trigger(f)),g.toggleSubmit(),g.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:c[0]}))})}},d.prototype.runValidators=function(c){function d(a){return c.attr("data-"+a+"-error")}function e(){var a=c[0].validity;return a.typeMismatch?c.attr("data-type-error"):a.patternMismatch?c.attr("data-pattern-error"):a.stepMismatch?c.attr("data-step-error"):a.rangeOverflow?c.attr("data-max-error"):a.rangeUnderflow?c.attr("data-min-error"):a.valueMissing?c.attr("data-required-error"):null}function f(){return c.attr("data-error")}function g(a){return d(a)||e()||f()}var h=[],i=a.Deferred();return c.data("bs.validator.deferred")&&c.data("bs.validator.deferred").reject(),c.data("bs.validator.deferred",i),a.each(this.validators,a.proxy(function(a,d){var e=null;!b(c)&&!c.attr("required")||void 0===c.attr("data-"+a)&&"native"!=a||!(e=d.call(this,c))||(e=g(a)||e,!~h.indexOf(e)&&h.push(e))},this)),!h.length&&b(c)&&c.attr("data-remote")?this.defer(c,function(){var d={};d[c.attr("name")]=b(c),a.get(c.attr("data-remote"),d).fail(function(a,b,c){h.push(g("remote")||c)}).always(function(){i.resolve(h)})}):i.resolve(h),i.promise()},d.prototype.validate=function(){var b=this;return a.when(this.$inputs.map(function(){return b.validateInput(a(this),!1)})).then(function(){b.toggleSubmit(),b.focusError()}),this},d.prototype.focusError=function(){if(this.options.focus){var b=this.$element.find(".has-error :input:first");0!==b.length&&(a("html, body").animate({scrollTop:b.offset().top-d.FOCUS_OFFSET},250),b.focus())}},d.prototype.showErrors=function(b){var c=this.options.html?"html":"text",d=b.data("bs.validator.errors"),e=b.closest(".form-group"),f=e.find(".help-block.with-errors"),g=e.find(".form-control-feedback");d.length&&(d=a("<ul/>").addClass("list-unstyled").append(a.map(d,function(b){return a("<li/>")[c](b)})),void 0===f.data("bs.validator.originalContent")&&f.data("bs.validator.originalContent",f.html()),f.empty().append(d),e.addClass("has-error has-danger"),e.hasClass("has-feedback")&&g.removeClass(this.options.feedback.success)&&g.addClass(this.options.feedback.error)&&e.removeClass("has-success"))},d.prototype.clearErrors=function(a){var c=a.closest(".form-group"),d=c.find(".help-block.with-errors"),e=c.find(".form-control-feedback");d.html(d.data("bs.validator.originalContent")),c.removeClass("has-error has-danger has-success"),c.hasClass("has-feedback")&&e.removeClass(this.options.feedback.error)&&e.removeClass(this.options.feedback.success)&&b(a)&&e.addClass(this.options.feedback.success)&&c.addClass("has-success")},d.prototype.hasErrors=function(){function b(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(b).length},d.prototype.isIncomplete=function(){function c(){var c=b(a(this));return!("string"==typeof c?a.trim(c):c)}return!!this.$inputs.filter("[required]").filter(c).length},d.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},d.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},d.prototype.defer=function(b,c){return c=a.proxy(c,this,b),this.options.delay?(window.clearTimeout(b.data("bs.validator.timeout")),void b.data("bs.validator.timeout",window.setTimeout(c,this.options.delay))):c()},d.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var b=a(this),c=b.data("bs.validator.timeout");window.clearTimeout(c)&&b.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var b=a(this),c=b.data("bs.validator.originalContent");b.removeData("bs.validator.originalContent").html(c)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},d.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var e=a.fn.validator;a.fn.validator=c,a.fn.validator.Constructor=d,a.fn.validator.noConflict=function(){return a.fn.validator=e,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var b=a(this);c.call(b,b.data())})})}(jQuery);