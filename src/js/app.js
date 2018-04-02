$(function() {
	$('html, body').on('click', function(e) {
		if (e.target == document.documentElement) {
			$("html").removeClass("open-sidebar");
		}
	});

	$(".js-open-sidebar").on("click", function(){
		$("html").addClass("open-sidebar");
	});

	$("#regulamento").on("click", function(){
		if(this.checked) {
			$("#btn-inscricao").removeAttr("disabled");
			$("#btn-inscricao").removeClass("disabled");
		}
		else {
			$("#btn-inscricao").attr("disabled");
			$("#btn-inscricao").addClass("disabled");
		}
	});

	$("#pag-maos").on("click", function(){
		$("#valor").val("R$ 30,00");
	});

	$("#pag-banco").on("click", function(){
		$("#valor").val("R$ 30,00");
	});

	$("#pag-pagseguro").on("click", function(){
		$("#valor").val("R$ 35,00");
	});

	// BEGIN LOGIN (login)

	$("#form-login").submit(function(e) {
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.login.php?act=login",
			data: $("#form-login").serialize(),
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						if(retorno.href.length > 0) {
							window.location.href = retorno.href;
						}
						else {
							window.location.href = './';
						}
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						if(retorno.errno == "12010") {
							$('#alert').on('hidden.bs.modal', function (e) {
								window.location.href = 'provisoria';
							});
						}
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');
			    };
			}
		});
	});

	$("#btn-login").click(function(e) {
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.login.php?act=login",
			data: $("#form-login").serialize(),
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						if(retorno.href.length > 0) {
							window.location.href = retorno.href;
						}
						else {
							window.location.href = './';
						}
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						if(retorno.errno == "12010") {
							$('#alert').on('hidden.bs.modal', function (e) {
								window.location.href = 'provisoria';
							});
						}
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');
			    };
			}
		});
	});

	$('#btn-esqueceu-senha').click(function(e) {
		e.preventDefault();

		$('.mainlogin').hide();
		$('.mainform').show();
	});

	$('#btn-recuperar-senha').click(function(e) {
		e.preventDefault();
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.login.php?act=reset",
			data: $("#form-recuperar").serialize(),
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#alert-title').html("Solicitação enviada com sucesso!");
						$('#alert-content').html("Sua requisição para resetar sua senha foi realizada com sucesso. Aguarde o e-mail com as informações! Ao fechar esta mensagem a página será recarregada.");
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.reload();
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');
			    };
			}
		});
	});

	// END LOGIN (login)

	// BEGIN PROVISORIA (provisoria)

	$("#form-provisoria").submit(function(e) {
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.provisoria.php",
			data: $("#form-provisoria").serialize(),
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#alert-title').html("Senha alterada com sucesso!");
						$('#alert-content').html('Sua senha foi alterada definitivamente com sucesso! Ao fechar a mensagem você será redirecionado para o site!');
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.href = './';
						});

					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');
			    };
			}
		});
	});

	// END PROVISORIA (provisoria)
	
	// BEGIN INSCRICAO (inscricao)

    $('#nome_time').textext({
        plugins : 'autocomplete ajax',
        ajax : {
            url : 'acts/acts.inscricao.php?act=times',
            dataType : 'json',
            cacheResults : true
        }
    });

	$('#btn-voltar-inscricao').click(function(e) {
		e.preventDefault();

		$('.premain').hide();
		$('.inscmain').show();
	})

	$("#form-inscricao").submit(function(e) {
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.inscricao.php?act=add",
			data: $("#form-inscricao").serialize(),
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('.premain').show(function() {
							$('.inscmain').hide();

							$('#nome').val('');
							$('#email').val('');
							$('#telefone').val('');
							$('#time').val('');
							$('input[name="forma-pagto"]').prop('checked', false);
							$('#regulamento').prop('checked', false);
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');
			    };
			}
		});
	});

	// END INSCRICAO (inscricao)

	// BEGIN INDEX (index)

	if(window.location.pathname.indexOf('destaques') === -1 && 
	   window.location.pathname.indexOf('liga') === -1 &&
	   window.location.pathname.indexOf('mata_mata') === -1 &&
	   window.location.pathname.indexOf('rodada') === -1 &&
	   window.location.pathname.indexOf('eventos') === -1 &&
	   window.location.pathname.indexOf('inscricao') === -1 &&
	   window.location.pathname.indexOf('regulamento') === -1 &&
	   window.location.pathname.indexOf('login') === -1 &&
	   window.location.pathname.indexOf('logout') === -1 &&
	   window.location.pathname.indexOf('brasileiro') === -1 &&
	   window.location.pathname.indexOf('scouts') === -1 &&
	   window.location.pathname.indexOf('clube') === -1 &&
	   window.location.pathname.indexOf('dados_clube') === -1 &&
	   window.location.pathname.indexOf('meus_dados') === -1 &&
	   window.location.pathname.indexOf('provisoria') === -1) {
				
		// DESTAQUES RODADA
		$('#destaques-rodada').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.index.php?act=destaques-rodada",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('#destaques-rodada .card-block tbody').html('');

					if(retorno.succeed) {
						if(retorno.list.length > 0) {
							$.each(retorno.list, function(i, item) {
								$('#destaques-rodada .card-block tbody').append('<tr class="bg-success"><th scope="row" class="table-title">' + item.posicao + 'º</th><td><img src="img/escudos/' + item.escudo + '" class="img-fluid"></td><td>' + item.time + '</td><td>' + item.pontuacao.toFixed(2) + '</td></tr>');
							});
						}
						else {
							$('#destaques-rodada .card-block tbody').append('<tr class="bg-table"><td colspan="4" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');
						}

						$('#destaques-rodada .card-block').fadeIn("slow", function() {
							$('#loading').fadeOut();
							$('#loading').remove();
						});
						$('#destaques-rodada footer').fadeIn("slow");
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#destaques-rodada .card-block').hide();
						$('#destaques-rodada footer').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#destaques-rodada .card-block').hide();
					$('#destaques-rodada footer').hide();
					$('#loading').remove();
			    };
			}
		});

		// DESEMPENHO POR RODADA (GRAFICO)
		$('#desempenho-rodada').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.index.php?act=desempenho-rodada",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));
					$('#desempenho-rodada .card-block tbody').html('');
					if(retorno.succeed) {
						if(retorno.series.length > 0 && retorno.series[0].data && retorno.series[0].data.length > 0) {
							$('#desempenho-rodada .card-block').append('<canvas id="chart-desempenho-rodada"></canvas>');
							$.each(retorno.series, function(i, item) {
								var color = getRandomColor();
								item["backgroundColor"] = color;
								item["borderColor"] = color;
							});
							var myChart = new Chart($("#chart-desempenho-rodada"), {
						    type: 'line',
						    data: {
						        labels: retorno.labels,
						        datasets: retorno.series
						    },
							options: {
								responsive: true,
								hoverMode: 'label',
								stacked: false,
								scales: {
									xAxes: [
										{
											display: false,
											gridLines: {
												offsetGridLines: false
											},
											ticks: {
												stepSize: 1, 
												callback: function(value, index, values) {
							                        return "Rodada " + value;
							                    }
											}
										}
									],
									yAxes: [
										{
											labelString: 'Posição na Liga',
											ticks: {
												reverse: true,
												stepSize: 1, 
												callback: function(value, index, values) {
							                        return value + "º";
							                    }
											}
										}
									]
								},
								legend: {
									position: 'bottom'
								},
								tooltips: {
								    callbacks: {
								        label: function(tooltipItem, data) {
								            var label = data.datasets[tooltipItem.datasetIndex].label || '';

								            if (label) {
								                label += ' - ';
								            }
								            label += tooltipItem.yLabel + 'º lugar';

										    try {
									            var rodada = tooltipItem.index + 1;
									            var time = data.datasets[tooltipItem.datasetIndex].label;

												var data = $.ajax({
													type: "POST",
													url: "acts/acts.rodada.php?act=pontuacao&rodada=" + rodada + "&time=" + time,
	        										async: false
												}).responseText;

												var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));
												if(retorno && retorno.succeed)
				            						label += ' - ' + retorno.pontuacao + ' pts.';
										    }
										    catch (e) {
										    	console.log(e);
										    };

								            return label;
								        }
								    }
								}
							}
						});
						}
						else {
							$('#desempenho-rodada .card-block').append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
						}

						$('#desempenho-rodada .card-block').fadeIn("slow", function() {
							$('#loading').fadeOut();
							$('#loading').remove();
						});
						$('#desempenho-rodada footer').fadeIn("slow");
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#desempenho-rodada .card-block').hide();
						$('#desempenho-rodada footer').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#desempenho-rodada .card-block').hide();
					$('#desempenho-rodada footer').hide();
					$('#loading').remove();
			    }
			}
		});
				
		// DESEMPENHO GERAL
		$('#desempenho-geral').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.index.php?act=desempenho-geral&limit=8",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('#desempenho-geral .card-block tbody').html('');

					if(retorno.succeed) {
						if(retorno.list.length > 0) {
							$.each(retorno.list, function(i, item) {
								var bg = "bg-table";
								if(i < 6) 
									bg = "bg-success";
								$('#desempenho-geral .card-block tbody').append('<tr class="' + bg + '"><th scope="row" class="table-title">' + item.posicao + 'º</th><td><img src="img/escudos/' + item.escudo + '" class="img-fluid"></td><td>' + item.time + '</td><td>' + item.pontuacao.toFixed(2) + '</td><td>' + item.variacao + '</td></tr>');
							});
						}
						else {
							$('#desempenho-geral .card-block tbody').append('<tr class="bg-table"><td colspan="5" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');
						}

						$('#desempenho-geral .card-block').fadeIn("slow", function() {
							$('#loading').fadeOut();
							$('#loading').remove();
						});
						$('#desempenho-geral footer').fadeIn("slow");
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#desempenho-geral .card-block').hide();
						$('#desempenho-geral footer').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#desempenho-geral .card-block').hide();
					$('#desempenho-geral footer').hide();
					$('#loading').remove();
			    };
			}
		});

		// MATA-MATA EM ANDAMENTO
		$('#mata-mata-andamento').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.index.php?act=mata-mata-andamento",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('#mata-mata-andamento .card-block tbody').html('');

					if(retorno.succeed) {
						if(retorno.list.length > 0) {
							$.each(retorno.list, function(i, item) {
								$('#mata-mata-andamento .card-block').append('<div class="' + item.cor_fase + ' text-white"><i class="fa fa-trophy"></i> ' + item.nome + ' - ' + item.fase + '</div>');
							});
						}
						else {
							$('#mata-mata-andamento .card-block').append('<div class="bg-secondary center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
						}

						$('#mata-mata-andamento .card-block').fadeIn("slow", function() {
							$('#loading').fadeOut();
							$('#loading').remove();
						});
						$('#mata-mata-andamento footer').fadeIn("slow");
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#mata-mata-andamento .card-block').hide();
						$('#mata-mata-andamento footer').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#mata-mata-andamento .card-block').hide();
					$('#mata-mata-andamento footer').hide();
					$('#loading').remove();
			    }
			}
		});
	}

	// END INDEX (index)

	// BEGIN DESTAQUES (destaques)

	if(window.location.pathname.indexOf('destaques') !== -1) {

		// DESTAQUES RODADA
		$('#destaques').append('<div class="col-12" id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.destaques.php",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						if(retorno.list.length > 0) {
							var rodada = "";
							var c_times = 0;
							$.each(retorno.list, function(i, item) {
								if(rodada != item.rodada) {
									$('#destaques').append('<div class="col-sm-4"><div class="card"><div class="card-header"><header><h2 class="card-title card-destaque">Destaques da ' + item.rodada + 'º rodada</h2></header></div><div class="card-block"><table class="table table-responsive liga-csc"><thead><tr class="bg-warning"><th class="table-title">#</th><th class="table-title"></th><th class="table-title">Time</th><th class="table-title">Pontos</th></tr></thead><tbody id="body_' + item.rodada + '">');
									rodada = item.rodada;
									c_times = 0;
								}
								if(c_times < 4){
									$('#body_' + item.rodada).append('<tr class="bg-success"><th scope="row" class="table-title">' + item.posicao + 'º</th><td><img src="img/escudos/' + item.escudo + '" class="img-fluid"></td><td>' + item.time + '</td><td>' + item.pontuacao + '</td></tr>');
								}
								c_times++;
							});
						}
						else {
							$('#destaques').append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
						}
						
						$('#loading').fadeOut("fast", function() {
							$('#destaques .col-sm-4').fadeIn("slow");
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#destaques .col-sm-4').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#destaques .col-sm-4').hide();
					$('#loading').remove();
			    };
			}
		});
	}

	// END DESTAQUES (destaques)

	// BEGIN LIGA (liga)

	if(window.location.pathname.indexOf('liga') !== -1) {
				
		// DESEMPENHO GERAL
		$('#desempenho-liga').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.index.php?act=desempenho-geral",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('#desempenho-liga .card-block tbody').html('');

					if(retorno.succeed) {
						var rebaixamento = retorno.list.length - 4;
						if(retorno.list.length > 0) {
							$.each(retorno.list, function(i, item) {
								var bg = "bg-table";
								if(i < 6) 
									bg = "bg-success";
								if(i > 6 && i >= rebaixamento) 
									bg = "bg-danger";
								$('#desempenho-liga .card-block tbody').append('<tr class="' + bg + '"><th scope="row" class="table-title">' + item.posicao + 'º</th><td><img src="img/escudos/' + item.escudo + '" class="img-fluid"></td><td>' + item.time + '</td><td>' + item.pontuacao.toFixed(2) + '</td><td>' + item.pont_ult_rodada.toFixed(2) + '</td><td>' + item.variacao + '</td></tr>');
							});
						}
						else {
							$('#desempenho-liga .card-block tbody').append('<tr class="bg-table"><td colspan="6" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');
						}

						$('#loading').fadeOut("fast", function() {
							$('#desempenho-liga .card-block').fadeIn("slow");
							$('#desempenho-liga footer').fadeIn("slow");
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#desempenho-liga .card-block').hide();
						$('#desempenho-liga footer').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#desempenho-liga .card-block').hide();
					$('#desempenho-liga footer').hide();
					$('#loading').remove();
			    };
			}
		});
	}

	// END LIGA (liga)

	// BEGIN MATA-MATA (mata_mata)

	if(window.location.pathname.indexOf('mata_mata') !== -1) {

		// MATA-MATA
		$('#mata-mata').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.mata_mata.php?act=mata-mata",
			success: function(data)
			{
				try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						if(retorno.list.length > 0) {
							retorno.list.sort(function(a,b) {return (a.ordem > b.ordem) ? 1 : ((b.ordem > a.ordem) ? -1 : 0);} ); 

							var fase = "";
							$.each(retorno.list, function(i, item) {
								if(fase != item.fase) {
									$('#mata-mata').append('<div class="' + item.cor_fase + ' text-white"><i class="fa fa-trophy"></i> Mata Mata - ' + item.fase + '</div><div class="row" id="body_' + item.cor_fase + '">');
									fase = item.fase;
								}

								$('#body_' + item.cor_fase).append('<div class="col-sm-4 mata-and"><a href="#" class="open-confrontos" data-id="' + item.id + '"><img src="img/' + item.imagem + '" class="rounded img-fluid" alt="Mata Mata ' + item.fase + '"><h2 class="headline">' + item.nome + '</h2></a></div>');
							});
						}
						else {
							$('#mata-mata').append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
						}
						
						$('#loading').fadeOut("fast", function() {
							$('#mata-mata .bg-info').fadeIn("slow");
							$('#mata-mata .bg-success').fadeIn("slow");
							$('#mata-mata .bg-danger').fadeIn("slow");
							$('#mata-mata .mata-and').fadeIn("slow");
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#mata-mata .bg-info').hide();
						$('#mata-mata .bg-success').hide();
						$('#mata-mata .bg-danger').hide();
						$('#mata-mata .mata-and').hide();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#mata-mata .bg-info').hide();
					$('#mata-mata .bg-success').hide();
					$('#mata-mata .bg-danger').hide();
					$('#mata-mata .mata-and').hide();
					$('#loading').remove();
			    }
			}
		});

		$('body').on('click', '.open-confrontos', function(e) {
    		e.preventDefault();

			$('#loading-modal').modal({
				keyboard: false
			});

    		var id = $(this).data('id');

    		$.ajax({
				type: "POST",
				url: "acts/acts.mata_mata.php?act=confrontos&idmatamata=" + id,
				success: function(data)
				{
					try {
						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));
					
						$('#loading-modal').modal('hide');

						if(retorno.succeed) {
							$('#nome-mata-mata').html(retorno.mata_mata);
							
							if(retorno.list.length > 0) {
								$.each(retorno.list, function(n, nivel) {
									if(nivel.chave == 1) {
										$('#nav-niveis').append('<li class="nav-item"><a class="nav-link' + nivel.active + '" data-toggle="tab" href="#nivel' + nivel.nivel + '">' + nivel.fase + '</a></li>');
										$('#nav-confrontos').append('<div id="nivel' + nivel.nivel + '" class="tab-pane' + nivel.active + '"><h4 class="confrontos">Confrontos</h4><div class="row" id="cards' + nivel.nivel + '" >');
									}

									$.each(nivel.confrontos, function(c, confronto) {
										var desc_chave = 'Chave ' + confronto.chave;
										if(nivel.nivel == 1) {
											if(confronto.chave == 1)
												desc_chave = '<b>Final</b>';
											else
												desc_chave = '3º lugar';
										}
										var pont_time_1 = parseFloat(confronto.pontuacao_time_1);
										var pont_time_2 = parseFloat(confronto.pontuacao_time_2);
										$('#cards' + nivel.nivel).append('<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6"><div class="card"><p class="chaveamento">' + desc_chave + '</p><div class="card-block confronto"><div class="col-sm-6"><img src="img/escudos/' + confronto.escudo_time_1 + '" class="img-fluid center-block"><p class="clube">' + (pont_time_1 > pont_time_2 ? "<b>" + confronto.time_1 + "</b>" : confronto.time_1) + '</p><p class="pontuacao">' + pont_time_1 + '</p></div><p class="vs">X</p><div class="col-sm-6"><img src="img/escudos/' + confronto.escudo_time_2 + '" class="img-fluid center-block"><p class="clube">' + (pont_time_2 > pont_time_1 ? "<b>" + confronto.time_2 + "</b>" : confronto.time_2) + '</p><p class="pontuacao">' + pont_time_2 + '</p></div></div></div>');
									});
								});

								if($("#nav-niveis a.active").length == 0) {
									$("#nav-niveis a.nav-link").first().click();
								}
							}
							else {
								$('#nao-ha-dados').show();
							}
			
							$('#mainmata').fadeOut("fast", function() {
								$('#mainconfrontos').fadeIn("slow");
							});
						}
						else {
							$('#nome-mata-mata').html('');
							$('#nav-niveis').html('');
							$('#nav-confrontos').html('');
							$('#nao-ha-dados').hide();

							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');
						}
				    }
				    catch (e) {
						$('#nome-mata-mata').html('');
						$('#nav-niveis').html('');
						$('#nav-confrontos').html('');
						$('#nao-ha-dados').hide();

						$('#loading-modal').modal('hide');
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');
				    }
				}
			});
		});

		$('#voltar-mata-mata').click(function(e) {
    		e.preventDefault();

			$('#nome-mata-mata').html('');
			$('#nav-niveis').html('');
			$('#nav-confrontos').html('');
			$('#nao-ha-dados').hide();

			$('#mainconfrontos').fadeOut("fast", function() {
				$('#mainmata').fadeIn("slow");
			});
		});
	}

	// END MATA-MATA (mata_mata)

	// BEGIN RODADA (rodada)

	if(window.location.pathname.indexOf('rodada') !== -1) {

		// DESEMPENHO GERAL
		$('#pontrodada').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.rodada.php?act=rodada-rodada",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('#pontrodada .table-responsive tbody').html('');

					if(retorno.succeed) {
						if(retorno.linhas.length > 0) {
							$('#pontrodada .table-responsive thead').append(retorno.cabecalho);
							$.each(retorno.linhas, function(i, item) {
								$('#pontrodada .table-responsive tbody').append(item.linha);
							});
						}
						else {
							$('#pontrodada .table-responsive tbody').append('<tr class="bg-table"><td colspan="42" class="center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</td></tr>');
						}

						$('#loading').fadeOut("fast", function() {
							$('#pontrodada .table-responsive').fadeIn("slow");
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#pontrodada .table-responsive').hide();
						$('#loading').remove();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#pontrodada .table-responsive').hide();
					$('#loading').remove();
			    };
			}
		});

		// DESEMPENHO POR RODADA (GRAFICO)
		$('#grafico-rodada').append('<div id="loading-grafico"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.rodada.php?act=grafico-rodada",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));
					$('#grafico-rodada .card-block tbody').html('');
					if(retorno.succeed) {
						if(retorno.series.length > 0 && retorno.series[0].data && retorno.series[0].data.length > 0) {
							$('#grafico-rodada .card-block').append('<canvas id="chart-grafico-rodada"></canvas>');
							$.each(retorno.series, function(i, item) {
								var color = getRandomColor();
								item["backgroundColor"] = color;
								item["borderColor"] = color;
							});
							var myChart = new Chart($("#chart-grafico-rodada"), {
						    type: 'line',
						    data: {
						        labels: retorno.labels,
						        datasets: retorno.series
						    },
							options: {
								responsive: true,
								hoverMode: 'label',
								stacked: false,
								scales: {
									xAxes: [
										{
											display: false,
											gridLines: {
												offsetGridLines: false
											},
											ticks: {
												stepSize: 1, 
												callback: function(value, index, values) {
							                        return "Rodada " + value;
							                    }
											}
										}
									],
									yAxes: [
										{
											labelString: 'Posição na Liga',
											ticks: {
												reverse: true,
												stepSize: 1, 
												callback: function(value, index, values) {
							                        return value + "º";
							                    }
											}
										}
									]
								},
								legend: {
									position: 'bottom'
								},
								tooltips: {
								    callbacks: {
								        label: function(tooltipItem, data) {
								            var label = data.datasets[tooltipItem.datasetIndex].label || '';

								            if (label) {
								                label += ' - ';
								            }
							            	label += tooltipItem.yLabel + 'º lugar';

										    try {
									            var rodada = tooltipItem.index + 1;
									            var time = data.datasets[tooltipItem.datasetIndex].label;

												var data = $.ajax({
													type: "POST",
													url: "acts/acts.rodada.php?act=pontuacao&rodada=" + rodada + "&time=" + time,
	        										async: false
												}).responseText;

												var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));
												if(retorno && retorno.succeed)
				            						label += ' - ' + retorno.pontuacao + ' pts.';
										    }
										    catch (e) {
										    	console.log(e);
										    };

								            return label;
								        }
								    }
								}
							}
						});
						}
						else {
							$('#grafico-rodada .card-block').append('<div class="bg-default center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
						}

						$('#grafico-rodada .card-block').fadeIn("slow", function() {
							$('#loading-grafico').fadeOut();
							$('#loading-grafico').remove();
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#grafico-rodada .card-block').hide();
						$('#loading-grafico').remove();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#grafico-rodada .card-block').hide();
					$('#loading-grafico').remove();
			    }
			}
		});
	}
	
	// END RODADA (rodada)

	// BEGIN EVENTOS (eventos)

	if(window.location.pathname.indexOf('eventos') !== -1) {

		$('#eventos-container').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.eventos.php?act=listagem-eventos",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						if(retorno.eventos.length > 0) {
							$.each(retorno.eventos, function(i, evento) {
								var data = new Date(evento.data * 1000);
								var acoes = "";
								var selector = "";
								if(new Date() <= data) {
									selector = "#proximos-eventos";
									if(evento.confirmado) {
										acoes = '<a href="#" data-id="' + evento.id + '" class="btn btn-danger btn-remover-presenca"><i class="fa fa-ban"></i> Não vou poder ir mais</a>';
									}
									else {
										acoes = '<a href="#" data-id="' + evento.id + '" class="btn btn-success btn-confirmar-presenca"><i class="fa fa-check"></i> Confirmar Presença</a>';
									}
									acoes += '<span style="margin-left: 30px;"><b>' + evento.participantes + '</b> cartoleiros vão no evento!</span>';
								}
								else {
									selector = "#eventos-passados";
									acoes = '<p style="margin-top: 35px; margin-bottom: 0px;"><b>' + evento.participantes + '</b> cartoleiros foram a esse evento!</p>';
								}

								$(selector).append('<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 eventos-card"><div class="card"><div class="card-block"><h4 class="card-title">' + evento.titulo + '</h4><h6 class="card-subtitle mb-2 text-muted">Data: ' + formatDate(evento.data * 1000) + '</h6><p>Local: ' + evento.local + '</p><p class="card-text">' + evento.descricao + '</p>' + acoes + '</div></div></div>');
							});
						}

						if(retorno.eventos.length == 0) {
							$('#eventos-container').append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
						}


						$('#loading').fadeOut("fast", function() {
							if($('#proximos-eventos').children().length > 0) {
								$('#proximos-eventos').fadeIn("slow");
								$('#eventos-container .bg-success').fadeIn("slow");
							}

							if($('#eventos-passados').children().length > 0) {
								$('#eventos-passados').fadeIn("slow");
								$('#eventos-container .bg-info').fadeIn("slow");
							} 

							if($('#proximos-eventos').children().length == 0 && $('#eventos-passados').children().length == 0) {
								$('#eventos-container .bg-success').fadeIn("slow");
								$('#eventos-container .infor').fadeIn("slow");
							}
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#proximos-eventos').hide();
						$('#eventos-passados').hide();
						$('#eventos-container .bg-success').hide();
						$('#eventos-container .bg-info').hide();
						$('#loading').remove();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#proximos-eventos').hide();
					$('#eventos-passados').hide();
					$('#eventos-container .bg-success').hide();
					$('#eventos-container .bg-info').hide();
					$('#loading').remove();
			    };
			}
		});

		$('body').on('click', '.btn-confirmar-presenca', function(e) {
			e.preventDefault();

			$('#loading-modal').modal({
				keyboard: false
			});

    		var id = $(this).data('id');

			$.ajax({
				type: "POST",
				url: "acts/acts.eventos.php?act=confirmar-presenca&idevento=" + id,
				success: function(data)
				{
				    try {
						$('#loading-modal').modal('hide');

						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

						if(retorno.succeed) {
							$('#alert-title').html("Presença confirmada com sucesso!");
							$('#alert-content').html("Você confirmou sua presença no evento com sucesso! Ao fechar esta mensagem a página será recarregada.");
							$('#alert').modal('show');

							$('#alert').on('hidden.bs.modal', function (e) {
								window.location.reload();
							});
						}
						else {
							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');

							if(retorno.errno == "12010") {
								$('#alert').on('hidden.bs.modal', function (e) {
									window.location.href = 'provisoria';
								});
							}
						}
				    }
				    catch (e) {
						$('#loading-modal').modal('hide');
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');
				    };
				}
			});
		});

		$('body').on('click', '.btn-remover-presenca', function(e) {
			e.preventDefault();

			$('#loading-modal').modal({
				keyboard: false
			});

    		var id = $(this).data('id');

			$.ajax({
				type: "POST",
				url: "acts/acts.eventos.php?act=remover-presenca&idevento=" + id,
				success: function(data)
				{
				    try {
						$('#loading-modal').modal('hide');

						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

						if(retorno.succeed) {
							$('#alert-title').html("Presença removida com sucesso!");
							$('#alert-content').html("Não vai mais, arregão? A patroa não deixou? Fazer o que! Ao fechar esta mensagem a página será recarregada.");
							$('#alert').modal('show');

							$('#alert').on('hidden.bs.modal', function (e) {
								window.location.reload();
							});
						}
						else {
							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');

							if(retorno.errno == "12010") {
								$('#alert').on('hidden.bs.modal', function (e) {
									window.location.href = 'provisoria';
								});
							}
						}
				    }
				    catch (e) {
						$('#loading-modal').modal('hide');
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');
				    };
				}
			});
		});
	}
	
	// END EVENTOS (eventos)

	// BEGIN MEUS DADOS (meus_dados)

	$("#form-meus-dados").submit(function(e) {
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.meus_dados.php",
			data: $("#form-meus-dados").serialize(),
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#nome').val('');
						$('#email').val('');
						$('#telefone').val('');
						$('#senha').val('');
						$('#senha2').val('');

						$('#alert-title').html("Dados alterados com sucesso!");
						$('#alert-content').html("Você alterou seus dados com sucesso! Ao fechar esta mensagem a página será recarregada.");
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.reload();
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#nome').val('');
						$('#email').val('');
						$('#telefone').val('');
						$('#senha').val('');
						$('#senha2').val('');
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#nome').val('');
					$('#email').val('');
					$('#telefone').val('');
					$('#senha').val('');
					$('#senha2').val('');
			    };
			}
		});
	});

	// END MEUS DADOS (meus_dados)

	// BEGIN DADOS CLUBE (dados_clube)

	$("#form-dados-clube").submit(function(e) {
		e.preventDefault();

		$('#loading-modal').modal({
			keyboard: false
		});

		var formData = new FormData();
		formData.append('time', $('#time').val());
		formData.append('historia', $('#historia').val());
		formData.append('brasao', $('#brasao')[0].files[0]);

		$.ajax({
			type: "POST",
			url: "acts/acts.dados_clube.php",
			data : formData,
			processData: false,
			contentType: false,
			success: function(data)
			{
			    try {
					$('#loading-modal').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#nome').val('');
						$('#email').val('');
						$('#telefone').val('');
						$('#senha').val('');
						$('#senha2').val('');

						$('#alert-title').html("Dados alterados com sucesso!");
						$('#alert-content').html("Você alterou os dados do seu clube com sucesso! Ao fechar esta mensagem a página será recarregada.");
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.reload();
						});
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('#nome').val('');
						$('#email').val('');
						$('#telefone').val('');
						$('#senha').val('');
						$('#senha2').val('');
					}
			    }
			    catch (e) {
					$('#loading-modal').modal('hide');
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('#nome').val('');
					$('#email').val('');
					$('#telefone').val('');
					$('#senha').val('');
					$('#senha2').val('');
			    };
			}
		});
	});

	// END MEUS DADOS (meus_dados)

	// BEGIN CLUBE (clube)

	if(window.location.pathname.indexOf('clube') !== -1) {

		// HISTORIA DO CLUBE
		$('#escudos-container').append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
		$.ajax({
			type: "POST",
			url: "acts/acts.clube.php?act=escudos",
			success: function(data)
			{
			    try {
					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					$('.escudos').html('');

					if(retorno.succeed) {
						if(retorno.list.length > 0) {
							$.each(retorno.list, function(i, item) {
								$('.escudos').append('<li><a href="#" data-id="' + item.id + '" class="btn-historia-clube"><img src="img/escudos/' + item.escudo + '" class="img-fluid" alt="' + item.time + '" title="Visualizar história de ' + item.time + '"></a></li>');
							});

							$('.escudos').fadeIn("slow", function() {
								$('#loading').fadeOut();
								$('#loading').remove();
							});

    						loadHistoryFromClube(retorno.id_clube_default);
						}
						else {
							$('#escudos-container').append('<div class="col-12 center infor"><i class="fa fa-thumbs-down fa-2x"></i><br /><br />Não há dados a serem exibidos aqui.</div>');
							
							$('#escudos-container .infor').fadeIn("slow", function() {
								$('#loading').fadeOut();
								$('#loading').remove();
							});
						}
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');

						$('.escudos').hide();
						$('#escudos-container .infor').hide();
						$('#loading').remove();
					}
			    }
			    catch (e) {
					$('#alert-title').html("Erro ao fazer parse do JSON!");
					$('#alert-content').html(String(e.stack));
					$('#alert').modal('show');

					$('.escudos').hide();
					$('#escudos-container .infor').hide();
					$('#loading').remove();
			    };
			}
		});

		$('body').on('click', '.btn-historia-clube', function(e) {
			e.preventDefault();
    		loadHistoryFromClube($(this).data('id'));
		});

		function loadHistoryFromClube(idclube) {
			$('#loading-modal').modal({
				keyboard: false
			});
			$.ajax({
				type: "POST",
				url: "acts/acts.clube.php?act=historia&idclube=" + idclube,
				success: function(data)
				{
				    try {
						$('#loading-modal').modal('hide');

						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

						if(retorno.succeed) {
							$('.brasao').prop("src", "img/escudos/clube/" + retorno.escudo);
							$('.nome_time').html(retorno.nome_time);
							$('.ano_fundacao').html(retorno.ano_fundacao);
							$('.nome_presidente').html(retorno.nome_presidente);
							$('.text-hitoria').html(retorno.historia);
									
							$('.dropdown-menu').html('');
							if(retorno.list_temp.length > 0) {
								$.each(retorno.list_temp, function(t, temp) {
									if(temp.is_actual) {
										$('.dropdown-menu').append('<div class="dropdown-divider"></div><a class="dropdown-item disabled" href="#" onclick="return false;">' + temp.temporada + '</a>');
									}
									else {
										var role = "";
										if(t == 0) {
											role = 'role="tab"';
										}
										$('.dropdown-menu').append('<a class="dropdown-item" data-toggle="tab" href="#a' + temp.id + '" data-time-id="' + idclube + '" ' + role + '>' + temp.temporada + '</a>');
										$('.tab-content').append('<div class="tab-pane" id="a' + temp.id + '" role="tabpanel"></div>');
									}
								});
							}
									
							$('.geral-campeonatos').html('');
							if(retorno.list_camps.length > 0) {
								$.each(retorno.list_camps, function(t, temp) {
									if(temp.tipo == "liga") {
										var status_liga = "";
										if(temp.posicao == 1) {
											status_liga = '<img src="img/taca.png" class="img-fluid center-block">';
										} else {
											status_liga = '<h2 class="posicao">' + temp.posicao + 'º</h2>';
										}
										$('.geral-campeonatos').append('<div class="col-sm-3">' + status_liga + '<h3 class="nome-torneio">Cartolas sem cartola</h3><p class="ano">' + temp.temporada + '</p></div>');
									}

									if(temp.tipo == "mata_mata") {
										var status_mm = "";
										if(temp.campeao) {
											if(temp.mata_mata.toLowerCase().indexOf("kempes") >= 0) {
												status_mm = '<img src="img/mata-mata-kempes.png" class="img-fluid center-block">';
											} else {
												status_mm = '<img src="img/mata-mata.png" class="img-fluid center-block">';
											}
										} else {
											status_mm = '<h2 class="posicao">X</h2>';
										}
										$('.geral-campeonatos').append('<div class="col-sm-3">' + status_mm + '<h3 class="nome-torneio">' + temp.mata_mata + '</h3><p class="ano">' + temp.temporada + '</p></div>');
									}
								});
							}

							$('.desempenho-geral').click();
						}
						else {
							$('.brasao').prop("src", "");
							$('.nome_time').html('');
							$('.ano_fundacao').html('');
							$('.nome_presidente').html('');
							$('.text-hitoria').html('');
							$('.dropdown-menu').html('');
							$('.geral-campeonatos').html('');

							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');
						}
				    }
				    catch (e) {
						$('.brasao').prop("src", "");
						$('.nome_time').html('');
						$('.ano_fundacao').html('');
						$('.nome_presidente').html('');
						$('.text-hitoria').html('');
						$('.dropdown-menu').html('');
						$('.geral-campeonatos').html('');

						$('#loading-modal').modal('hide');
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');
				    };
				}
			});
		}

		$('body').on('click', '.dropdown-item', function(e) {
			var container = $(this).attr('href');
			var idano = $(this).attr('href').replace('#a', '');
			var idtime = $(this).data('time-id');

			$(container).append('<div id="loading"><p style="text-align: center;"><img src="img/loading2.svg" height="150px" border="0"><br />Aguarde! Carregando conteúdo...</p></div>');
			$.ajax({
				type: "POST",
				url: "acts/acts.clube.php?act=paineis&idano=" + idano + "&idtime=" + idtime,
				success: function(data)
				{
				    try {
						var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

						if(retorno.succeed) {
							$(container).html('');

							$(container).append('<div class="row painel-' + idano + '"><h1 class="headline-rodada">Temporada selecionada: <strong>' + retorno.temporada + '</strong></h1></div>');
							$(container).append('<div class="col-12 historia painel-' + idano + '"><div id="container-' + idano + '" class="row"></div><div class="btn btn-lg btn-primary btn-temporada"><a href="#" class="link-temporada">Confira sua pontuação detalhada da temporada ' + retorno.temporada + '</a></div></div>');

							if(retorno.list_camps.length > 0) {
								$.each(retorno.list_camps, function(t, temp) {
									if(temp.tipo == "liga") {
										var status_liga = "";
										if(temp.posicao == 1) {
											status_liga = '<img src="img/taca.png" class="img-fluid center-block">';
										} else {
											status_liga = '<h2 class="posicao">' + temp.posicao + 'º</h2>';
										}
										$('#container-' + idano).append('<div class="col-sm-3">' + status_liga + '<h3 class="nome-torneio">Cartolas sem cartola</h3><p class="ano">' + temp.temporada + '</p></div>');
									}

									if(temp.tipo == "mata_mata") {
										var status_mm = "";
										if(temp.campeao) {
											if(temp.mata_mata.toLowerCase().indexOf("kempes") >= 0) {
												status_mm = '<img src="img/mata-mata-kempes.png" class="img-fluid center-block">';
											} else {
												status_mm = '<img src="img/mata-mata.png" class="img-fluid center-block">';
											}
										} else {
											status_mm = '<h2 class="posicao">X</h2>';
										}
										$('#container-' + idano).append('<div class="col-sm-3">' + status_mm + '<h3 class="nome-torneio">' + temp.mata_mata + '</h3><p class="ano">' + temp.temporada + '</p></div>');
									}
								});
							}	

							$('#container-' + idano).append('<div class="col-sm-3"><h2 class="pontuacao_temp">' + retorno.max_pontos + '</h2><h3 class="nome-torneio">Maior pontuação</h3><p class="ano">' + retorno.temporada + '</p></div>');
							$('#container-' + idano).append('<div class="col-sm-3"><h2 class="pontuacao_temp">' + retorno.min_pontos + '</h2><h3 class="nome-torneio">Menor pontuação</h3><p class="ano">' + retorno.temporada + '</p></div>');
							$('#container-' + idano).append('<div class="col-sm-3"><h2 class="pontuacao_temp">' + retorno.media + '</h2><h3 class="nome-torneio">Média de pontos</h3><p class="ano">' + retorno.temporada + '</p></div>');

							$('.painel-' + idano).fadeIn("slow", function() {
								$('#loading').fadeOut();
								$('#loading').remove();
							});
						}
						else {
							$('#alert-title').html(retorno.title);
							$('#alert-content').html(retorno.errno + " - " + retorno.erro);
							$('#alert').modal('show');
						
							$('#loading').remove();
							$(container).html('');
						}
				    }
				    catch (e) {
						$('#alert-title').html("Erro ao fazer parse do JSON!");
						$('#alert-content').html(String(e.stack));
						$('#alert').modal('show');

						$('#loading').remove();
						$(container).html('');
				    }
				}
			});
		});
	}

	// END CLUBE (clube)

	// BEGIN BRASILEIRO (brasileiro)

	if(window.location.pathname.indexOf('brasileiro') !== -1) {

	}

	// END BRASILEIRO (brasileiro)

	// BEGIN SCOUTS (scouts)

	if(window.location.pathname.indexOf('scouts') !== -1) {
	}

	// END SCOUTS (scouts)
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

