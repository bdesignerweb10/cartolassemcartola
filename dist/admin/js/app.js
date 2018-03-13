$(function() {

	$('html, body').on('click', function(e) {
		if (e.target == document.documentElement) {
			$("html").removeClass("open-sidebar");
		}
	});

	$(".js-open-sidebar").on("click", function(){
		$("html").addClass("open-sidebar");
	});

	$("form").submit(function(e) {
		$('#loading').modal({
			keyboard: false
		});
	});

	// BEGIN LOGIN (login.php)

	$("#form-login").submit(function(e) {
		e.preventDefault();

		$.ajax({
			type: "POST",
			url: "acts/acts.login.php",
			data: $("#form-login").serialize(),
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					window.location.href = 'home.php';
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
	});

	// END LOGIN (login.php)

	// BEGIN TEMPORADAS (temporadas.php)

    $('#btn-voltar-temporadas').click(function(e) {
		e.preventDefault();

    	$('#headline-temporada').html('');

    	$('#id').val('');
    	$('#descricao').prop("readonly", null);
    	$('#descricao').val('');
    	$('#passo-ano').prop("disabled", null);
    	$('#box-rodada').hide();

    	$('#sel-content').html('');
    	$('#passo-rodada').prop("disabled", null);
    	$("#voltar-ano").prop("disabled", null);
    	$('#box-confirmacao').hide();

    	$('#resumo-temporada').html('');
    	$('#resumo-rodadas').html('');

		$('.mainform').hide();
		$('.maintable').show();
    });	

    $('#btn-add-temporadas').click(function(e) {
		e.preventDefault();

		$('.maintable').hide();
		$('.mainform').show();

    	$('#headline-temporada').html('Cadastro de nova temporada');

    	$('#id').val('');

    	$('#passo-confirmacao').data('act', 'add');
    	$('#passo-confirmacao').data('temporada', null);
    });	

    $('.btn-edit-temporadas').click(function(e) {
		e.preventDefault();

		$('.maintable').hide();
		$('.mainform').show();

    	var temporada = $(this).data('temporada');

    	$('#passo-confirmacao').data('act', 'edit');
    	$('#passo-confirmacao').data('temporada', temporada);

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=showupd&idano=" + temporada,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
    				$('#headline-temporada').html('Editando a temporada ' + retorno.descricao);
			    	
			    	$('#id').val(temporada / 98478521);
					$('#descricao').val(retorno.descricao);
					$('#descricao').prop("readonly", "readonly");
			    	$('#passo-ano').prop("disabled", "disabled");

    				$("#voltar-ano").prop("disabled", "disabled");
			    	$('#passo-rodada').prop("disabled", null);
					$('#box-rodada').show();

					$('#sel-content').append('<div class="col-12"><div class="form-check" style="margin-bottom:20px;"><label class="form-check-label"><input type="checkbox" class="form-check-input sel-todos" />&nbsp;&nbsp;&nbsp;Selecionar todos</label></div></div>');

					$.each(retorno.list, function(i, item) {
						$('#sel-content').append('<div class="col-6"><label class="form-check-label"><input type="checkbox" id="rodada[' + item.id + ']" name="rodada[' + item.id + ']" class="form-check-input sel-rodadas" value="' + item.id + '" ' + (item.has_temporada ? 'checked' : '') + ' />&nbsp;&nbsp;&nbsp;Rodada #' + item.descricao + '</label></div>');
					});
				}
				else {
    				$('#headline-temporada').html('');

    				$('#id').val('');
			    	$('#descricao').prop("readonly", null);
			    	$('#descricao').val('');
			    	$('#passo-ano').prop("disabled", null);
			    	$('#box-rodada').hide();

			    	$('#sel-content').html('');
			    	$('#passo-rodada').prop("disabled", null);
			    	$("#voltar-ano").prop("disabled", null);
			    	$('#box-confirmacao').hide();
			    	
			    	$('#resumo-temporada').html('');
			    	$('#resumo-rodadas').html('');

					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
    });	

    $('.btn-del-temporadas').click(function(e) {
		e.preventDefault();

		$('#loading').modal({
			keyboard: false
		});

    	var temporada = $(this).data('temporada');

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=del&idano=" + temporada,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Registro removido com sucesso!");
					$('#alert-content').html("A remoção do registro foi efetuada com sucesso! Ao fechar esta mensagem a página será recarregada.");
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
		});
    });	

    $('#passo-ano').click(function(e) {
    	e.preventDefault();

		$('#loading').modal({
			keyboard: false
		});

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=selrod",
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#sel-content').append('<div class="col-12"><div class="form-check" style="margin-bottom:20px;"><label class="form-check-label"><input type="checkbox" class="form-check-input sel-todos" />&nbsp;&nbsp;&nbsp;Selecionar todos</label></div></div>');

					$.each(retorno.list, function(i, item) {
						$('#sel-content').append('<div class="col-6"><label class="form-check-label"><input type="checkbox" id="rodada[' + item.id + ']" name="rodada[' + item.id + ']" class="form-check-input sel-rodadas" value="' + item.id + '" ' + (item.has_temporada ? 'checked' : '') + ' />&nbsp;&nbsp;&nbsp;Rodada #' + item.descricao + '</label></div>');
					});
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});

    	$('#descricao').prop("readonly", "readonly");
    	$(this).prop("disabled", "disabled");
    	$('#box-rodada').show();
    });	

	$('body').on('click', '.sel-todos', function() {
		$(".sel-rodadas").prop('checked', $(".sel-todos").is(':checked'));
	});

    $('#voltar-ano').click(function(e) {
    	e.preventDefault();

    	$('#sel-content').html('');
    	$('#descricao').prop("readonly", null);
    	$('#passo-ano').prop("disabled", null);
    	$('#box-rodada').hide();
    });	

    $('#passo-rodada').click(function(e) {
    	e.preventDefault();

    	$('#resumo-temporada').html("Temporada: " + $('#descricao').val());
    	$('#resumo-rodadas').html("Total rodadas: " + $('.sel-rodadas:checked').length);

    	$(".sel-todos").prop("disabled", "disabled");
		var cloned_check = $("#sel-content").clone();
    	$(".sel-rodadas").prop("disabled", "disabled");
    	cloned_check.appendTo("#box-rodada").addClass('check-duplicated');

    	$("#voltar-ano").prop("disabled", "disabled");
    	$(this).prop("disabled", "disabled");
    	$('#box-confirmacao').show();
    });	

    $('#voltar-rodada').click(function(e) {
    	e.preventDefault();

    	$(".sel-todos").prop("disabled", null);
    	$(".sel-rodadas").prop("disabled", null);
    	$(".check-duplicated").remove();
    	$("#voltar-ano").prop("disabled", null);
    	$("#passo-rodada").prop("disabled", null);
    	$('#box-confirmacao').hide();
    });	

    $('#passo-confirmacao').click(function(e) {
    	e.preventDefault();

    	var act = $('#passo-confirmacao').data('act');
    	var temporada = $('#passo-confirmacao').data('temporada');

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=" + act + "&idano=" + temporada,
			data: $("#form-temporadas").serialize(),
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Registro " + (act == 'add' ? "adicionado" : "editado") + " com sucesso!");
					$('#alert-content').html("A " + (act == 'add' ? "adição" : "edição") + " do registro foi efetuada com sucesso! Ao fechar esta mensagem a página será recarregada.");
					$('#alert').modal('show');

					$('#alert').on('hidden.bs.modal', function (e) {
						window.location.reload();
					})
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
    });

    // END TEMPORADAS (temporadas.php)

	// BEGIN TIMES TEMPORADAS (times_temporadas.php)

	$('.btn-times-temporada').click(function(e) {
		e.preventDefault();

    	var temporada = $(this).data('temporada');

		$.ajax({
			type: "POST",
			url: "acts/acts.times_temporadas.php?act=getanotemp&idano=" + temporada,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('.maintable').hide();
					$('.maintemporada').show();

					$('#headline-time-temporada').html('Gerenciando times inscritos na temporada ' + retorno.descricao);

					if(retorno.list.length > 0) {
						$.each(retorno.list, function(i, item) {

							var botao_ativar = (item.pode_ativar == 1 ? "<a href='#' class='btn-ativar-inscricao' data-time='" + item.id_time +  "' data-temporada='" + temporada + "' alt='Inscrever " + item.time +  " na temporada' title='Inscrever " + item.time +  " na temporada'><i class='fa fa-rocket fa-2x edit'></i></a>" : "<i class='fa fa-rocket fa-2x edit-disabled' alt='Não é possível inscrever " + item.time +  " na temporada' title='Não é possível inscrever " + item.time +  " na temporada'></i>");
							var botao_inativar = (item.pode_desativar == 1 ? "<a href='#' class='btn-desativar-inscricao' data-time='" + item.id_time +  "' data-temporada='" + temporada + "' alt='Remover " + item.time +  " da temporada' title='Remover " + item.time +  " da temporada'><i class='fa fa-trash fa-2x del'></i></a>" : "<i class='fa fa-trash fa-2x del-disabled' alt='Não é possível remover " + item.time +  " da temporada' title='Não é possível remover " + item.time +  " da temporada'></i>");

							$('#lista-times-temporada').append("<tr>" +
						                							"<th scope='row' class='center'>" + item.id +  "</th>" +
						                							"<td>" + item.time + "</td>" +
						                							"<td>" + item.presidente + "</td>" +
						                							"<td class='center'>" + item.posicao_liga + " º</td>" +
						                							"<td class='center'>" + item.pontuacao + " pts.</td>" +
						                							"<td class='center'>" + (item.ativo == 1 ? "<i class='fa fa-check fa-2x add' alt='Time ativo' title='Time está ativo'></i>" : "<i class='fa fa-times fa-2x del' alt='Time inativo' title='Time ainda não está ativo'></i>") + "</td>" +
						                							"<td class='center'>" + (item.ativo == 1 ? botao_inativar : botao_ativar) + "</td>" +
					                							"</tr>");
						});
					}
					else {
						$('#lista-times-temporada').append("<tr><td colspan='7' class='center'>Não há dados a serem exibidos para a listagem.</td></tr>");
					}
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');

					$('#headline-time-temporada').html('');
				}
			}
		});
	});

	$('body').on('click', '.btn-ativar-inscricao', function(e) {
		e.preventDefault();

		$('#loading').modal({
			keyboard: false
		});

    	var time = $(this).data('time');
    	var temporada = $(this).data('temporada');

		$.ajax({
			type: "POST",
			url: "acts/acts.times_temporadas.php?act=ativar&idtime=" + time + "&idano=" + temporada,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Você finalizou a inscrição do time!");
					$('#alert-content').html("O time foi inscrito com sucesso na temporada! Ao fechar esta mensagem a página será recarregada.");
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
		});
    });	

	$('body').on('click', '.btn-desativar-inscricao', function(e) {
		e.preventDefault();

		$('#loading').modal({
			keyboard: false
		});

    	var time = $(this).data('time');
    	var temporada = $(this).data('temporada');

		$.ajax({
			type: "POST",
			url: "acts/acts.times_temporadas.php?act=desativar&idtime=" + time + "&idano=" + temporada,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Você removeu o time da temporada!");
					$('#alert-content').html("O time selecionado foi removido da temporada com sucesso! Ao fechar esta mensagem a página será recarregada.");
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
		});
    });	

    $('#btn-voltar-lista-temporadas').click(function(e) {
		e.preventDefault();
    	
		$('.maintable').show();
		$('.maintemporada').hide();

		$('#headline-time-temporada').html('');
		$('#lista-times-temporada').html('');
    });	

    // END TIMES TEMPORADAS (times_temporadas.php)

	// BEGIN GERENCIAR TIMES (gerenciar_times.php)
	
    $('#btn-voltar-times').click(function(e) {
		e.preventDefault();

		$('.mainform').hide();
		$('.maintable').show();

    	$('#btn-salvar-time').data('id', null);
    	$('#headline-ger-times').html('');
		$('.headline-form').html('');
    });	

    $('.btn-edit-time').click(function(e) {
		e.preventDefault();

    	var id = $(this).data('id');

		$.ajax({
			type: "POST",
			url: "acts/acts.gerenciar_times.php?act=showupd&idtime=" + id,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('.maintable').hide();
					$('.mainform').show();

    				$('#btn-salvar-time').data('id', id);
			    	$('#headline-ger-times').html('Editar o time ' + retorno.dados.nome_time);
					$('.headline-form').html('Edite as informações do time!');
			    	
			    	$('#id').val(retorno.dados.id);
			    	$('#nome_time').val(retorno.dados.nome_time);
			    	$('#nome_presidente').val(retorno.dados.nome_presidente);
			    	$('#email').val(retorno.dados.email);
			    	$('#telefone').val(retorno.dados.telefone);
			    	$('#historia').val(retorno.dados.historia);
				}
				else {
					$('.maintable').show();
					$('.mainform').hide();
    				
    				$('#btn-salvar-time').data('id', null);
			    	$('#headline-ger-times').html('');
					$('.headline-form').html('');
			    	
			    	$('#id').val('');
			    	$('#nome_time').val('');
			    	$('#nome_presidente').val('');
			    	$('#email').val('');
			    	$('#telefone').val('');
			    	$('#historia').val('');

					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
    });	

    $('.btn-desativar-time').click(function(e) {
		e.preventDefault();

		$('#loading').modal({
			keyboard: false
		});

    	var id = $(this).data('id');

		$.ajax({
			type: "POST",
			url: "acts/acts.gerenciar_times.php?act=desativar&idtime=" + id,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Você desativou o time!");
					$('#alert-content').html("O time selecionado foi desativado com sucesso! Ao fechar esta mensagem a página será recarregada.");
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
		});
    });	

    $('#btn-salvar-time').click(function(e) {
    	e.preventDefault();

    	var id = $(this).data('id');

		$.ajax({
			type: "POST",
			url: "acts/acts.gerenciar_times.php?act=edit&idtime=" + id,
			data: $("#form-temporadas").serialize(),
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html($('#nome_time').val() + " alterado com sucesso!");
					$('#alert-content').html("A alteração de " + $('#nome_time').val() + " foi efetuada com sucesso! Ao fechar esta mensagem a página será recarregada.");
					$('#alert').modal('show');

					$('#alert').on('hidden.bs.modal', function (e) {
						window.location.reload();
					})
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
    });

    // END GERENCIAR TIMES (gerenciar_times.php)

	// BEGIN PONTUACAO (pontuacoes.php)

    $('.btn-salvar-pontuacoes').click(function(e) {
    	e.preventDefault();

		$.ajax({
			type: "POST",
			url: "acts/acts.pontuacoes.php?act=updpont",
			data: $("#form-pontuacoes").serialize(),
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Pontuações lançadas com sucesso!");
					$('#alert-content').html("As pontuações dos times na rodada foram atualizadas com sucesso! Ao fechar esta mensagem a página será recarregada.");
					$('#alert').modal('show');

					$('#alert').on('hidden.bs.modal', function (e) {
						window.location.reload();
					})
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
    });	

    // END PONTUACAO (pontuacoes.php)

	// BEGIN CONFIGURAÇÕES (configuracoes.php)

    $('#btn-abrir-temporada').click(function(e) {
    	e.preventDefault();

		$('#confirm-title').html("ATENÇÃO!!");
		$('#confirm-content').html("Você irá ABRIR a temporada e o sistema estará pronto para ser usado!<br /><br />Esse processo é IRREVERSÍVEL!");
		$('#confirm').modal('show');

    	$('#btn-confirm-modal').click(function(e) {
			$('#confirm').modal('hide');
			
			$('#loading').modal({
				keyboard: false
			});

			$.ajax({
				type: "POST",
				url: "acts/acts.configuracoes.php?act=abrirtemporada",
				success: function(data)
				{
					$('#loading').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#alert-title').html("Temporada aberta com sucesso!");
						$('#alert-content').html("A temporada foi aberta com sucesso! Que começem os jogos!<br /><br />Ao fechar esta mensagem a página será recarregada.");
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.reload();
						})
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');
					}
				}
	    	});
	    });	
    });	

    $('#btn-fechar-temporada').click(function(e) {
    	e.preventDefault();

		$('#confirm-title').html("ATENÇÃO!!");
		$('#confirm-content').html("Você irá ENCERRAR a temporada e a temporada será alterada para do próximo ano!<br /><br />Esse processo é IRREVERSÍVEL!");
		$('#confirm').modal('show');

    	$('#btn-confirm-modal').click(function(e) {
			$('#confirm').modal('hide');

			$('#loading').modal({
				keyboard: false
			});

			$.ajax({
				type: "POST",
				url: "acts/acts.configuracoes.php?act=fechartemporada",
				success: function(data)
				{
					$('#loading').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#alert-title').html("Temporada encerrada com sucesso!");
						$('#alert-content').html("A temporada foi encerrada com sucesso! Seja bem vindo a temporada " + retorno.rodada + " e até ano que vem!<br /><br />Ao fechar esta mensagem a página será recarregada.");
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
			});
    	});
    });	

    $('#btn-abrir-mercado').click(function(e) {
    	e.preventDefault();

		$('#confirm-title').html("ATENÇÃO!!");
		$('#confirm-content').html("Você irá ABRIR o mercado e a rodada atual será alterada!<br /><br />Esse processo é IRREVERSÍVEL!");
		$('#confirm').modal('show');

    	$('#btn-confirm-modal').click(function(e) {
			$('#confirm').modal('hide');

			$('#loading').modal({
				keyboard: false
			});

			$.ajax({
				type: "POST",
				url: "acts/acts.configuracoes.php?act=abrirmercado",
				success: function(data)
				{
					$('#loading').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#alert-title').html("Mercado aberto com sucesso!");
						$('#alert-content').html("O mercado foi aberto com sucesso! Você está na rodada " + retorno.rodada + "!<br /><br />Ao fechar esta mensagem a página será recarregada.");
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.reload();
						})
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');
					}
				}
			});
    	});
    });	

    $('#btn-fechar-mercado').click(function(e) {
    	e.preventDefault();

		$('#confirm-title').html("ATENÇÃO!!");
		$('#confirm-content').html("Você irá FECHAR o mercado! Aproveite para lançar e conferir as pontuações!<br /><br />Esse processo é IRREVERSÍVEL!");
		$('#confirm').modal('show');

    	$('#btn-confirm-modal').click(function(e) {
			$('#confirm').modal('hide');

			$('#loading').modal({
				keyboard: false
			});

			$.ajax({
				type: "POST",
				url: "acts/acts.configuracoes.php?act=fecharmercado",
				success: function(data)
				{
					$('#loading').modal('hide');

					var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

					if(retorno.succeed) {
						$('#alert-title').html("Mercado fechado com sucesso!");
						$('#alert-content').html("O mercado foi fechado com sucesso! Não se esqueça de lançar e conferir a pontuação de todos os times!<br /><br />Ao fechar esta mensagem a página será recarregada.");
						$('#alert').modal('show');

						$('#alert').on('hidden.bs.modal', function (e) {
							window.location.reload();
						})
					}
					else {
						$('#alert-title').html(retorno.title);
						$('#alert-content').html(retorno.errno + " - " + retorno.erro);
						$('#alert').modal('show');
					}
				}
			});
		});
    });	

    $('#btn-dados-config').click(function(e) {
    	e.preventDefault();

		$.ajax({
			type: "POST",
			url: "acts/acts.configuracoes.php?act=upddados",
			data: $("#form-config").serialize(),
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
					$('#alert-title').html("Dados alterados com sucesso!");
					$('#alert-content').html("As configurações foram alteradas com sucesso! Ao fechar esta mensagem a página será recarregada.");
					$('#alert').modal('show');

					$('#alert').on('hidden.bs.modal', function (e) {
						window.location.reload();
					})
				}
				else {
					$('#alert-title').html(retorno.title);
					$('#alert-content').html(retorno.errno + " - " + retorno.erro);
					$('#alert').modal('show');
				}
			}
		});
    });	

    // END CONFIGURAÇÕES (configuracoes.php)
});

