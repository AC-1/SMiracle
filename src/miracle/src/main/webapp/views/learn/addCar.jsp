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

	<p>新增車子</p>
	
	<form action="learn/holy/createCar" method="post">
	
		ID: <input type="text" name="id" value=""/>
		<br/>
		NAME: <input type="text" name="name" value=""/>
		<br/>
		<button type="submit">送出</button>
	</form>
	
	
	
</body>
</html>