<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<%@include file="/views/meta.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>教學</title>

		<!-- header's css start-->
			<%@ include file="/views/cbg-include/header-css.html" %> 
		<!-- header's css end-->
		
	<style type="text/css">
		
	</style>
	
	<script type="text/javascript">
		
	$(function(){		
		var insertMsg = '<c:out value="${msgInsert}" />';
		if(insertMsg != null && insertMsg != ''){
			alert(insertMsg);
		}
	});
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
                   
                   
						<h2 class="campaign_ttl">教學</h2>
						<br />
						<p align="center">
							<font color="red" size="3">
							${msg}
							</font>
						</p>
						<br />
						
						
						首頁

						     <br/> <br/>
						    一、<a style="color:blue;" href="<c:url value="/learn/holy/queryData?pageNumber=1" />">查詢</a>
						    <br/>
						    二、 <a style="color:blue;" href="<c:url value="/learn/holy/addCar" />">新增</a>
						    <br/>
						    三、  <a style="color:blue;" href="<c:url value="/learn/holy/update" />">修改</a>
						    <br/>
						    四、  <a style="color:blue;" href="<c:url value="/learn/holy/delete" />">刪除</a>
						    <br/>
						    
						    五、  <a style="color:blue;" href="<c:url value="/learn/holy/transactionalUse" />">Transactional用法</a>
						    <br/>
						    
						   六、 <a style="color:blue;" href="<c:url value="/learn/holy/basecar" />">新增修改刪除Base用法</a>
						    <br/>
						    
						   七、<a style="color:blue;" href="<c:url value="/learn/holy/security" />">導攔截頁面</a>
							<br/>
							
						  八、	<spring:message code="language" />
							<a style="color:blue;" href="<c:url value="/learn/holy/language" />"><spring:message code="languageControMethod" /></a><!-- 導多國語言後端Method用法 -->
							<br/>
						  九、	<a style="color:blue;" href="<c:url value="/learn/holy/sysParameter" />"><spring:message code="sysParameter" /></a><!-- 導取系統參數檔 -->
							
							<br/><br/>
						 十、	<!-- 傳值方式 -->
							傳值方式：<br/>
							1.GET方式
							<a style="color:blue;" href="<c:url value="/learn/holy/passbyvalue/123?name=777" />">傳值方式送出</a>
							<br/>
							2.POST方式
							<form action="learn/holy/passbyvalue/123" method="post">
							
							<input type="text" name="name" value="777"/>
							
							<button type="submit">送出</button>
							
							</form>
							
							
							<br/><br/>
						 十一、	圖片路徑配置皆要在resources低下
							例如：看頁面程式碼
							<br/><br/>
							<!-- 先注解起來，直接看這注解的寫法即可 -->
							<%//@ include file="/views/cbg-include/header.jsp" %> 
						    <%-- <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/base.css"/>" >
							<script src="<c:url value="/resources/js/jquery.js"/>"></script>
							<img src="resources/cbg-include/images/logo/logo.jpg" width="250" height="69" />  --%>
							<br/><br/>
							
							十二、 回傳Jaon格式
							<a style="color:blue;" href="<c:url value="/learn/holy/json" />">導回傳Jaon格式資料</a>
							<br/>
							
							十二、 回傳Jaon格式用法二
							<a style="color:blue;" href="<c:url value="/learn/holy/jsontwo" />">導回傳Jaon格式資料用法二</a>
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