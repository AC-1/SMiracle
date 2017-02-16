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
		
		<style>
		table {
			border-spacing: 0px;
			width: 100%;
		}
		
		td {
			padding: 0px;
		}
	</style>
	
	<style>
		table {
			border-spacing: 0px;
			width: 100%;
		}
		
		td {
			padding: 0px;
		}
	</style>
	
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
			});
			
			
			function addUsers(){
				location.href='<c:url value="/users/sign/addusers"/>';
			}
			
			
			function editUsers(id) {
				
				document.dataForm.id.value = id;
				$("#dataForm").submit();
			}
			
			
			function deleteUsers(id, username) {
				$("#dialog").text('確定刪除此登入員嗎?').dialog({
				      resizable: false,
				      height:140,
				      modal: true,
				      buttons: {
				        '確定刪除': function() {
				        	
				        	$('#delId').val(id);
				        	document.delDataForm.username.value = username;
				        	
							$("#delDataForm").submit();
				        
				        },
				        '取消' : function() {
				          $(this).dialog('close');
				        }
				      }
				 });
			}
			
			
			function chkAccountId(){
				
				$('#pageNumber').val(1);//從第一頁
				
				$('#selectType').val('1');
				document.orderListForm.submit();
			}
			
			
			
			
			$(function(){		
				
				var page = '<c:out value="${pageNumber}" />'; //目前的頁數
				var count = '<c:out value="${pageTotal}" />'; //總頁數
				$("#pager").pager({ pagenumber: page, pagecount: count, buttonClickCallback: PageClick });
			});
		
			function PageClick(pageclickednumber) {
				
				
			    window.location.href='<c:url value="/users/sign/queryusers?pageNumber='+pageclickednumber+'"/>'; 
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
							<h2 class="campaign_ttl">系統-登入管理</h2>
							<br />
							<p align="center">
								<font color="red" size="3">
								${msg}
								</font>
							</p>
							<br />
							
								<div align="center">
									<button type="button" onclick="addUsers();">新增</button>
								</div>
								<br/>
								<div class="shopDataForm" style="width: 750px;">
									<table>
										<tr>
											<th class="orangeBg">帳號</th>
											<th class="orangeBg">姓名</th>
											<th class="orangeBg">權限</th>
											<th class="orangeBg">更新日期</th>
											<th class="orangeBg">編輯</th>
											<th class="orangeBg">刪除</th>
										</tr>
										
										<c:forEach items="${usersList}" var="users" varStatus="s">
											<tr id="row_itemId_1401171148326500">
												<td class="embg">${users.username}</td>
												<td class="embg">${users.name}</td>
												<td class="embg">${users.roleDesc}</td>
												<td class="embg">${users.createDate}</td>
												<td class="embg"><a href="javascript:void(0)" onclick="editUsers('${users.id}');" class="button">編輯</a></td>
												<td class="embg"><a href="javascript:void(0)" onclick="deleteUsers('${users.id}','${users.username}');" class="button">刪除</a></td>
											</tr>
										</c:forEach>
										
									</table>
								</div>
								
								<form name="dataForm" id="dataForm" action="users/sign/editusers" method="post">
									<input type="hidden" id="id" name="id">
								</form>
								
								<form name="delDataForm" id="delDataForm" action="users/sign/deleteusers" method="post">
									<input type="hidden" id="delId" name="delId">
									<input type="hidden" id="username" name="username">
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