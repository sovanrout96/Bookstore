	$("#signupButton").click(function(){
		$("#loginForm").hide();
		$("#signupForm").show();
	})
	$("#exisitingUser").click(function(){
		$("#loginForm").show();
		$("#signupForm").hide();
	})
	$('.form-control').on('click', function () {
		$(this).siblings('.control-label').addClass('top');
	});

	$('.form-control').focus(function () {
		$(this).siblings('.control-label').addClass('top');
	});

	$('.form-control').blur(function () {
		if (!$.trim(this.value).length) {
			$(this).siblings('.control-label').removeClass('top');
		}
	});
		$(function () {
		$('#goTop').goTop();
	});