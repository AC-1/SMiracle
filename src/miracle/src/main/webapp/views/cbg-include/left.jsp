<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.lang.StringUtils"%>


	          <div id="cont_left">  
	          		<sec:authorize access="hasRole('ROLE_MIRACLE')">
	          		<h2>兒童牧區</h2>  
		            <ul>
		              <li><a href="<c:url value="children/sign/querypeoplegroup"/>">小組功能設定</a></li> 
		              <li><a href="<c:url value="children/sign/queryworshipdata"/>">崇拜主檔設定</a></li> 
		              <%-- <li><a href="<c:url value="college/sign/querypresentworshipcheckinall"/>">查崇拜報到資料</a></li> --%>                     
		            </ul> 
	          		</sec:authorize>
	            
	                <sec:authorize access="hasRole('ROLE_COLLEGE')">          
		            <h2>國高、大專營會報名</h2>  
		            <ul>
		              <li><a href="<c:url value="college/sign/querycampactivity"/>">營會功能</a></li>                     
		              <li><a href="<c:url value="college/sign/querycollegepeople"/>">人員資料功能</a></li>
		              <li><a href="<c:url value="college/sign/handcheckin"/>">手動報到打卡</a></li>
		              <li><a href="<c:url value="college/sign/queryactivitysignup"/>">營會報名功能</a></li>
		              <li><a href="<c:url value="college/sign/activityreport"/>">營會報名匯出EXCEL</a></li>
		              <li><a href="<c:url value="college/sign/checkinreport"/>">報到匯出EXCEL</a></li>
		            </ul> 
		            </sec:authorize>
		            
		            <sec:authorize access="hasRole('ROLE_ADMIN')">
		            <h2>後台登入帳密設定</h2>  
		            <ul>
		              <li><a href="<c:url value="users/sign/queryusers"/>">後台登入帳密設定</a></li>                     
		            </ul>
		            </sec:authorize>         
		            <%-- <ul>                     
		              <li><a href="<c:url value="learn/holy/index"/>">教學</a></li>
		              <li><a href="<c:url value=""/>">功能</a></li>
		              <li><a href="<c:url value=""/>">功能</a></li>  
		            </ul> --%>
		            <%-- <h2>功能項目2</h2>                 
		            <ul>                     
		              <li><a href="<c:url value=""/>">功能</a></li>
		              <li><a href="<c:url value=""/>">功能</a></li>
		              <li><a href="<c:url value=""/>">功能</a></li>  
		            </ul> --%>
		            <div id="contact_box">      <h3><spring:message code="LAB0003"/></h3>                     
		              <p>                
		                <span class="text_orange">Free dial.                 </span> (02)-7777777 <br />                           
		                <span class="text_orange">e-mail.                 </span>                  
		                	<a href="mailto:mil@mil.com">miracle@miracle.com.tw</a><br />                           
		                <span class="text_orange"><spring:message code="LAB0004"/>                 </span> <spring:message code="LAB0005"/>               
		              </p>                 
		            </div>           
         	  </div>       