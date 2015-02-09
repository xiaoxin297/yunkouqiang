var valication = {
	errorElement : 'label', // default input error message container
	errorClass : 'help-inline', // default input error message class
	focusInvalid : false, // do not focus the last invalid input
	rules : {
		username : {
			required : true
		},
		password : {
			required : true
		},
		remember : {
			required : false
		}
	},

	messages : {
		username : {
			required : "请输入手机号"
		},
		password : {
			required : "请输入密码"
		}
	},

	invalidHandler : function(event, validator) { // display error alert on
		$(".alert-error-login").hide();					// form submit
		$('.alert-error', $('.login-form')).show();
	},

	highlight : function(element) { // hightlight error inputs
		$(element).closest('.control-group').addClass('error'); // set error
																// class to the
																// control group
	},

	success : function(label) {
		label.closest('.control-group').removeClass('error');
		label.remove();
	},

	errorPlacement : function(error, element) {
		error.addClass('help-small no-left-padding').insertAfter(element.closest('.input-icon'));
	}
};