/*!
 * Validator v0.11.9 for Bootstrap 3, by @1000hz
 * Copyright 2017 Cina Saffary
 * Licensed under http://opensource.org/licenses/MIT
 *
 * https://github.com/1000hz/bootstrap-validator
 */

+function(a){"use strict";function b(b){return b.is('[type="checkbox"]')?b.prop("checked"):b.is('[type="radio"]')?!!a('[name="'+b.attr("name")+'"]:checked').length:b.is("select[multiple]")?(b.val()||[]).length:b.val()}function c(b){return this.each(function(){var c=a(this),e=a.extend({},d.DEFAULTS,c.data(),"object"==typeof b&&b),f=c.data("bs.validator");(f||"destroy"!=b)&&(f||c.data("bs.validator",f=new d(this,e)),"string"==typeof b&&f[b]())})}var d=function(c,e){this.options=e,this.validators=a.extend({},d.VALIDATORS,e.custom),this.$element=a(c),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var c=a(this),d=c.attr("data-match");a(d).on("input.bs.validator",function(){b(c)&&c.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return b(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};d.VERSION="0.11.9",d.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',d.FOCUS_OFFSET=20,d.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},d.VALIDATORS={"native":function(a){var b=a[0];return b.checkValidity?!b.checkValidity()&&!b.validity.valid&&(b.validationMessage||"error!"):void 0},match:function(b){var c=b.attr("data-match");return b.val()!==a(c).val()&&d.DEFAULTS.errors.match},minlength:function(a){var b=a.attr("data-minlength");return a.val().length<b&&d.DEFAULTS.errors.minlength}},d.prototype.update=function(){var b=this;return this.$inputs=this.$element.find(d.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){b.clearErrors(a(this))})),this.toggleSubmit(),this},d.prototype.onInput=function(b){var c=this,d=a(b.target),e="focusout"!==b.type;this.$inputs.is(d)&&this.validateInput(d,e).done(function(){c.toggleSubmit()})},d.prototype.validateInput=function(c,d){var e=(b(c),c.data("bs.validator.errors"));c.is('[type="radio"]')&&(c=this.$element.find('input[name="'+c.attr("name")+'"]'));var f=a.Event("validate.bs.validator",{relatedTarget:c[0]});if(this.$element.trigger(f),!f.isDefaultPrevented()){var g=this;return this.runValidators(c).done(function(b){c.data("bs.validator.errors",b),b.length?d?g.defer(c,g.showErrors):g.showErrors(c):g.clearErrors(c),e&&b.toString()===e.toString()||(f=b.length?a.Event("invalid.bs.validator",{relatedTarget:c[0],detail:b}):a.Event("valid.bs.validator",{relatedTarget:c[0],detail:e}),g.$element.trigger(f)),g.toggleSubmit(),g.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:c[0]}))})}},d.prototype.runValidators=function(c){function d(a){return c.attr("data-"+a+"-error")}function e(){var a=c[0].validity;return a.typeMismatch?c.attr("data-type-error"):a.patternMismatch?c.attr("data-pattern-error"):a.stepMismatch?c.attr("data-step-error"):a.rangeOverflow?c.attr("data-max-error"):a.rangeUnderflow?c.attr("data-min-error"):a.valueMissing?c.attr("data-required-error"):null}function f(){return c.attr("data-error")}function g(a){return d(a)||e()||f()}var h=[],i=a.Deferred();return c.data("bs.validator.deferred")&&c.data("bs.validator.deferred").reject(),c.data("bs.validator.deferred",i),a.each(this.validators,a.proxy(function(a,d){var e=null;!b(c)&&!c.attr("required")||void 0===c.attr("data-"+a)&&"native"!=a||!(e=d.call(this,c))||(e=g(a)||e,!~h.indexOf(e)&&h.push(e))},this)),!h.length&&b(c)&&c.attr("data-remote")?this.defer(c,function(){var d={};d[c.attr("name")]=b(c),a.get(c.attr("data-remote"),d).fail(function(a,b,c){h.push(g("remote")||c)}).always(function(){i.resolve(h)})}):i.resolve(h),i.promise()},d.prototype.validate=function(){var b=this;return a.when(this.$inputs.map(function(){return b.validateInput(a(this),!1)})).then(function(){b.toggleSubmit(),b.focusError()}),this},d.prototype.focusError=function(){if(this.options.focus){var b=this.$element.find(".has-error :input:first");0!==b.length&&(a("html, body").animate({scrollTop:b.offset().top-d.FOCUS_OFFSET},250),b.focus())}},d.prototype.showErrors=function(b){var c=this.options.html?"html":"text",d=b.data("bs.validator.errors"),e=b.closest(".form-group"),f=e.find(".help-block.with-errors"),g=e.find(".form-control-feedback");d.length&&(d=a("<ul/>").addClass("list-unstyled").append(a.map(d,function(b){return a("<li/>")[c](b)})),void 0===f.data("bs.validator.originalContent")&&f.data("bs.validator.originalContent",f.html()),f.empty().append(d),e.addClass("has-error has-danger"),e.hasClass("has-feedback")&&g.removeClass(this.options.feedback.success)&&g.addClass(this.options.feedback.error)&&e.removeClass("has-success"))},d.prototype.clearErrors=function(a){var c=a.closest(".form-group"),d=c.find(".help-block.with-errors"),e=c.find(".form-control-feedback");d.html(d.data("bs.validator.originalContent")),c.removeClass("has-error has-danger has-success"),c.hasClass("has-feedback")&&e.removeClass(this.options.feedback.error)&&e.removeClass(this.options.feedback.success)&&b(a)&&e.addClass(this.options.feedback.success)&&c.addClass("has-success")},d.prototype.hasErrors=function(){function b(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(b).length},d.prototype.isIncomplete=function(){function c(){var c=b(a(this));return!("string"==typeof c?a.trim(c):c)}return!!this.$inputs.filter("[required]").filter(c).length},d.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},d.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},d.prototype.defer=function(b,c){return c=a.proxy(c,this,b),this.options.delay?(window.clearTimeout(b.data("bs.validator.timeout")),void b.data("bs.validator.timeout",window.setTimeout(c,this.options.delay))):c()},d.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var b=a(this),c=b.data("bs.validator.timeout");window.clearTimeout(c)&&b.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var b=a(this),c=b.data("bs.validator.originalContent");b.removeData("bs.validator.originalContent").html(c)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},d.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var e=a.fn.validator;a.fn.validator=c,a.fn.validator.Constructor=d,a.fn.validator.noConflict=function(){return a.fn.validator=e,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var b=a(this);c.call(b,b.data())})})}(jQuery);