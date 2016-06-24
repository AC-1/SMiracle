<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script language="javascript" type="text/javascript">
<!--

	function getReqValForHeader(valName){
		switch(valName)
		{
			case 'sessionTime':
				return 	<%=session.getMaxInactiveInterval()%>;
				break;
			case 'LAB0006':
				return "<spring:message code="LAB0006" />";
				break;
			case 'LAB0007':
				return "<spring:message code="LAB0007" />";
			case 'Hour':
				return "<spring:message code="Hour" />";
				break;
			case 'Minute':
				return "<spring:message code="Minute" />";
			case 'Second':
				return "<spring:message code="Second" />";
				break;						
				break;			
		}
	}
	
	
	function sessionClock(intExistTime) {
		if (intExistTime > 0) {
			var intHours = 0,
				intMinutes = 0,
				intSeconds = 0;
			var strTemp = "";
			var htmlObjDiv = document.getElementById("divClock");
			var aryStrTemp = new Array();
			intHours = Math.floor(intExistTime / 60 / 60);
			intMinutes = Math.floor((intExistTime - (intHours * 60 * 60)) / 60);
			intSeconds = (intExistTime - (intHours * 60 * 60)) - (intMinutes * 60);
			aryStrTemp[aryStrTemp.length] = getReqValForHeader("LAB0006");
			aryStrTemp[aryStrTemp.length] = " ";
			aryStrTemp[aryStrTemp.length] = intHours;
			aryStrTemp[aryStrTemp.length] = getReqValForHeader("Hour");
			aryStrTemp[aryStrTemp.length] = intMinutes;
			aryStrTemp[aryStrTemp.length] = getReqValForHeader("Minute");
			aryStrTemp[aryStrTemp.length] = intSeconds;
			aryStrTemp[aryStrTemp.length] = getReqValForHeader("Second");
			aryStrTemp[aryStrTemp.length] = " ";
			aryStrTemp[aryStrTemp.length] = getReqValForHeader("LAB0007");
			strTemp = aryStrTemp.join("");
			aryStrTemp = null;
			htmlObjDiv.innerHTML = strTemp;
			htmlObjDiv = null;
			setTimeout("eval(sessionClock(" + (intExistTime - 1) + "))", 1000);
		} else location.href='<c:url value="/loginadmin/index" />';
	}
	function calSessionTime() {
		var intExistTime = getReqValForHeader('sessionTime');
		sessionClock(intExistTime);
	}
	if (document.all) {
		window.attachEvent('onload', calSessionTime);
	} else {
		window.addEventListener('DOMContentLoaded', calSessionTime, false);
		window.addEventListener('onload', calSessionTime, false);
	}
-->
</script>

		<div id="header">             
			<div id="head_logo">          
				<img src="resources/cbg-include/images/logo/logo.jpg" width="250" height="69" />        
			</div>             
							
			<div class="phonenumber">
				<span class="text_orange"><spring:message code="LAB0008"/></span>${loginVo.username}｜ 
				
				<!-- 登出 -->      
				<span id="spanLogout" class="text_orange"><a href="<c:url value="/signOut"/>"><spring:message code="Logout" /></a></span>
				<br/>
				<div id="divClock"></div> 				
			</div>   	
		</div>   
