var d = document;
//
var datatime;
function sllcSetDateTime()
{	datatime = d.getElementById("datetime");
	var date = new Date();	datatime.innerHTML=date.toLocaleString();
	setInterval(function(){var date = new Date();	datatime.innerHTML=date.toLocaleString();}, 1000);
}

//
function onSubmit(obj, data)
{	var iframes=window.parent.document.getElementsByTagName('IFRAME');
	for (var i = 0; i < iframes.length; i++) {
		if (iframes[i].contentWindow === window) iframes[i].src="./main.html";
	}
}
function onLogout(obj, data)
{	var iframes=window.parent.document.getElementsByTagName('IFRAME');
	for (var i = 0; i < iframes.length; i++) {
		if (iframes[i].contentWindow === window) iframes[i].src="./login.html";
	}
}

$(function()
{	sllcSetDateTime();
	$(".mlButton").on('click', function (ev){
		onSubmit();
		return false;
	});
	$(".logout").on('click', function (ev){
		onLogout();
		return false;
	});
});
