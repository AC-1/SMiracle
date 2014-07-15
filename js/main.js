var d = document;
//
var datatime;
function sllcSetDateTime()
{	datatime = d.getElementById("datetime");
	var date = new Date();	datatime.innerHTML=date.toLocaleString();
	setInterval(function(){var date = new Date();	datatime.innerHTML=date.toLocaleString();}, 1000);
}

//
function sllcSetContentMenu(obj, data)
{	var i, s;
	for (i=0,s=""; i<data.length; i++)
		s += sprintf("<li><span>%s</span><div class='txtBoxBg'></div></li>", data[i].name);
	$(obj).html("<ul>"+s+"</ul>");
}
function onSubmit(obj, data)
{	var iframes=window.parent.document.getElementsByTagName('IFRAME');
	for (var i = 0; i < iframes.length; i++) {
		if (iframes[i].contentWindow === window) iframes[i].src="./profile.html";
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
	sllcSetContentMenu($("div#sidebar div:first-child"), sllcData);
	
	$("div").delegate('.content-menu ul li', 'click', function (ev){
		$(this).parent().find('.selected-content').removeClass('selected-content');
		$(this).addClass("selected-content").removeClass("tB24");
		var i, p, s;
		for (p = $(this).parent().parent(), s="", i=1; $(p).length; p = $(p).prev(), i+=1)
		{	s = "<span class='b12'> &#12299; </span><a class='b18' href='#'>"+$(p).find("li.selected-content span").html()+"</a>" + s;}
		$("#statusbar").html(s);
		$("#sidebar").css("width", i*201+"px");
		p = $(this).parent().parent().next();
		if (p && $(p).length > 0)
			for (p.show(), p = $(p).next(); $(p).length; p.hide(), p = $(p).next());
		console.log($("#_wrapper").height() +" / "+ $(document).height());
		
		if ($(document).height() > $(window).height())
			$("footer").css("position", "relative");
		else	$("footer").css("position", "absolute");
		return false;
	});
	$("div").delegate('.content-menu ul li', 'mouseenter mouseleave', function (ev){
		if (event.type == 'mouseover') {
			if (!$(this).hasClass('selected-content')) $(this).addClass("tB24");
		} else if (event.type == 'mouseout'){
			$(this).removeClass("tB24");
		}
		return false;
	});
	$(".goPorfile").on('click', function (ev){
		onSubmit();
		return false;
	});
	$(".logout").on('click', function (ev){
		onLogout();
		return false;
	});
});