/*!
 * Validator v0.11.9 for Bootstrap 3, by @1000hz
 * Copyright 2017 Cina Saffary
 * Licensed under http://opensource.org/licenses/MIT
 *
 * https://github.com/1000hz/bootstrap-validator
 */

+function(a){"use strict";function b(b){return b.is('[type="checkbox"]')?b.prop("checked"):b.is('[type="radio"]')?!!a('[name="'+b.attr("name")+'"]:checked').length:b.is("select[multiple]")?(b.val()||[]).length:b.val()}function c(b){return this.each(function(){var c=a(this),e=a.extend({},d.DEFAULTS,c.data(),"object"==typeof b&&b),f=c.data("bs.validator");(f||"destroy"!=b)&&(f||c.data("bs.validator",f=new d(this,e)),"string"==typeof b&&f[b]())})}var d=function(c,e){this.options=e,this.validators=a.extend({},d.VALIDATORS,e.custom),this.$element=a(c),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var c=a(this),d=c.attr("data-match");a(d).on("input.bs.validator",function(){b(c)&&c.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return b(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};d.VERSION="0.11.9",d.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',d.FOCUS_OFFSET=20,d.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},d.VALIDATORS={"native":function(a){var b=a[0];return b.checkValidity?!b.checkValidity()&&!b.validity.valid&&(b.validationMessage||"error!"):void 0},match:function(b){var c=b.attr("data-match");return b.val()!==a(c).val()&&d.DEFAULTS.errors.match},minlength:function(a){var b=a.attr("data-minlength");return a.val().length<b&&d.DEFAULTS.errors.minlength}},d.prototype.update=function(){var b=this;return this.$inputs=this.$element.find(d.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){b.clearErrors(a(this))})),this.toggleSubmit(),this},d.prototype.onInput=function(b){var c=this,d=a(b.target),e="focusout"!==b.type;this.$inputs.is(d)&&this.validateInput(d,e).done(function(){c.toggleSubmit()})},d.prototype.validateInput=function(c,d){var e=(b(c),c.data("bs.validator.errors"));c.is('[type="radio"]')&&(c=this.$element.find('input[name="'+c.attr("name")+'"]'));var f=a.Event("validate.bs.validator",{relatedTarget:c[0]});if(this.$element.trigger(f),!f.isDefaultPrevented()){var g=this;return this.runValidators(c).done(function(b){c.data("bs.validator.errors",b),b.length?d?g.defer(c,g.showErrors):g.showErrors(c):g.clearErrors(c),e&&b.toString()===e.toString()||(f=b.length?a.Event("invalid.bs.validator",{relatedTarget:c[0],detail:b}):a.Event("valid.bs.validator",{relatedTarget:c[0],detail:e}),g.$element.trigger(f)),g.toggleSubmit(),g.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:c[0]}))})}},d.prototype.runValidators=function(c){function d(a){return c.attr("data-"+a+"-error")}function e(){var a=c[0].validity;return a.typeMismatch?c.attr("data-type-error"):a.patternMismatch?c.attr("data-pattern-error"):a.stepMismatch?c.attr("data-step-error"):a.rangeOverflow?c.attr("data-max-error"):a.rangeUnderflow?c.attr("data-min-error"):a.valueMissing?c.attr("data-required-error"):null}function f(){return c.attr("data-error")}function g(a){return d(a)||e()||f()}var h=[],i=a.Deferred();return c.data("bs.validator.deferred")&&c.data("bs.validator.deferred").reject(),c.data("bs.validator.deferred",i),a.each(this.validators,a.proxy(function(a,d){var e=null;!b(c)&&!c.attr("required")||void 0===c.attr("data-"+a)&&"native"!=a||!(e=d.call(this,c))||(e=g(a)||e,!~h.indexOf(e)&&h.push(e))},this)),!h.length&&b(c)&&c.attr("data-remote")?this.defer(c,function(){var d={};d[c.attr("name")]=b(c),a.get(c.attr("data-remote"),d).fail(function(a,b,c){h.push(g("remote")||c)}).always(function(){i.resolve(h)})}):i.resolve(h),i.promise()},d.prototype.validate=function(){var b=this;return a.when(this.$inputs.map(function(){return b.validateInput(a(this),!1)})).then(function(){b.toggleSubmit(),b.focusError()}),this},d.prototype.focusError=function(){if(this.options.focus){var b=this.$element.find(".has-error :input:first");0!==b.length&&(a("html, body").animate({scrollTop:b.offset().top-d.FOCUS_OFFSET},250),b.focus())}},d.prototype.showErrors=function(b){var c=this.options.html?"html":"text",d=b.data("bs.validator.errors"),e=b.closest(".form-group"),f=e.find(".help-block.with-errors"),g=e.find(".form-control-feedback");d.length&&(d=a("<ul/>").addClass("list-unstyled").append(a.map(d,function(b){return a("<li/>")[c](b)})),void 0===f.data("bs.validator.originalContent")&&f.data("bs.validator.originalContent",f.html()),f.empty().append(d),e.addClass("has-error has-danger"),e.hasClass("has-feedback")&&g.removeClass(this.options.feedback.success)&&g.addClass(this.options.feedback.error)&&e.removeClass("has-success"))},d.prototype.clearErrors=function(a){var c=a.closest(".form-group"),d=c.find(".help-block.with-errors"),e=c.find(".form-control-feedback");d.html(d.data("bs.validator.originalContent")),c.removeClass("has-error has-danger has-success"),c.hasClass("has-feedback")&&e.removeClass(this.options.feedback.error)&&e.removeClass(this.options.feedback.success)&&b(a)&&e.addClass(this.options.feedback.success)&&c.addClass("has-success")},d.prototype.hasErrors=function(){function b(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(b).length},d.prototype.isIncomplete=function(){function c(){var c=b(a(this));return!("string"==typeof c?a.trim(c):c)}return!!this.$inputs.filter("[required]").filter(c).length},d.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},d.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},d.prototype.defer=function(b,c){return c=a.proxy(c,this,b),this.options.delay?(window.clearTimeout(b.data("bs.validator.timeout")),void b.data("bs.validator.timeout",window.setTimeout(c,this.options.delay))):c()},d.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var b=a(this),c=b.data("bs.validator.timeout");window.clearTimeout(c)&&b.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var b=a(this),c=b.data("bs.validator.originalContent");b.removeData("bs.validator.originalContent").html(c)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},d.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var e=a.fn.validator;a.fn.validator=c,a.fn.validator.Constructor=d,a.fn.validator.noConflict=function(){return a.fn.validator=e,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var b=a(this);c.call(b,b.data())})})}(jQuery);