<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
      <link href="./static/css/headers.css" rel="stylesheet" /> 
      <link href="./static/css/dropdowns.css" rel="stylesheet" />
      <style>
    .search-container {
      display: flex;
      align-items: center;
    }

    .search-input {
      flex: 1;
      margin-right: 10px;
    }

    .search-button {
      display: inline-block;
      padding: 0;
      border: none;
      background: none;
    }
  </style>
   </head>
   <body>
   <header class="p-3 mb-3 border-bottom">
   <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <c:url value="/" var="mainPage"></c:url>
        <a href="${mainPage }" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <img src="./static/assets/icons/ggule.png" alt="제주도 맛집! 머그멍">
        </a>

<ul class="logo-cen-ul nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

	<li>
		<img src="./static/assets/icons/ggule.png" alt="제주도 맛집! 머그멍">
	</li>
	
</ul>



        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
        <div class="search-container">
    <input type="search" class="form-control search-input" placeholder="Search..." aria-label="Search">
    <button type="submit" value="검색" class="search-button">
      <img src="./static/assets/icons/search-heart.svg" alt="제주도 맛집! 머그멍">
    </button>
  </div> 
        </form>

        <div class="flex-shrink-0 dropdown">
          <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle" style="
    margin-left: 30px;  ">
          </a>
          <ul class="dropdown-menu text-small shadow">
          
          <c:url var="mainPage" value="/" />
            <li><a class="dropdown-item" href="#">마이 페이지</a></li>
            
            <c:url var="mainPage" value="/" />
            <li><a class="dropdown-item" href="#">설정</a></li>
            
            <c:url var="mainPage" value="/" />
            <li><a class="dropdown-item" href="#">프로필</a></li>
            
            <c:url var="mainPage" value="/" />
            <li><hr class="dropdown-divider"></li>
            
            <c:url var="mainPage" value="/" />
            <li><a class="dropdown-item" href="#">로그아웃</a></li>
          </ul>
        </div>
      </div>
      </div>
  </header>
      <div>
              <div class="container">
    <header class="d-flex justify-content-center py-3">
    
      <ul class="nav nav-pills">
      	<c:url var="mainPage" value="/" />
        <li class="nav-item"><a href="${mainPage }" class="nav-link active" aria-current="page">홈</a></li>
        
        <li class="nav-item dropdown">
        	<a href="#" class=" d-block link-dark text-decoration-none dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">머그멍 데이</a>
        	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownMenuLink2">
        		<c:url var="dayPage" value="/blog/day" />
	        		<li><a class="dropdown-item" href="${dayPage }">오늘 만이</a></li>
        		<c:url var="monthPage" value="/blog/month" />
	        		<li><a class="dropdown-item" href="${monthPage }">이달엔 꼭</a></li>
	      		</ul>
       	</li>
        
        <li class="nav-item dropdown">
        	<a href="#" class=" d-block link-dark text-decoration-none dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">머그멍 추천</a>
	        	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownMenuLink2">
	        	<c:url var="wordcupPage" value="/recommend/wordcup" />
	        		<li><a class="dropdown-item" href="${wordcupPage }">맛상형 월드컵</a></li>
        		<c:url var="goldenbellPage" value="/recommend/goldenbell" />
	        		<li><a class="dropdown-item" href="${goldenbellPage }">맛집 골든벨</a></li>
        		<c:url var="analysisPage" value="/recommend/analysis" />
	        		<li><a class="dropdown-item" href="${analysisPage }">취향 OX</a></li>
	      		</ul>
        </li>
        
        <c:url var="bestPage" value="/best/best" />
        <li class="nav-item"><a href="${bestPage }" class="nav-link">베스트</a></li>
        
        <c:url var="primePage" value="/prime/prime" />
        <li class="nav-item"><a href="${primePage }" class="nav-link">프라임</a></li>
        
        <c:url var="couponPage" value="/coupon/coupon" />
        <li class="nav-item"><a href="${couponPage }" class="nav-link">쿠폰</a></li>
        
        <c:url var="specialPage" value="/special/special" />
        <li class="nav-item"><a href="${specialPage }" class="nav-link">특전</a></li>
        
        <c:url var="innPage" value="/home/inn" />
        <li class="nav-item"><a href="${innPage }" class="nav-link">집으로</a></li>
        
        <c:url var="playPage" value="/play/play" />
        <li class="nav-item"><a href="${playPage }" class="nav-link">놀거리</a></li>
        
        <li class="nav-item dropdown">
        	<a href="#" class=" d-block link-dark text-decoration-none dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
	        	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownMenuLink2">
	        	<c:url var="announcePage" value="/community/announce" />
	        		<li><a class="dropdown-item" href="${ announcePage}">공지사항</a></li>
        		<c:url var="reviewPage" value="/community/review" />
	        		<li><a class="dropdown-item" href="${ reviewPage}">리뷰게시판</a></li>
        		<c:url var="capturePage" value="/community/capture" />
	        		<li><a class="dropdown-item" href="${ capturePage}">사진게시판</a></li>
	      		</ul>
        </li>
        
        <li class="nav-item dropdown">
        	<a href="#" class=" d-block link-dark text-decoration-none dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">고객센터</a>
	        	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownMenuLink2">
	        	<c:url var="faqsPage" value="/customer/faqs" />
	        		<li><a class="dropdown-item" href="${ faqsPage }">자주묻는질문</a></li>
	        	<c:url var="makgoraPage" value="/customer/makgora" />	
	        		<li><a class="dropdown-item" href="${ makgoraPage }">1:1문의</a></li>
	        	<c:url var="partnershipPage" value="/customer/partnership" />	
	        		<li><a class="dropdown-item" href="${ partnershipPage }">제휴문의</a></li>
	        	<c:url var="proposalPage" value="/customer/proposal" />	
	        		<li><a class="dropdown-item" href="${ proposalPage }">제안하기</a></li>
	      		</ul>
        </li>
        
        
        <c:url var="postListPage" value="/post/list" />
        <li class="nav-item"><a href="${postListPage }" class="nav-link">선생님 수업</a></li>
        
      </ul>
    </header>
  </div>
         
      </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
      
   </body>
</html>