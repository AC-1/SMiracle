var d = document;

//
var datatime;
function sllcSetDateTime()
{	datatime = d.getElementById("datetime");
	var date = new Date();	datatime.innerHTML=date.toLocaleString();
	setInterval(function(){var date = new Date();	datatime.innerHTML=date.toLocaleString();}, 1000);
}

var pl0=50, pl2=50, pl3=50, pl1=50;
function onSllcPaintBg()
{
	paintObj0 = $("#paintObj0");
	paintObj1 = $("#paintObj1");	paintObj2 = $("#paintObj2");	paintObj3 = $("#paintObj3");	paintObj4 = $("#paintObj4");
	setInterval(function(){
		var pl = pl1++;
		$(paintObj4).css({top:"25%",left:(-300+pl)+"px"});
	}, 200);
	setInterval(function(){
		var pl = pl2++;
		$(paintObj3).css({top:"-30px",left:(1100-pl)+"px"});
	}, 400);
	setInterval(function(){
		var pl = pl3++;
		$(paintObj1).css({top:"9%",left:pl+"px"});
		$(paintObj2).css({top:"69%",left:(1600-pl)+"px"});
	}, 600);
	setInterval(function(){
		pl0+=1;
		$(paintObj0).css({top:"0px",left:pl0+"px"});
	}, 60000);
	
	$(paintObj0).css({top:"0px",left:pl0+"px"});
	$(paintObj1).css({top:"9%",left:pl3+"px"});
	$(paintObj2).css({top:"69%",left:(1600-pl3)+"px"});
	$(paintObj3).css({top:"-30px",left:(1100-pl2)+"px"});
	$(paintObj4).css({top:"25%",left:(-300+pl1)+"px"});
}

$(function()
{
	onSllcPaintBg();
});
