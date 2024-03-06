/******************************************
 * My Login
 *
 * Bootstrap 4 Login Page
 *
 * @author          Muhamad Nauval Azhar
 * @uri 			https://nauval.in
 * @copyright       Copyright (c) 2018 Muhamad Nauval Azhar
 * @license         My Login is licensed under the MIT license.
 * @github          https://github.com/nauvalazhar/my-login
 * @version         1.2.0
 *
 * Help me to keep this project alive
 * https://www.buymeacoffee.com/mhdnauvalazhar
 * 
 ******************************************/



$(function() {

	// author badge :)
	
	$("input[type='password'][data-eye]").each(function(i) {
		var $this = $(this),
			id = 'eye-password-' + i,
			el = $('#' + id);

		$this.wrap($("<div/>", {
			style: 'position:relative',
			id: id
		}));

		$this.css({
			paddingRight: 60
		});
		$this.after($("<div/>", {
			html: 'Show',
			class: 'btn btn-primary btn-sm',
			id: 'passeye-toggle-'+i,
		}).css({
				position: 'absolute',
				right: 10,
				top: ($this.outerHeight() / 2) - 12,
				padding: '2px 7px',
				fontSize: 12,
				cursor: 'pointer',
		}));

		$this.after($("<input/>", {
			type: 'hidden',
			id: 'passeye-' + i
		}));

		var invalid_feedback = $this.parent().parent().find('.invalid-feedback');

		if(invalid_feedback.length) {
			$this.after(invalid_feedback.clone());
		}

		$this.on("keyup paste", function() {
			$("#passeye-"+i).val($(this).val());
		});
		$("#passeye-toggle-"+i).on("click", function() {

			if($this.hasClass("show")) {
				$this.attr('type', 'password');
				$this.removeClass("show");
				$(this).removeClass("btn-outline-primary");
			}else{
				$this.attr('type', 'text');
				$this.val($("#passeye-"+i).val());				
				$this.addClass("show");
				$(this).addClass("btn-outline-primary");
			}
		});
	});
	$(".my-login-validation").submit(function(event) {
		var form = $(this);
	
		
		var champ1 = $("#ncin_etud1").val(); 
		var champ2 = $("#password").val(); 
		var longueur = champ1.length;
	
		if (champ1 != "" && champ2 != ""&& longueur ==8) {
			window.location.href = "../../projet_integration.html";
			event.preventDefault();
			event.stopPropagation();
		} else {
			
			window.location.href = "../../projet_integration.html";
		}
	
		form.addClass('was-validated');
	});
	

	/*$(".my-login-validation").submit(function(event) {
		var form = $(this);
	
		if (form[0].checkValidity() === false) {
			event.preventDefault();
			event.stopPropagation();
		} else {
			// Le formulaire est valide, redirigez vers form.html
			window.location.href = "../form.html";
		}
	
		form.addClass('was-validated');
	});*/
	
});
