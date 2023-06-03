<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은!머그멍</title>
      <link  
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
        crossorigin="anonymous">
      <style type="text/css">
      	ul.address-ul{
      		margin-top: 17px;
      	}
      	ul.address-ul li{
      		    position: relative;
    	display: inline-block;
    font-size: 12px;
    line-height: 14px;
    color: #666;
      	}
      </style>
   </head>
   <body>
      <div>
         <div class="container">
  <footer class="py-3 my-4">
  <p style="
    color: #999;
    font-size: 11px;
">(주)머그멍은 통신판매중개자이며 통신판매의 당사자가 아닙니다.<br>따라서 입점 판매자가 등록한 상품, 거래정보 및 거래에 대하여 ㈜머그멍은 일체의 책임을 지지 않습니다.</p>
            <ul class="address-ul">
              <li>* TF : JJJ AI </li>
              <li>* 주소 : 서울 강남구 테헤란로 124 삼원타워 </li>
            </ul>
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
    <c:url value="/" var="mainPage"></c:url>
      <li class="nav-item"><a href="${mainPage }" class="nav-link px-2 text-muted">Home</a></li>
<c:url var="bestPage" value="/best/best" />     
      <li class="nav-item"><a href="${bestPage }" class="nav-link px-2 text-muted">Best</a></li>
<c:url var="specialPage" value="/special/special" />      
      <li class="nav-item"><a href="${specialPage }" class="nav-link px-2 text-muted">Special</a></li>
<c:url var="faqsPage" value="/customer/faqs" />      
      <li class="nav-item"><a href="${faqsPage }" class="nav-link px-2 text-muted">FAQs</a></li>
<c:url value="/" var="mainPage"></c:url>      
      <li class="nav-item"><a href="${mainPage }" class="nav-link px-2 text-muted">About</a></li>
    </ul>
    <p class="text-center text-muted">© 2023 mugmung, Inc</p>
  </footer>
</div>
         
         <script 
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
           integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
           crossorigin="anonymous">
           </script>
      </div>
   </body>
</html>