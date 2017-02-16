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
	<script type="text/javascript" src="<c:url value="/resources/js/jquery/jquery.controlPager.js"/>"></script>
	
		<script type="text/javascript">
		
			$(function(){	
				var msg = '<c:out value="${msg}" />';
				if(msg != null && msg != ''){
					//alert(msg);
				}
				
				setOptionSelected("activityId",'<c:out value="${activityId}" />');
			});
			
			
			function add(){
				location.href='<c:url value="/college/sign/addactivitysignup"/>';
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
			    	window.location.href='<c:url value="/college/sign/queryactivitysignup?pageNumber='+pageclickednumber+'"/>'; 
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
							<h2 class="campaign_ttl">營會報名功能</h2>
							<br />
							<p align="center">
								<font color="red" size="3">
								${msg}
								</font>
							</p>
							<div class="shopDataForm">
								<table id="shopHolidayTab" class="table_form" border="0"
									align="center" cellspacing="0" cellpadding="0" width="100%">
									<form name="searchForm" id="searchForm" action="college/sign/queryactivitysignup" method="post">
									<tr>
										<td>
											營會搜尋：
											<select id="activityId" name="activityId">
											<option value="">全部</option>
											<c:forEach items="${campActivityList}" var="campActivity" varStatus="s">
												<option value="${campActivity.activityId}">${campActivity.activityName}</option>
											</c:forEach>
										</select>
										</td>
									</tr>
									
									<tr>
										<td>
											人員ID搜尋：
											<input type="text" id="collegeId" name="collegeId" value="${collegeId}" style="width: 170px;"/>
										</td>
									</tr>
									
									<tr>
										<td>
											人員名稱搜尋：
											<input type="text" id="collegeName" name="collegeName" value="${collegeName}" style="width: 170px;"/>
										</td>
									</tr>
									
									<tr>
										<td>
											<center>
											<button class="glay_b" type="button" id="btn01" name="btn01" value="查詢" onclick="queryKey();">查詢</button>
											<input type="hidden" id="pageNumber" name="pageNumber" value="${pageNumber}" />
											<input type="hidden" id="selectType" name="selectType" value="${selectType}"/>
											</center>
										</td>
									</tr>
									
									</form>
								</table>
								
							</div>
							
							<%-- <br />
							
								<div align="center">
									<button type="button" onclick="add();">報名</button>
								</div>
								<br/>
								<div class="shopDataForm" style="width: 1200px">
									<table>
										<tr>
											<th class="orangeBg">刪除報名</th>
											<th class="orangeBg">營會ID</th>
											<th class="orangeBg">營會名稱</th>
											<th class="orangeBg">報名人ID</th>
											<th class="orangeBg">報名姓名</th>
											<th class="orangeBg">是否報到打卡</th>
											<th class="orangeBg">報名日期</th>
										</tr>
										
 										<c:forEach items="${presentWorshipVOList}" var="presentWorshipVO" varStatus="s"> 
											<tr id="row_itemId_1401171148326500">
												<td class="embg"><a href="javascript:void(0)" onclick="deleteData('${presentWorshipVO.signupId}');" class="button">刪除</a></td>
												<td class="embg">${presentWorshipVO.activityId}</td>
												<td class="embg">${presentWorshipVO.activityName}</td>
												<td class="embg">${presentWorshipVO.collegeId}</td>
												<td class="embg">${presentWorshipVO.collegeName}</td>
												<td class="embg">
													<c:if test="${presentWorshipVO.ifCheckIn eq 'Y'}">是</c:if>
													<c:if test="${presentWorshipVO.ifCheckIn eq 'N'}">否</c:if>
												</td>
												<td class="embg">${presentWorshipVO.signupDate}</td>
											</tr>
										</c:forEach>
										
									</table>
								</div>
								 --%>
								<form name="delDataForm" id="delDataForm" action="college/sign/deleteactivitysignup" method="post">
									<input type="hidden" id="delId" name="delId">
									<input type="hidden" id="pageNumber" name="pageNumber">
								</form>
								
								
								<div id="pager"></div><div style="clear: both;"></div>
							
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