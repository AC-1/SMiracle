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

	
	多國語言取值
	<br/>
	${msg}
	<br/>
	<%=request.getAttribute("msg1")%>
	
</body>
</html>