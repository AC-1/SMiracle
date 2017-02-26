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
				alert('崇拜名稱不可為空白');
				result = false;
				
			}else if ($("#begin").val() == "") {
				alert('Begin不可為空白');
				result = false;
				
			}else if (isNaN($("#begin").val())) {
				alert('Begin請輸入數字!');
				result = false;
				
			}else if ($("#end").val() == "") {
				alert('End不可為空白');
				result = false;
				
			}else if (isNaN($("#end").val())) {
				alert('End請輸入數字!');
				result = false;
				
			}else if ($("#startCheckin").val() == "") {
				alert('StartCheckin不可為空白');
				result = false;
				
			}else if (isNaN($("#startCheckin").val())) {
				alert('StartCheckin請輸入數字!');
				result = false;
				
			}else if ($("#stopCheckin").val() == "") {
				alert('StopCheckin不可為空白');
				result = false;
				
			}else if (isNaN($("#stopCheckin").val())) {
				alert('StopCheckin請輸入數字!');
				result = false;
				
			}
			
			return result;
		}
	    
 		function goBack(){
	    	
	    	var pageNumber = '<c:out value="${pageNumber}" />';
	    	window.location.href='<c:url value="/children/sign/queryworshipdata?pageNumber='+pageNumber+'"/>'; 
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
                   		
						<h2 class="campaign_ttl">新增-崇拜資料-設定</h2>
						
						<form method="post" action="children/sign/createworship" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>新增崇拜資料-設定</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
									
									<tr>
										<td><label>*</label>&nbsp;崇拜名稱</td>
										<td class="fillembg">
										<input type="text" id="name" name="name" style="width: 250px;" size="10" value="${worship.name}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;PIC</td>
										<td class="fillembg">
										<input type="text" id="pic" name="pic" style="width: 250px;" size="10" value="${worship.pic}">
										<br/>
										Chang, An-An
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;Status</td>
										<td class="fillembg">
										<c:choose>
											<c:when test="${worship.status == '0'}">
												<input type="radio" id="status" name="status"  value="1" >啟用
												<input type="radio" id="status" name="status"  value="0" checked>停用
											</c:when>
											<c:when test="${worship.status == '1'}">
												<input type="radio" id="status" name="status"  value="1" checked>啟用
												<input type="radio" id="status" name="status"  value="0" >停用
											</c:when>
											<c:otherwise>
												<input type="radio" id="status" name="status"  value="1" checked>啟用
												<input type="radio" id="status" name="status"  value="0" >停用
											</c:otherwise>
										</c:choose>
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;Begin</td>
										<td class="fillembg">
										<input type="text" id="begin" name="begin" style="width: 250px;" size="10" value="${worship.begin}">
										<br/>
										格式：1015
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;End</td>
										<td class="fillembg">
										<input type="text" id="end" name="end" style="width: 250px;" size="10" value="${worship.end}">
										<br/>
										格式：1015
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;WeekDay</td>
										<td class="fillembg">
										<select name="weekday" id="weekday">
												<option value="1">星期天</option>
												<option value="2">星期一</option>
												<option value="3">星期二</option>
												<option value="4">星期三</option>
												<option value="5">星期四</option>
												<option value="6">星期五</option>
												<option value="7">星期六</option>
										</select>
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;StartCheckin</td>
										<td class="fillembg">
										<input type="text" id="startCheckin" name="startCheckin" style="width: 250px;" size="10" value="${worship.startCheckin}">
										<br/>
										格式：1015
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;StopCheckin</td>
										<td class="fillembg">
										<input type="text" id="stopCheckin" name="stopCheckin" style="width: 250px;" size="10" value="${worship.stopCheckin}">
										<br/>
										格式：1015
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;Edu</td>
										<td class="fillembg">
										<select name="edu" id="edu">
												<option value="0">N/A</option>
												<option value="1">幼兒</option>
												<option value="2">國小</option>
												<option value="3">國中</option>
												<option value="4">高中</option>
												<option value="5">大學</option>
												<option value="6">研究所</option>
												<option value="7">博士班</option>
										</select>
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