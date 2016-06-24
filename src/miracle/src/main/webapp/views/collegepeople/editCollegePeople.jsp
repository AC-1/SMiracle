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
			
			if ($("#collegeName").val() == "") {
				alert('姓名不可為空白');
				result = false;
				
			}
			
			return result;
		}
	    
		function goBack(){
	    	
	    	var pageNumber = '<c:out value="${pageNumber}" />';
	    	window.location.href='<c:url value="/college/sign/querycollegepeople?pageNumber='+pageNumber+'"/>';  
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
                   		
						<h2 class="campaign_ttl">修改-人員基本資料設定</h2>
						
						<form method="post" action="college/sign/updatecollegepeople" onsubmit="return checkThing();">
							<div class="shopDataForm">
								<table id="tb" border="0" cellspacing="0" cellpadding="0" width="100%">
									<tr>
										<th>修改人員基本資料設定</th> 
	                                    <td align="left"><span id="msg" style="color:#F00">
	                                        ${msg}
	                                    </span></td>
	                                </tr>
	                                
									<tr>
										<td><label>*</label>&nbsp;姓名</td>
										<td class="fillembg">
										<input type="text" id="collegeName" name="collegeName" size="10" value="${collegePeople.collegeName}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;小區</td>
										<td class="fillembg">
										<input type="text" id="collegeArea" name="collegeArea" size="10" value="${collegePeople.collegeArea}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;小組</td>
										<td class="fillembg">
										<input type="text" id="collegeGroup" name="collegeGroup" size="10" value="${collegePeople.collegeGroup}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;姓別</td>
										<td class="fillembg">
										<input type="text" id="collegeGender" name="collegeGender" size="10" value="${collegePeople.collegeGender}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;生日</td>
										<td class="fillembg">
										<input type="text" id="collegeBirthday" name="collegeBirthday" size="10" value="${collegePeople.collegeBirthday}">
										</td>
									</tr>		
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;學校/年級</td>
										<td class="fillembg">
										<input type="text" id="collegeSchoolGrade" name="collegeSchoolGrade" size="10" style="width: 120px;" value="${collegePeople.collegeSchoolGrade}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;手機</td>
										<td class="fillembg">
										<input type="text" id="collegePhone" name="collegePhone" size="10" value="${collegePeople.collegePhone}">
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;家電</td>
										<td class="fillembg">
										<input type="text" id="collegeTel" name="collegeTel" size="10" value="${collegePeople.collegeTel}">
										</td>
									</tr>
									
									<tr>
										<td><label>*</label>&nbsp;年級名稱</td>
										<td class="fillembg">
										<c:choose>
											<c:when test="${collegePeople.collegeGrade == '1'}">
												<input type="radio" id="collegeGrade" name="collegeGrade" value="1" checked>國高-1
												<input type="radio" id="collegeGrade" name="collegeGrade" value="2">大專-2
											</c:when>
											<c:when test="${collegePeople.collegeGrade == '2'}">
												<input type="radio" id="collegeGrade" name="collegeGrade" value="1" >國高-1
												<input type="radio" id="collegeGrade" name="collegeGrade" value="2" checked>大專-2
											</c:when>
											<c:otherwise>
												<input type="radio" id="collegeGrade" name="collegeGrade" value="1" checked>國高-1
												<input type="radio" id="collegeGrade" name="collegeGrade" value="2">大專-2
											</c:otherwise>
										</c:choose>
										</td>
									</tr>
									
									<tr>
										<td class="embg"><label>*</label>&nbsp;是否同工</td>
										<td class="fillembg">
										<c:choose>
											<c:when test="${collegePeople.collegeLeader == 'N'}">
												<input type="radio" id="collegeLeader" name="collegeLeader" value="N" checked>否-N
												<input type="radio" id="collegeLeader" name="collegeLeader" value="Y">是-Y
											</c:when>
											<c:when test="${collegePeople.collegeLeader == 'Y'}">
												<input type="radio" id="collegeLeader" name="collegeLeader" value="N" >否-N
												<input type="radio" id="collegeLeader" name="collegeLeader" value="Y" checked>是-Y
											</c:when>
											<c:otherwise>
												<input type="radio" id="collegeLeader" name="collegeLeader" value="N" checked>否-N
												<input type="radio" id="collegeLeader" name="collegeLeader" value="Y">是-Y
											</c:otherwise>
										</c:choose>
										</td>
									</tr>	
									
								</table>
							</div>
							<br />
							<div align="center">
								<button type="button" onclick="goBack();" style="margin-right: 20px;">回前頁</button>
								<button type="submit">儲存</button>
								<input type="hidden" name="pageNumber" value="${pageNumber}"/>
								<input type="hidden" name="collegeId" value="${collegePeople.collegeId}"/>
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