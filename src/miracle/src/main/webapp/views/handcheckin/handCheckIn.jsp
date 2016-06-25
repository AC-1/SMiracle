<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title></title>

		<!-- header's css start-->
			<%@ include file="/views/cbg-include/header-css.html" %> 
		<!-- header's css end-->
		

	<link href="<c:url value="/resources/cbg-include/css/niceforms-default.css"/>" rel="stylesheet" type="text/css" />
	
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/validate/jquery.validate.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.maxlength.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/validate/messages_zh_TW.js"/>"></script> 
		
	<%-- <link rel="stylesheet" type="text/css" media="screen" href="<c:url value="/resources/js/jquery/validate/css/screen.css"/>" /> --%>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery/validate/jquery.validate.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.maxlength.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/validate/messages_zh_TW.js"/>"></script> --%> 
	
	<script type="text/javascript">
	
		$(function(){	
			var msg = '<c:out value="${msg}" />';
			if(msg != null && msg != ''){
				//alert(msg);
			}
			
			setOptionSelected("activityId",'<c:out value="${activityId}" />');
			
		});
		
		

	    function checkThing() {
			var result = true;
			
			if ($("#collegeId").val() == "") {
				alert('人員ID不可為空白');
				result = false;
				
			}else if ($("#activityId").val() == "") {
				alert('營會不可為空白');
				result = false;
				
			}
			
			return result;
		}
	    

		
	</script>

	</head>
	<body id="body">
        <div id="wrapper">

            <!-- header's jsp start-->  
            <%@ include file="/views/cbg-include/header.jsp" %> 
            <%@ include file="/views/cbg-include/wrap_top.jsp" %> 
            <!-- header's jsp end-->  
			
            <div id="content_wrap">
                <div id="content">  
					
                    <!-- left's jsp start-->                            
                    <%@ include file="/views/cbg-include/left.jsp" %> 
                    <!-- left's jsp end-->    

                 <div id="cont_right">  
                        
                   <div class="serviceTermForm">
                   		
						<h2 class="campaign_ttl">手動報到打卡</h2>
						
						<form method="post" action="college/sign/createhandcheckin" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>手動報到打卡</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
									
									<tr>
										<td><label>*</label>&nbsp;人員ID</td>
										<td class="fillembg">
										<input type="text" id="collegeId" name="collegeId" style="width: 150px;" size="10" value="${collegeId}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;營會</td>
										<td class="fillembg">
										<select id="activityId" name="activityId">
											<c:forEach items="${campActivityList}" var="campActivity" varStatus="s">
												<option value="${campActivity.activityId}">${campActivity.activityName}</option>
											</c:forEach>
										</select>
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;報到資訊</td>
										<td class="fillembg">
										<input type="text" id="checkInfo" name="checkInfo" style="width: 150px;" size="10" value="${checkInfo}">
										</td>
									</tr>
							
								</table>
							</div>
							<br />
							<div align="center">
								<button type="submit">確定打卡</button>
							</div>
						</form>
						

					</div>     <!--<div class="serviceTermForm">-->                 
                </div>  
				<div class="clear_both"></div>
				</div>   
			</div>
        </div>

        <!-- FOOTER start-->  
        <%@ include file="/views/cbg-include/footer.jsp" %> 
        <!-- FOOTER end-->  


    </body>

</html>