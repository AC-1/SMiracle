<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/views/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
  <%@include file="/views/meta.jsp"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>神蹟系統</title>
       <!-- header's css start-->
   	    <%@ include file="/views/cbg-include/header-css.html" %> 
       <!-- header's css end-->
  </head>
   
  <body>
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
                   
                   
						<h2 class="campaign_ttl">內容</h2>
						<br />
						<p align="center">
							<font color="red" size="3">
							${msg}
							</font>
						</p>
						<br />



					</div>     <!--<div class="serviceTermForm">-->                 
                </div>  
          
           
          <div class="clear_both"></div>
        </div>   
      </div>
      
    <!-- FOOTER start-->  
     <%@ include file="/views/cbg-include/footer.jsp" %> 
    <!-- FOOTER end-->  
      
    </div>
  </body>
</html>