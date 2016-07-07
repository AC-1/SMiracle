<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<%//@ include file="/views/ssi/niceforms.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>

		<!-- header's css start-->
			<%@ include file="/views/cbg-include/header-css.html" %> 
		<!-- header's css end-->
		
	
	<!-- 刪除套件及CSS -->	
	<link type="text/css" href="<c:url value="/resources/js/jquery/css/ui-lightness/jquery-ui-1.10.2.custom.min.css" />" rel="stylesheet"/>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery-ui-1.10.2.custom.min.js" />"></script>
	
	<link type="text/css" href="<c:url value="/resources/cbg-include/css/menuCategory.css"/>" rel="stylesheet"/>
	<link type="text/css" href="<c:url value="/resources/cbg-include/css/niceforms-default.css"/>" rel="stylesheet" />
	<link type="text/css" href="<c:url value="/resources/cbg-include/css/button.css"/>" rel="stylesheet"/>
	
	<!-- 分頁套件 -->
	<link href="<c:url value="/resources/cbg-include/css/controlPager.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.controlPagerJpa.js"/>"></script>
	
		<script type="text/javascript">
		
			$(function(){	
				var msg = '<c:out value="${msg}" />';
				if(msg != null && msg != ''){
					//alert(msg);
				}
				
				setOptionSelected("collegeGrade",'<c:out value="${collegeGrade}" />');
				setOptionSelected("collegeLeader",'<c:out value="${collegeLeader}" />');
				
			});
			
			
			function add(){
				location.href='<c:url value="/college/sign/addcollegepeople"/>';
			}
			
			
			function editData(id) {
				var pageNumber = '<c:out value="${pageNumber}" />'; //目前的頁數
				document.dataForm.id.value = id;
	        	document.dataForm.pageNumber1.value = pageNumber;
				$("#dataForm").submit();
			}
			
			
			function deleteData(id) {
				
				if (confirm('確定要刪除嗎?')) {
					
					var pageNumber = '<c:out value="${pageNumber}" />'; //目前的頁數
					
		        	document.delDataForm.delId.value = id;
		        	document.delDataForm.pageNumber.value = pageNumber;
		        	
					$("#delDataForm").submit();
				}
			}
			
			
			$(function(){		
				
				var page = '<c:out value="${pageNumber}" />'; //目前的頁數
				var count = '<c:out value="${pageTotal}" />'; //總頁數
				$("#pager").pager({ pagenumber: page, pagecount: count, buttonClickCallback: PageClick });
			});
		
			function PageClick(pageclickednumber) {
				
				var selectType = '<c:out value="${selectType}" />';
			    if(selectType == '1'){
			    	document.searchForm.pageNumber.value = pageclickednumber;
					document.searchForm.selectType.value = selectType;
					document.searchForm.submit();
			    }else{
			    	window.location.href='<c:url value="/college/sign/querycollegepeople?pageNumber='+pageclickednumber+'"/>'; 
			    }
			    
			}
			
			function queryKey(){
				
				document.searchForm.pageNumber.value = '0';
				document.searchForm.selectType.value = '1';
				document.searchForm.submit();
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
                   
	                   	<div id="dialog"></div>
							<h2 class="campaign_ttl">人員基本資料-設定</h2>
							<br />
							<p align="center">
								<font color="red" size="3">
								${msg}
								</font>
							</p>
							<div class="shopDataForm">
								<table id="shopHolidayTab" class="table_form" border="0"
									align="center" cellspacing="0" cellpadding="0" width="100%">
									<form name="searchForm" id="searchForm" action="college/sign/querycollegepeople" method="post">
									<tr>
										<td>
											ID搜尋：
											<input type="text" id="collegeId" name="collegeId" value="${collegeId}" style="width: 170px;"/>
										</td>
									</tr>
									
									<tr>
										<td>
											名稱搜尋：
											<input type="text" id="collegeName" name="collegeName" value="${collegeName}" style="width: 170px;"/>
										</td>
									</tr>
									
									<tr>
										<td>
											年級搜尋：
											<select id="collegeGrade" name="collegeGrade">
											    <option value="" selected="selected">空白</option>
												<option value="1" >國高</option>
												<option value="2">大專</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<td>
											是否同工：
											<select id="collegeLeader" name="collegeLeader">
												<option value="" selected="selected">空白</option>
												<option value="N">否</option>
												<option value="Y">是</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<td>
											<center>
											<button class="glay_b" type="button" id="btn01" name="btn01" value="查詢" onclick="queryKey();">單一查尋(其他請空白)</button>
											<input type="hidden" id="pageNumber" name="pageNumber" value="${pageNumber}" />
											<input type="hidden" id="selectType" name="selectType" value="${selectType}"/>
											</center>
										</td>
									</tr>
									
									</form>
								</table>
								
							</div>
							
							<br />
							
								<div align="center">
									<button type="button" onclick="add();">新增</button>
								</div>
								<br/>
								<div class="shopDataForm" style="width: 1200px">
									<table>
										<tr>
											<th class="orangeBg">編輯</th>
											<th class="orangeBg">刪除</th>
											<th class="orangeBg">編號</th>
											<th class="orangeBg">姓名</th>
											<th class="orangeBg">小區</th>
											<th class="orangeBg">小組</th>
											<th class="orangeBg">姓別</th>
											<th class="orangeBg">生日</th>
											<th class="orangeBg">學校/年級</th>
											<th class="orangeBg">手機</th>
											<th class="orangeBg">家電</th>
											<th class="orangeBg">年級</th>
											<th class="orangeBg">是否同工</th>
										</tr>
										
 										<c:forEach items="${collegePeopleList}" var="collegePeople" varStatus="s"> 
											<tr id="row_itemId_1401171148326500">
												<td class="embg"><a href="javascript:void(0)" onclick="editData('${collegePeople.collegeId}');" class="button">編輯</a></td>
												<td class="embg"><a href="javascript:void(0)" onclick="deleteData('${collegePeople.collegeId}');" class="button">刪除</a></td>
												<td class="embg">${collegePeople.collegeId}</td>
												<td class="embg">${collegePeople.collegeName}</td>
												<td class="embg">${collegePeople.collegeArea}</td>
												<td class="embg">${collegePeople.collegeGroup}</td>
												<td class="embg">${collegePeople.collegeGender}</td>
												<td class="embg">${collegePeople.collegeBirthday}</td>
												<td class="embg">${collegePeople.collegeSchoolGrade}</td>
												<td class="embg">${collegePeople.collegePhone}</td>
												<td class="embg">${collegePeople.collegeTel}</td>
												<td class="embg">
												<c:if test="${collegePeople.collegeGrade eq '1'}">國高</c:if>
												<c:if test="${collegePeople.collegeGrade eq '2'}">大專</c:if>
												</td>
												<td class="embg">${collegePeople.collegeLeader}</td>
											</tr>
										</c:forEach>
										
									</table>
								</div>
								
								<form name="dataForm" id="dataForm" action="college/sign/editcollegepeople" method="post">
									<input type="hidden" id="id" name="id">
									<input type="hidden" id="pageNumber1" name="pageNumber1">
								</form>
								
								<form name="delDataForm" id="delDataForm" action="college/sign/deletecollegepeople" method="post">
									<input type="hidden" id="delId" name="delId">
									<input type="hidden" id="pageNumber" name="pageNumber">
								</form>
								
								
								<div id="pager"></div><div style="clear: both;"></div>
								
								<BR/>
								<font color="red">人員資料請勿刪除，不然營會查無他的資料</font>
							
						<br/>
												
						
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