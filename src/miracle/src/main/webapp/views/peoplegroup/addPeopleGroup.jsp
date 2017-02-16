<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>新增</title>

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
			
			if ($("#name").val() == "") {
				alert('小組名稱不可為空白');
				result = false;
				
			}else if ($("#leader").val() == "") {
				alert('小組Leader不可為空白');
				result = false;
				
			}
			
			return result;
		}
	    
 		function goBack(){
	    	
	    	var pageNumber = '<c:out value="${pageNumber}" />';
	    	window.location.href='<c:url value="/children/sign/querypeoplegroup?pageNumber='+pageNumber+'"/>'; 
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
                   		
						<h2 class="campaign_ttl">新增-小組資料-設定</h2>
						
						<form method="post" action="children/sign/createpeoplegroup" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>新增小組資料-設定</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
									
									<tr>
										<td><label>*</label>&nbsp;小組名稱</td>
										<td class="fillembg">
										<input type="text" id="name" name="name" style="width: 250px;" size="10" value="${peopleGroup.name}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;小組Leader</td>
										<td class="fillembg">
										<input type="text" id="leader" name="leader" style="width: 250px;" size="10" value="${peopleGroup.leader}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;Status</td>
										<td class="fillembg">
										<input type="text" id="status" name="status" style="width: 250px;" size="10" value="${peopleGroup.status}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;groupTable</td>
										<td class="fillembg">
										<input type="text" id="groupTable" name="groupTable" style="width: 250px;" size="10" value="${peopleGroup.groupTable}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;Owner</td>
										<td class="fillembg">
										<input type="text" id="owner" name="owner" style="width: 250px;" size="10" value="${peopleGroup.owner}">
										</td>
									</tr>

								</table>
							</div>
							<br />
							<div align="center">
								<button type="button" onclick="goBack();" style="margin-right: 20px;">回前頁</button>
								<button type="submit">儲存</button>
								<input type="hidden" name="pageNumber" value="${pageNumber}"/>
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