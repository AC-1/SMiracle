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
		
	<link href="<c:url value="/resources/js/timedate/hot-sneaks/jquery-ui.css"/>" rel="stylesheet" type="text/css" />
	<script src="<c:url value="/resources/js/timedate/jquery-ui-1.8.6.custom.min.js"/>"></script>
	<script src="<c:url value="/resources/js/timedate/jquery.ui.datepicker-zh-TW.js"/>"></script>	
	
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
			
			$('#datepicker').datepicker({
				//yearRange : "2014:2034",
				changeMonth : true,
				changeYear : true,
				dateFormat : 'yy-mm-dd'
			});
			
		});
		
		

	    function checkThing() {
			var result = true;
			
			if ($("#datepicker").val() == "") {
				alert('匯出日期不可為空白');
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
                   		
						<h2 class="campaign_ttl">報到打卡資料匯出</h2>
						
						<form method="post" action="college/sign/downloadexcel" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>報到打卡資料匯出</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
									
									<tr>
										<td><label>*</label>&nbsp;匯出日期</td>
										<td class="fillembg">
										<input type="text" id="datepicker" name="datepicker" size="16" value="${datepicker}"  class="form-control">
										&nbsp;&nbsp;格式：年-月-日
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
									
								</table>
							</div>
							<br />
							<div align="center">
								<button type="submit">匯出</button>
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