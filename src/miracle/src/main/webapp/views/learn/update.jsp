<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Service Exception</title>

<script>
	$(function(){		
		
	});
</script>
</head>
<body>

	<form action="learn/holy/updateCar" method="post">
	修改多筆車輛資料:<br/>
	
	<c:forEach items="${carList}" var="car">
   		ID : ${car.id}  <input type="hidden" name="ids" value="${car.id}"/>
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		
   		NAME :<input type="text" name="names" value="${car.name}"/>
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		
   		<br/>
	</c:forEach>
	
	<br/><br/>
	<input type="submit" value="修改">
	</form>
	
	
	<br/><br/><br/>
	修改單筆車輛資料:<br/>
	
	<form action="learn/holy/updateOneCar" method="post">
		ID : <input type="text" name="id" value=""/>
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   		
   		NAME :<input type="text" name="name" value=""/>
   		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="修改">
	</form>
</body>
</html>