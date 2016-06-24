<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.miracle.common.Tools"%>
<%@include file="/views/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <%@include file="/views/meta.jsp"%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="Login" /></title><!-- 登入 -->    

       <!-- header's css start-->
   	   <link href="<c:url value="/resources/cbg-include/css/login_css.css"/>" rel="stylesheet" type="text/css" />
       <!-- header's css end-->    
       
       <!-- yahoo 站長工具 Begin -->
        <!-- yahoo 站長工具 End -->
       
		<script language="javascript">
		<!--
			//var MSG0053 = "<bean:message key="MSG0053" />";
			
			$(function(){	
				var msgAlert = '<c:out value="${msgAlert}" />';
				if(msgAlert != null && msgAlert != ''){
					alert(msgAlert);
				}
			});
			
			 

		-->
		</script>
  </head>
  <body>
	    <div id="login_logo"><img src="resources/cbg-include/images/logo/logo.gif" width="392" height="102"/></div>  
	    <div id="login_line">     
	      <div id="login_box">
	        <form action="postlogin" method="post" id="login-form" autocomplete="off" >       
                <div id="login_input">           
                    <p><spring:message code="useradmin" /> :<input name="username" id="username" type="text" size="24" maxlength="30" /></p>  <!-- 帳號 -->          
                    <spring:message code="password" /> :<input name="password" id="password" type="password" size="25" maxlength="30" /> <!-- 店家登入 -->  
                </div>  
                <br/>   
                <input type="submit" id="login_submit"  value="<spring:message code="Login" />" />   
                <div id="login_forget_txt">
	                <input type="checkbox" name="remember-me"  /><spring:message code="RememberAccount" /><br />                   
					<a href="javascript:void(0);"><spring:message code="ForgetPw" /></a>
                </div>                                
	        </form>       
  
	      </div>     
	           
	    </div>
	    <div id="login_text">Copyright</div>
	    <br/><br/>
	    <c:if test="${not empty error}">
	   	    <spring:message code="login.error" />
	    	<%-- ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} --%>
		</c:if>
		${msg}
  </body>
</html>