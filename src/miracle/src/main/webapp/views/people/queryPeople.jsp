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
				
				setOptionSelected("name",'<c:out value="${name}" />');
			});
			
			
			function add(){
				var selectType = '<c:out value="${selectType}" />';
				var nameParent = '<c:out value="${name}" />';
				location.href='<c:url value="/children/sign/addpeople?nameParent='+nameParent+'&selectType='+selectType+'"/>';
			}
			
			
			function editData(id) {
				var selectType = '<c:out value="${selectType}" />';
				var nameParent = '<c:out value="${name}" />';
				var pageNumber = '<c:out value="${pageNumber}" />'; //目前的頁數
				document.dataForm.id.value = id;
	        	document.dataForm.pageNumber.value = pageNumber;
	        	document.dataForm.selectType.value = selectType;
	        	document.dataForm.nameParent.value = nameParent;
				$("#dataForm").submit();
			}
			
			
			function deleteData(id) {
				
				if (confirm('確定要刪除嗎?')) {
					
					var selectType = '<c:out value="${selectType}" />';
					var nameParent = '<c:out value="${name}" />';
					var pageNumber = '<c:out value="${pageNumber}" />'; //目前的頁數
					
		        	document.delDataForm.id.value = id;
		        	document.delDataForm.pageNumber.value = pageNumber;
		        	document.delDataForm.selectType.value = selectType;
		        	document.delDataForm.nameParent.value = nameParent;
		        	
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
			    	window.location.href='<c:url value="/children/sign/querypeople?pageNumber='+pageclickednumber+'"/>'; 
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
							<h2 class="campaign_ttl">個人資料-設定</h2>
							<br />
							<p align="center">
								<font color="red" size="3">
								${msg}
								</font>
							</p>
							
							<div class="shopDataForm">
								<table id="shopHolidayTab" class="table_form" border="0"
									align="center" cellspacing="0" cellpadding="0" width="100%">
									<form name="searchForm" id="searchForm" action="children/sign/querypeople" method="post">

									<tr>
										<td>
											姓名搜尋：
											<input type="text" id="name" name="name" value="${name}" style="width: 170px;"/>
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
							
							<br />
							
								<div align="center">
									<button type="button" onclick="add();">新增</button>
								</div>
								<br/>
								<div class="shopDataForm" style="width: 1900px">
									<table>
										<tr>
											<th class="orangeBg">編輯</th>
											<th class="orangeBg">刪除</th>
											<th class="orangeBg">姓名</th>
											<th class="orangeBg">姓別</th>
											<th class="orangeBg">出生年月日</th>
											<th class="orangeBg">角色</th>
											<th class="orangeBg">狀態</th>
											<th class="orangeBg">電話1</th>
											<th class="orangeBg">電話2</th>
											<th class="orangeBg">住址</th>
											<th class="orangeBg">Email</th>
											<th class="orangeBg">牧區</th>
											<th class="orangeBg">群組</th>
											<th class="orangeBg">教育程度</th>
											<th class="orangeBg">學校名稱</th>
											<th class="orangeBg">年級</th>
											<th class="orangeBg">崇拜</th>
											<th class="orangeBg">建立時間</th>
											<th class="orangeBg">最後更新時間</th>
											<th class="orangeBg">附註</th>
										</tr>
										
 										<c:forEach items="${peopleVOList}" var="peopleVO" varStatus="s"> 
											<tr id="row_itemId_1401171148326500">
												<td class="embg"><a href="javascript:void(0)" onclick="editData('${peopleVO.id}');" class="button">編輯</a></td>
												<td class="embg"><a href="javascript:void(0)" onclick="deleteData('${peopleVO.id}');" class="button">刪除</a></td>
												<td class="embg">${peopleVO.name}</td>
												<td class="embg">
													<c:if test="${peopleVO.gender eq '0'}">
														女
													</c:if>
													<c:if test="${peopleVO.gender eq '1'}">
														男
													</c:if>
												</td>
												<td class="embg">${peopleVO.birthday}</td>
												<td class="embg">
													<c:if test="${peopleVO.role eq '1'}">
														牧師
													</c:if>
													<c:if test="${peopleVO.role eq '2'}">
														學生
													</c:if>
													<c:if test="${peopleVO.role eq '3'}">
														青年
													</c:if>
													<c:if test="${peopleVO.role eq '4'}">
														義工
													</c:if>
												</td>
												<td class="embg">
													<c:if test="${peopleVO.status eq '0'}">
														穩定聚會
													</c:if>
													<c:if test="${peopleVO.status eq '1'}">
														不穩定聚會
													</c:if>
													<c:if test="${peopleVO.status eq '2'}">
														停止聚會
													</c:if>
													<c:if test="${peopleVO.status eq '3'}">
														新朋友
													</c:if>
													<c:if test="${peopleVO.status eq '4'}">
														離開
													</c:if>
												</td>
												<td class="embg">${peopleVO.tel1}</td>
												<td class="embg">${peopleVO.tel2}</td>
												<td class="embg">${peopleVO.addr}</td>
												<td class="embg">${peopleVO.email}</td>
												<td class="embg">${peopleVO.commName}</td>
												<td class="embg">${peopleVO.groupName}</td>
												<td class="embg">
													<c:if test="${peopleVO.edu eq '0'}">
														N/A
													</c:if>
													<c:if test="${peopleVO.edu eq '1'}">
														幼兒
													</c:if>
													<c:if test="${peopleVO.edu eq '2'}">
														國小
													</c:if>
													<c:if test="${peopleVO.edu eq '3'}">
														國中
													</c:if>
													<c:if test="${peopleVO.edu eq '4'}">
														高中
													</c:if>
													<c:if test="${peopleVO.edu eq '5'}">
														大學
													</c:if>
													<c:if test="${peopleVO.edu eq '6'}">
														研究所
													</c:if>
													<c:if test="${peopleVO.edu eq '7'}">
														博士班
													</c:if>
												</td>
												<td class="embg">${peopleVO.school}</td>
												<td class="embg">
													<c:if test="${peopleVO.grade eq '0'}">
														N/A
													</c:if>
													<c:if test="${peopleVO.grade eq '2'}">
														幼幼
													</c:if>
													<c:if test="${peopleVO.grade eq '3'}">
														小班
													</c:if>
													<c:if test="${peopleVO.grade eq '4'}">
														中班
													</c:if>
													<c:if test="${peopleVO.grade eq '5'}">
														大班
													</c:if>
													<c:if test="${peopleVO.grade eq '6'}">
														小一
													</c:if>
													<c:if test="${peopleVO.grade eq '7'}">
														小二
													</c:if>
													<c:if test="${peopleVO.grade eq '8'}">
														小三
													</c:if>
													<c:if test="${peopleVO.grade eq '9'}">
														小四
													</c:if>
													<c:if test="${peopleVO.grade eq '10'}">
														小五
													</c:if>
													<c:if test="${peopleVO.grade eq '11'}">
														小六
													</c:if>
													<c:if test="${peopleVO.grade eq '12'}">
														國一
													</c:if>
													<c:if test="${peopleVO.grade eq '13'}">
														國二
													</c:if>
													<c:if test="${peopleVO.grade eq '14'}">
														國三
													</c:if>
													<c:if test="${peopleVO.grade eq '15'}">
														高一
													</c:if>
													<c:if test="${peopleVO.grade eq '16'}">
														高二
													</c:if>
													<c:if test="${peopleVO.grade eq '17'}">
														高三
													</c:if>
												</td>
												<td class="embg">${peopleVO.worshipName}</td>
												<td class="embg">${peopleVO.createTime}</td>
												<td class="embg">${peopleVO.lastUpdate}</td>
												<td class="embg">${peopleVO.note}</td>
											</tr>
										</c:forEach>
										
									</table>
								</div>
								
								<form name="dataForm" id="dataForm" action="children/sign/editpeople" method="post">
									<input type="hidden" id="id" name="id">
									<input type="hidden" id="pageNumber" name="pageNumber">
									<input type="hidden" id="selectType" name="selectType">
									<input type="hidden" id="nameParent" name="nameParent">
								</form>
								
								<form name="delDataForm" id="delDataForm" action="children/sign/deletepeople" method="post">
									<input type="hidden" id="id" name="id">
									<input type="hidden" id="pageNumber" name="pageNumber">
									<input type="hidden" id="selectType" name="selectType">
									<input type="hidden" id="nameParent" name="nameParent">
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