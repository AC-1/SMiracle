<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Service Exception</title>

<link href="<c:url value="/resources/cbg-include/css/controlPager.css"/>" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value="/resources/js/jquery/pager/jquery.controlPager.js"/>"></script>
<script>
	$(function(){		
		
		var page = '<c:out value="${pageNumber}" />'; //目前的頁數
		var count = '<c:out value="${pageTotal}" />'; //總頁數
		$("#pager").pager({ pagenumber: page, pagecount: count, buttonClickCallback: PageClick });
	});
	
	function PageClick(pageclickednumber) {
		//var date1 =  $('#datepicker').val();
	    //var date2 =  $('#datepickerE').val();
	    //$('#pageNumber').val(pageclickednumber);
	    //document.orderListForm.submit();
		window.location.href='<c:url value="/learn/holy/queryData?pageNumber='+pageclickednumber+'"/>'; 
	}
</script>
</head>
<body>

	以ID查詢車輛:<br/>
	Car ID : ${car.id}  Car Name :${car.name}
	<br/><br/>
	
	以ID和NAME查詢車輛:<br/>
	Car ID : ${carIdName.id}  Car Name :${carIdName.name}
	<br/><br/>
	
	查詢所有車輛:<br/>
	<c:forEach items="${carList}" var="car">
   		ID :${car.id}
   		NAME :${car.name}
   		<br/>
	</c:forEach>
	or<br/> 
	<c:forEach items="${carList}" var="car">
   		ID :<c:out value="${car.id}"/>
   		NAME :<c:out value="${car.name}"/>
   		<br/>
	</c:forEach>
	<br/><br/>
	<div id="pager"></div><div style="clear: both;"></div>
	
	以車子主檔Car Mondel去查詢車輛:<br/>
	Car ID : ${carMode.id}  Car Name :${carMode.name}
	<br/><br/>
	
	以車子Car VO去查詢車輛:<br/>
	Car ID : ${carVO.id}  Car Name :${carVO.name}
	<br/><br/>
	
	
</body>
</html>