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
	
	<link href="<c:url value="/resources/js/timedate/hot-sneaks/jquery-ui.css"/>" rel="stylesheet" type="text/css" />
	<script src="<c:url value="/resources/js/timedate/jquery-ui-1.8.6.custom.min.js"/>"></script>
	<script src="<c:url value="/resources/js/timedate/jquery.ui.datepicker-zh-TW.js"/>"></script>	
	
	<script type="text/javascript">
	
		$(function(){	
			var msg = '<c:out value="${msg}" />';
			if(msg != null && msg != ''){
				//alert(msg);
			}
			
			$('#birthday').datepicker({
				yearRange : "1900:2034",
				changeMonth : true,
				changeYear : true,
				dateFormat : 'yy-mm-dd'
			});
			
		});
		
		

	    function checkThing() {
			var result = true;
			
			if ($("#name").val() == "") {
				alert('姓名不可為空白');
				result = false;
				
			}else if ($("#gender").val() == "") {
				alert('姓別不可為空白');
				result = false;
				
			}else if ($("#birthday").val() == "") {
				alert('出生年月日不可為空白');
				result = false;
				
			}else if ($("#role").val() == "") {
				alert('角色不可為空白');
				result = false;
				
			}else if ($("#status").val() == "") {
				alert('狀態不可為空白');
				result = false;
				
			}else if ($("#comm").val() == "") {
				alert('牧區不可為空白');
				result = false;
				
			}else if ($("#group").val() == "") {
				alert('群組不可為空白');
				result = false;
				
			}else if ($("#edu").val() == "") {
				alert('教育程度不可為空白');
				result = false;
				
			}else if ($("#grade").val() == "") {
				alert('年級不可為空白');
				result = false;
				
			}else if ($("#worship").val() == "") {
				alert('崇拜不可為空白');
				result = false;
				
			}
			
			return result;
		}
	    
 		function goBack(){
	    	
	    	var pageNumber = '<c:out value="${pageNumber}" />';
	    	var nameParent = '<c:out value="${nameParent}" />';
	    	var selectType = '<c:out value="${selectType}" />';
	    	window.location.href='<c:url value="/children/sign/querypeople?pageNumber='+pageNumber+'&name='+nameParent+'&selectType='+selectType+'"/>'; 
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
                   		
						<h2 class="campaign_ttl">新增-個人資料-設定</h2>
						
						<form method="post" action="children/sign/createpeople" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>新增個人資料-設定</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;姓名</td>
										<td class="fillembg">
										<input type="text" id="name" name="name" style="width: 250px;" size="10" value="${people.name}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;姓別</td>
										<td class="fillembg">
										<c:choose>
											<c:when test="${people.gender == '0'}">
												<input type="radio" id="gender" name="gender"  value="1" >男
												<input type="radio" id="gender" name="gender"  value="0" checked>女
											</c:when>
											<c:when test="${people.gender == '1'}">
												<input type="radio" id="gender" name="gender"  value="1" checked>男
												<input type="radio" id="gender" name="gender"  value="0" >女
											</c:when>
											<c:otherwise>
												<input type="radio" id="gender" name="gender"  value="1" checked>男
												<input type="radio" id="gender" name="gender"  value="0" >女
											</c:otherwise>
										</c:choose>
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;出生年月日</td>
										<td class="fillembg">
										<input type="text" id="birthday" name="birthday" style="width: 250px;" size="10" value="${people.birthday}" readonly="readonly">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;角色</td>
										<td class="fillembg">
										<select name="role" id="role">
												<option value="1">牧師</option>
												<option value="2">學生</option>
												<option value="3">青年</option>
												<option value="4">義工</option>
										</select>
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;狀態</td>
										<td class="fillembg">
										<select name="status" id="status">
												<option value="0">穩定聚會</option>
												<option value="1">不穩定聚會</option>
												<option value="2">停止聚會</option>
												<option value="3">新朋友</option>
												<option value="4">離開</option>
										</select>
										</td>
									</tr>
									
									<tr>
										<td><label></label>&nbsp;電話1</td>
										<td class="fillembg">
										<input type="text" id="tel1" name="tel1" style="width: 250px;" size="10" value="${people.tel1}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label></label>&nbsp;電話2</td>
										<td class="fillembg">
										<input type="text" id="tel2" name="tel2" style="width: 250px;" size="10" value="${people.tel2}">
										</td>
									</tr>
									
									<tr>
										<td><label></label>&nbsp;住址</td>
										<td class="fillembg">
										<input type="text" id="addr" name="addr" style="width: 250px;" size="10" value="${people.addr}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label></label>&nbsp;Email</td>
										<td class="fillembg">
										<input type="text" id="email" name="email" style="width: 250px;" size="10" value="${people.email}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;牧區：</td>
										<td class="fillembg">
										<select name="comm" id="comm" size="1">
												<c:forEach items="${commList}" var="comm" varStatus="s">
													<option value="${comm.id}">${comm.name}</option>
												</c:forEach>
										</select>
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;群組：</td>
										<td class="fillembg">
										<select name="groupId" id="groupId" size="1">
												<c:forEach items="${peopleGroupList}" var="peopleGroup" varStatus="s">
													<option value="${peopleGroup.id}">${peopleGroup.name}</option>
												</c:forEach>
										</select>
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;教育程度</td>
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
									
									<tr>
										<td class="embg"><label></label>&nbsp;學校名稱</td>
										<td class="fillembg">
										<input type="text" id="school" name="school" style="width: 250px;" size="10" value="${people.school}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;年級</td>
										<td class="fillembg">
										<select name="grade" id="grade">
												<option value="0">N/A</option>
												<option value="2">幼幼</option>
												<option value="3">小班</option>
												<option value="4">中班</option>
												<option value="5">大班</option>
												<option value="6">小一</option>
												<option value="7">小二</option>
												<option value="8">小三</option>
												<option value="9">小四</option>
												<option value="10">小五</option>
												<option value="11">小六</option>
												<option value="12">國一</option>
												<option value="13">國二</option>
												<option value="14">國三</option>
												<option value="15">高一</option>
												<option value="16">高二</option>
												<option value="17">高三</option>
										</select>
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;崇拜：</td>
										<td class="fillembg">
										<select name="worship" id="worship" size="1">
												<c:forEach items="${worshipList}" var="worship" varStatus="s">
													<option value="${worship.id}">${worship.name}</option>
												</c:forEach>
										</select>
										</td>
									</tr>
									
									<tr>
										<td><label></label>&nbsp;附註</td>
										<td class="fillembg">
										<input type="text" id="note" name="note" style="width: 250px;" size="10" value="${people.note}">
										</td>
									</tr>

								</table>
							</div>
							<br />
							<div align="center">
								<button type="button" onclick="goBack();" style="margin-right: 20px;">回前頁</button>
								<button type="submit">儲存</button>
								<input type="hidden" name="pageNumber" value="${pageNumber}"/>
								<input type="hidden" name="nameParent" value="${nameParent}"/>
								<input type="hidden" name="selectType" value="${selectType}"/>
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