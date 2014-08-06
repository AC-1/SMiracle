var d = document, mlUser, mlPawd, mlMsg, iLogin=0;
var account=["Alen","Cindy","西西","東東"];

function onLoginFail()
{	$("#login-loading").hide();	$(".login").show();
	$(mlUser).focus();
	mlMsg.html(STR_LOGIN_WARN_LOGIN_FAIL[iLogin]);	iLogin = (iLogin+1)%STR_LOGIN_WARN_LOGIN_FAIL.length;
	$(".container-login").animate({left:"52%",opacity:'1'});	// To be removed
}
function onLoginSuccessMsg()
{	$("#login-loading").parent().hide();
	if ($(mlUser).val()==SuperUser)
	mlMsg.html(sprintf(STR_LOGIN_WELCOME_SUPUSER_MSG, $(mlUser).val())).addClass("rB26");
	else	mlMsg.html($(mlUser).val()+STR_LOGIN_WELCOME_MSG).addClass("rB26");
	$(".container-login").animate({left:"52%",opacity:'1'});	// To be removed
}

function onChangePage()
{	var iframes=window.parent.document.getElementsByTagName('IFRAME');
	for (var i = 0; i < iframes.length; i++) {
		if (iframes[i].contentWindow === window) iframes[i].src="./main.html";
	}
}
function onLoginSuccess()
{	$("#login-loading").hide();
	$(".container-login").animate({left:"53%",opacity:'0'}, 500, onLoginSuccessMsg);
	setTimeout(function(){onChangePage();}, 4000);
}
function onLogin()
{	$(".login").fadeOut(500);	$("#login-loading").show(500);
	var i;
	for (i=0; i<account.length; i++)
		if ($(mlUser).val() == account[i]) break;
	if (i<account.length)
		setTimeout(function(){onLoginSuccess();}, 2000);
	else	setTimeout(function(){onLoginFail();}, 2000);
}
function onSubmit()
{	$(mlUser).blur();	$(mlPawd).blur();	mlMsg.html("");
	if($(mlUser).val() == "")
	{	$(mlUser).focus(); mlMsg.html(STR_LOGIN_WARN_EMPTY_USERNAME);	return false;}
	if($(mlPawd).val() == "")
	{	$(mlPawd).focus(); mlMsg.html(STR_LOGIN_WARN_EMPTY_PASSWD);	return false;}
	onLogin();
}

$(function()
{	mlUser = $("#account"); mlPawd = $("#password"); mlMsg = $("#message");
	account[account.length]=SuperUser;
	$(mlUser).focus();
	d.onkeydown = function(e)
	{	e=e||event; var key = e.keyCode||e.which||e.charCode;
		if(key == 13) onSubmit(); //enter
	}
	
	$(".login").on('click', function (ev){
		onSubmit();
		return false;
	});
});
