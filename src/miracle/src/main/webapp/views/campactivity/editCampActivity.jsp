<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>修改</title>

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
			
			
		});
		
		

	    function checkThing() {
			var result = true;
			
			if ($("#activityName").val() == "") {
				alert('營會名稱不可為空白');
				result = false;
				
			}
			
			return result;
		}
	    
		function goBack(){
	    	
	    	var pageNumber = '<c:out value="${pageNumber}" />';
	    	window.location.href='<c:url value="/college/sign/querycampactivity?pageNumber='+pageNumber+'"/>';  
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
                   		
						<h2 class="campaign_ttl">修改-營會資料設定</h2>
						
						<form method="post" action="college/sign/updatecampactivity" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>修改營會資料設定</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
	                                
	                                <tr>
										<td><label>*</label>&nbsp;營會名稱</td>
										<td class="fillembg">
										<input type="text" id="activityName" name="activityName" style="width: 250px;" size="10" value="${campActivity.activityName}">
										</td>
									</tr>
	                                
								</table>
							</div>
							<br />
							<div align="center">
								<button type="button" onclick="goBack();" style="margin-right: 20px;">回前頁</button>
								<button type="submit">儲存</button>
								<input type="hidden" name="pageNumber" value="${pageNumber}"/>
								<input type="hidden" name="activityId" value="${campActivity.activityId}"/>
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