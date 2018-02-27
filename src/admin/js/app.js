$(function() {

	$("form").submit(function(e) {
		$('#loading').modal({
			keyboard: false
		});
	});

	// BEGIN LOGIN

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

	// END LOGIN

	// BEGIN TEMPORADAS

    $('#btn-voltar-temporadas').click(function(e) {
		e.preventDefault();

    	$('#id').val('');
    	$('#id-temporadas').hide();
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

    	$('#id').val('');
    	$('#id-temporadas').hide();

    	$('#passo-confirmacao').data('act', 'add');
    	$('#passo-confirmacao').data('alt-id', null);
    });	

    $('.btn-edit-temporadas').click(function(e) {
		e.preventDefault();

		$('.maintable').hide();
		$('.mainform').show();

    	var id = $(this).data('alt-id');

    	$('#passo-confirmacao').data('act', 'edit');
    	$('#passo-confirmacao').data('alt-id', id);

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=showupd&idano=" + id,
			success: function(data)
			{
				$('#loading').modal('hide');

				var retorno = JSON.parse(data.replace(/(\r\n|\n|\r)/gm," ").replace(/\s+/g," "));

				if(retorno.succeed) {
			    	$('#id').val(id / 98478521);
			    	$('#id-temporadas').show();
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

    				$('#id').val('');
    				$('#id-temporadas').hide();
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

    	var id = $(this).data('alt-id');

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=del&idano=" + id,
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
    	var id = $('#passo-confirmacao').data('alt-id');

		$.ajax({
			type: "POST",
			url: "acts/acts.temporadas.php?act=" + act + "&idano=" + id,
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

    // END TEMPORADAS
});

/*!
 * Validator v0.11.9 for Bootstrap 3, by @1000hz
 * Copyright 2017 Cina Saffary
 * Licensed under http://opensource.org/licenses/MIT
 *
 * https://github.com/1000hz/bootstrap-validator
 */

+function(a){"use strict";function b(b){return b.is('[type="checkbox"]')?b.prop("checked"):b.is('[type="radio"]')?!!a('[name="'+b.attr("name")+'"]:checked').length:b.is("select[multiple]")?(b.val()||[]).length:b.val()}function c(b){return this.each(function(){var c=a(this),e=a.extend({},d.DEFAULTS,c.data(),"object"==typeof b&&b),f=c.data("bs.validator");(f||"destroy"!=b)&&(f||c.data("bs.validator",f=new d(this,e)),"string"==typeof b&&f[b]())})}var d=function(c,e){this.options=e,this.validators=a.extend({},d.VALIDATORS,e.custom),this.$element=a(c),this.$btn=a('button[type="submit"], input[type="submit"]').filter('[form="'+this.$element.attr("id")+'"]').add(this.$element.find('input[type="submit"], button[type="submit"]')),this.update(),this.$element.on("input.bs.validator change.bs.validator focusout.bs.validator",a.proxy(this.onInput,this)),this.$element.on("submit.bs.validator",a.proxy(this.onSubmit,this)),this.$element.on("reset.bs.validator",a.proxy(this.reset,this)),this.$element.find("[data-match]").each(function(){var c=a(this),d=c.attr("data-match");a(d).on("input.bs.validator",function(){b(c)&&c.trigger("input.bs.validator")})}),this.$inputs.filter(function(){return b(a(this))&&!a(this).closest(".has-error").length}).trigger("focusout"),this.$element.attr("novalidate",!0)};d.VERSION="0.11.9",d.INPUT_SELECTOR=':input:not([type="hidden"], [type="submit"], [type="reset"], button)',d.FOCUS_OFFSET=20,d.DEFAULTS={delay:500,html:!1,disable:!0,focus:!0,custom:{},errors:{match:"Does not match",minlength:"Not long enough"},feedback:{success:"glyphicon-ok",error:"glyphicon-remove"}},d.VALIDATORS={"native":function(a){var b=a[0];return b.checkValidity?!b.checkValidity()&&!b.validity.valid&&(b.validationMessage||"error!"):void 0},match:function(b){var c=b.attr("data-match");return b.val()!==a(c).val()&&d.DEFAULTS.errors.match},minlength:function(a){var b=a.attr("data-minlength");return a.val().length<b&&d.DEFAULTS.errors.minlength}},d.prototype.update=function(){var b=this;return this.$inputs=this.$element.find(d.INPUT_SELECTOR).add(this.$element.find('[data-validate="true"]')).not(this.$element.find('[data-validate="false"]').each(function(){b.clearErrors(a(this))})),this.toggleSubmit(),this},d.prototype.onInput=function(b){var c=this,d=a(b.target),e="focusout"!==b.type;this.$inputs.is(d)&&this.validateInput(d,e).done(function(){c.toggleSubmit()})},d.prototype.validateInput=function(c,d){var e=(b(c),c.data("bs.validator.errors"));c.is('[type="radio"]')&&(c=this.$element.find('input[name="'+c.attr("name")+'"]'));var f=a.Event("validate.bs.validator",{relatedTarget:c[0]});if(this.$element.trigger(f),!f.isDefaultPrevented()){var g=this;return this.runValidators(c).done(function(b){c.data("bs.validator.errors",b),b.length?d?g.defer(c,g.showErrors):g.showErrors(c):g.clearErrors(c),e&&b.toString()===e.toString()||(f=b.length?a.Event("invalid.bs.validator",{relatedTarget:c[0],detail:b}):a.Event("valid.bs.validator",{relatedTarget:c[0],detail:e}),g.$element.trigger(f)),g.toggleSubmit(),g.$element.trigger(a.Event("validated.bs.validator",{relatedTarget:c[0]}))})}},d.prototype.runValidators=function(c){function d(a){return c.attr("data-"+a+"-error")}function e(){var a=c[0].validity;return a.typeMismatch?c.attr("data-type-error"):a.patternMismatch?c.attr("data-pattern-error"):a.stepMismatch?c.attr("data-step-error"):a.rangeOverflow?c.attr("data-max-error"):a.rangeUnderflow?c.attr("data-min-error"):a.valueMissing?c.attr("data-required-error"):null}function f(){return c.attr("data-error")}function g(a){return d(a)||e()||f()}var h=[],i=a.Deferred();return c.data("bs.validator.deferred")&&c.data("bs.validator.deferred").reject(),c.data("bs.validator.deferred",i),a.each(this.validators,a.proxy(function(a,d){var e=null;!b(c)&&!c.attr("required")||void 0===c.attr("data-"+a)&&"native"!=a||!(e=d.call(this,c))||(e=g(a)||e,!~h.indexOf(e)&&h.push(e))},this)),!h.length&&b(c)&&c.attr("data-remote")?this.defer(c,function(){var d={};d[c.attr("name")]=b(c),a.get(c.attr("data-remote"),d).fail(function(a,b,c){h.push(g("remote")||c)}).always(function(){i.resolve(h)})}):i.resolve(h),i.promise()},d.prototype.validate=function(){var b=this;return a.when(this.$inputs.map(function(){return b.validateInput(a(this),!1)})).then(function(){b.toggleSubmit(),b.focusError()}),this},d.prototype.focusError=function(){if(this.options.focus){var b=this.$element.find(".has-error :input:first");0!==b.length&&(a("html, body").animate({scrollTop:b.offset().top-d.FOCUS_OFFSET},250),b.focus())}},d.prototype.showErrors=function(b){var c=this.options.html?"html":"text",d=b.data("bs.validator.errors"),e=b.closest(".form-group"),f=e.find(".help-block.with-errors"),g=e.find(".form-control-feedback");d.length&&(d=a("<ul/>").addClass("list-unstyled").append(a.map(d,function(b){return a("<li/>")[c](b)})),void 0===f.data("bs.validator.originalContent")&&f.data("bs.validator.originalContent",f.html()),f.empty().append(d),e.addClass("has-error has-danger"),e.hasClass("has-feedback")&&g.removeClass(this.options.feedback.success)&&g.addClass(this.options.feedback.error)&&e.removeClass("has-success"))},d.prototype.clearErrors=function(a){var c=a.closest(".form-group"),d=c.find(".help-block.with-errors"),e=c.find(".form-control-feedback");d.html(d.data("bs.validator.originalContent")),c.removeClass("has-error has-danger has-success"),c.hasClass("has-feedback")&&e.removeClass(this.options.feedback.error)&&e.removeClass(this.options.feedback.success)&&b(a)&&e.addClass(this.options.feedback.success)&&c.addClass("has-success")},d.prototype.hasErrors=function(){function b(){return!!(a(this).data("bs.validator.errors")||[]).length}return!!this.$inputs.filter(b).length},d.prototype.isIncomplete=function(){function c(){var c=b(a(this));return!("string"==typeof c?a.trim(c):c)}return!!this.$inputs.filter("[required]").filter(c).length},d.prototype.onSubmit=function(a){this.validate(),(this.isIncomplete()||this.hasErrors())&&a.preventDefault()},d.prototype.toggleSubmit=function(){this.options.disable&&this.$btn.toggleClass("disabled",this.isIncomplete()||this.hasErrors())},d.prototype.defer=function(b,c){return c=a.proxy(c,this,b),this.options.delay?(window.clearTimeout(b.data("bs.validator.timeout")),void b.data("bs.validator.timeout",window.setTimeout(c,this.options.delay))):c()},d.prototype.reset=function(){return this.$element.find(".form-control-feedback").removeClass(this.options.feedback.error).removeClass(this.options.feedback.success),this.$inputs.removeData(["bs.validator.errors","bs.validator.deferred"]).each(function(){var b=a(this),c=b.data("bs.validator.timeout");window.clearTimeout(c)&&b.removeData("bs.validator.timeout")}),this.$element.find(".help-block.with-errors").each(function(){var b=a(this),c=b.data("bs.validator.originalContent");b.removeData("bs.validator.originalContent").html(c)}),this.$btn.removeClass("disabled"),this.$element.find(".has-error, .has-danger, .has-success").removeClass("has-error has-danger has-success"),this},d.prototype.destroy=function(){return this.reset(),this.$element.removeAttr("novalidate").removeData("bs.validator").off(".bs.validator"),this.$inputs.off(".bs.validator"),this.options=null,this.validators=null,this.$element=null,this.$btn=null,this.$inputs=null,this};var e=a.fn.validator;a.fn.validator=c,a.fn.validator.Constructor=d,a.fn.validator.noConflict=function(){return a.fn.validator=e,this},a(window).on("load",function(){a('form[data-toggle="validator"]').each(function(){var b=a(this);c.call(b,b.data())})})}(jQuery);