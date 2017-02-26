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
				
				
			});
			
			
			function add(){
				location.href='<c:url value="/children/sign/addworship"/>';
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
					
		        	document.delDataForm.id.value = id;
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
				
				window.location.href='<c:url value="/children/sign/queryworshipdata?pageNumber='+pageclickednumber+'"/>'; 
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
							<h2 class="campaign_ttl">崇拜資料-設定</h2>
							<br />
							<p align="center">
								<font color="red" size="3">
								${msg}
								</font>
							</p>
							
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
											<th class="orangeBg">崇拜名稱</th>
											<th class="orangeBg">PIC</th>
											<th class="orangeBg">Status</th>
											<th class="orangeBg">Begin</th>
											<th class="orangeBg">End</th>
											<th class="orangeBg">WeekDay</th>
											<th class="orangeBg">StartCheckin</th>
											<th class="orangeBg">StopCheckin</th>
											<th class="orangeBg">Edu</th>
										</tr>
										
 										<c:forEach items="${worshipList}" var="worship" varStatus="s"> 
											<tr id="row_itemId_1401171148326500">
												<td class="embg"><a href="javascript:void(0)" onclick="editData('${worship.id}');" class="button">編輯</a></td>
												<td class="embg"><a href="javascript:void(0)" onclick="deleteData('${worship.id}');" class="button">刪除</a></td>
												<td class="embg">${worship.name}</td>
												<td class="embg">${worship.pic}</td>
												<td class="embg">${worship.status}</td>
												<td class="embg">${worship.begin}</td>
												<td class="embg">${worship.end}</td>
												<td class="embg">
												<c:if test="${worship.weekday eq '1'}">
													星期天
												</c:if>
												<c:if test="${worship.weekday eq '2'}">
													星期一
												</c:if>
												<c:if test="${worship.weekday eq '3'}">
													星期二
												</c:if>
												<c:if test="${worship.weekday eq '4'}">
													星期三
												</c:if>
												<c:if test="${worship.weekday eq '5'}">
													星期四
												</c:if>
												<c:if test="${worship.weekday eq '6'}">
													星期五
												</c:if>
												<c:if test="${worship.weekday eq '7'}">
													星期六
												</c:if>
												</td>
												<td class="embg">${worship.startCheckin}</td>
												<td class="embg">${worship.stopCheckin}</td>
												<td class="embg">
												<c:if test="${worship.edu eq '0'}">
													N/A
												</c:if>
												<c:if test="${worship.edu eq '1'}">
													幼兒
												</c:if>
												<c:if test="${worship.edu eq '2'}">
													國小
												</c:if>
												<c:if test="${worship.edu eq '3'}">
													國中
												</c:if>
												<c:if test="${worship.edu eq '4'}">
													高中
												</c:if>
												<c:if test="${worship.edu eq '5'}">
													大學
												</c:if>
												<c:if test="${worship.edu eq '6'}">
													研究所
												</c:if>
												<c:if test="${worship.edu eq '7'}">
													博士班
												</c:if>
												</td>
											</tr>
										</c:forEach>
										
									</table>
								</div>
								
								<form name="dataForm" id="dataForm" action="children/sign/editworship" method="post">
									<input type="hidden" id="id" name="id">
									<input type="hidden" id="pageNumber1" name="pageNumber1">
								</form>
								
								<form name="delDataForm" id="delDataForm" action="children/sign/deleteworship" method="post">
									<input type="hidden" id="id" name="id">
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