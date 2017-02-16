<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>新增登入員</title>

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
			
			setOptionSelected("role",'<c:out value="${role}" />');
			
			pageOnload();
			
			
		});
		
		function pageOnload() {
			
			$("#chkForm").click(function() {
				
				/* if ((dataForm.delivererId.value) == (dataForm.newPassword.value)) {
					alert('帳號和密碼不可相同');
					return false;
				} */
				
				
				if ($("#dataForm").valid() ) {
					
					$("#chkForm").attr("disabled", "disabled");
				}else{
					return false;
				}
			
				
				$('#dataForm').submit();
			});

			event: 'blur', $('#dataForm').validate({
				rules : {
					username : {
						required : true,
						rangelength : [ 4, 30 ]
					},
					name : {
						required : true,
						rangelength : [ 1, 30 ]
					},
					password: {
						required: true,
						rangelength: [4, 30],
						equalTo: '#confirmPassword'
						/* chkEngOrNum: true, */
						/* notEqualTo: '#delivererId' */
					},
					confirmPassword: {
						required: true,
						rangelength: [4, 30],
						equalTo: '#password'
						/* chkEngOrNum: true */
					},
					role : {
						required : true
					}
				},
				messages : {
				    /* newPassword: {
							notEqualTo: '密碼不可和帳號相同！！'
					}  */
					/* newPassword: {
						chkEngOrNum: '密碼請輸入英文或數字！！'
					} */
				}
			});
			
			
			

		} 
		
		
		function goBack(){
			
		    var pageNumber = '<c:out value="${pageNumber}" />';
		    window.location.href='<c:url value="/users/sign/queryusers?pageNumber='+pageNumber+'"/>'; 
			
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
                   		
						<h2 class="campaign_ttl">系統登入員設定</h2>
						
						<form name="dataForm" id="dataForm" action="users/sign/createusers" method="post">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
	                                    <th>新增登入員</th>        
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
									<tr class="deliveryFeeClass">
										<td class="embg"><label>*</label>&nbsp;登入員帳號</td>
										<td class="fillembg">
											<input type="text" id="username" maxlength="30" name="username"  value="${username}" style="width: 130px"/>
										 </td>
									</tr>
				
	                                <tr>
	                                    <td ><label>*</label>&nbsp;密碼<br/>請至少輸入四個字</td>
	                                    <td class="fillembg"><input type="password"  maxlength="30" name="password" id="password" /></td>
	                                </tr>  
	                                <tr>
	                                    <td class="embg"><label>*</label>&nbsp;確認密碼</td>
	                                    <td class="fillembg"><input type="password" maxlength="30" name="confirmPassword" id="confirmPassword" /></td>
	                                </tr>
				
									<tr>
										<td ><label>*</label>&nbsp;登入員姓名</td>
										<td class="fillembg"><input type="text" maxlength="30" name="name" id="name" value="${name}" style="width: 130px"  />
										</td>
									</tr>
									
									<tr>
										<td ><label>*</label>&nbsp;權限</td>
										<td class="fillembg">
										<select name="role" id="role">
											<c:forEach items="${usersRoleSettingList}" var="usersRoleSetting" varStatus="s">
												<option value="${usersRoleSetting.roleId}">${usersRoleSetting.roleDesc}</option>
											</c:forEach>
										</select>										
										</td>
									</tr>
									
				
								</table>
							</div>
							<br />
							<div align="center">
								<button type="button" onclick="goBack();" style="margin-right: 20px;">返回</button>
								<button id="chkForm" type="button">儲存</button>
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