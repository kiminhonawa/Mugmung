<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../../views/common/header.jsp" %>
   
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
      <c:url value="/static/css/carousel.css" var="carousel" />
      <link rel="stylesheet" href="${carousel }">
      <c:url value="/static/css/carouselrtl.css" var="carouselrtl" />
      <link rel="stylesheet" href="${carouselrtl }">
      <c:url value="/static/css/grid.css" var="grid" />
      <link rel="stylesheet" href="${grid }">
   </head>
   <body>
	<main>
		<div>
<div class="row mb-3 text-center">

	<div class="col-md-4 themed-grid-col">.col-md-4ㅁ</div>

    <div class="col-md-8 themed-grid-col">
      <div class="container">
    <header class="d-flex justify-content-center py-3">
      <ul class="nav nav-pills">
      
      <!-- 
      구매한 상품 - purchased
      리뷰한 상품 - reviewed
      북마크 보기 - bookmarked
      별점보기 - starscore
      문의한 내용 - makgora
       -->
      
      
      	<c:url value="/mypage/purchased" var="purchasedPage" />
      	
        <li class="nav-item">
        	<a id="purchased" class="nav-link active" aria-current="page" >구매한 상품</a>
        </li>
        
        <c:url value="/mypage/reviewed" var="reviewedPage" />
        <li class="nav-item"><a id="reviewed" class="nav-link" >리뷰 보기</a></li>
        
        <c:url value="/mypage/bookmarked" var="bookmarkedPage" />
        <li class="nav-item"><a id="bookmarked" class="nav-link">북마크보기</a></li>
        
        <c:url value="/mypage/starscore" var="starscorePage" />
        <li class="nav-item"><a id="starscore" class="nav-link">별점보기</a></li>
        
        <c:url value="/mypage/makgora" var="makgoraPage" />
        <li class="nav-item"><a href="${ makgoraPage}?id=makgora" id="makgora" class="nav-link">문의한 내용</a></li>
        
      </ul>
    </header>
  </div>
      <div class="card">
                <table class="card-body table table-hover" >
                    <thead>
                        <tr style="border: 1px black " >
                            <th>상호명</th>
                            <th rowspan="2">가게 정보</th>
                            <th >-</th>
                        </tr>
                    </thead>
                    <tbody id="tableLists">
						
                        
                    </tbody>
                </table>
            </div>
    </div>
      
      
      
</div>
		</div>
		<%@ include file="../../views/common/footer.jsp" %>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<c:url value="/static/js/mypage.js" var="mypage"/>
	<script type="text/javascript" src="${mypage }"></script>
   </body>
</html>