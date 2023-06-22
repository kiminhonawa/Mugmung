<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>

      <link href="/mugmung/static/css/headers.css" rel="stylesheet" />
      <c:url value="/static/css/dropdowns.css" var="dropdown" /> 
      <link href="${dropdown }" rel="stylesheet" />
      <link 
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 
      crossorigin="anonymous" />
      <style>
      
    .search-container {
      display: flex;
      align-items: center;
      width: 500px;
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
    
    .container {
    	text-align: center;
    }
    .form-control.search-input {
    border: 2px solid orange;
    }
    
  </style>

   </head>
   <style>
  @font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
   </style>
   
   <body>
<!-- 헤더 시작 -->   
   	<header class="p-3 mb-3 border-bottom" style="font-family: 'omyu_pretty'; font-size: 30px;">

<!-- 헤더 컨테이너 -->   	
   <div class="container">
     <div class="d-flex flex-wrap align-items-center justify-content-lg-start">
<!-- 헤더 좌측 영역 -->      
       <c:url value="/" var="mainPage"></c:url>
        <a href="${mainPage }" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <c:url value="/static/img/mugmung.png" var="mugmung_logo" />
					<img src="${ mugmung_logo }" alt="제주도 맛집! 머그멍" style="width:250px; height:100px;">
        </a>
<!-- 헤더 좌측 영역 end-->

<!-- 헤더 가운데 영역 -->
		<ul class="logo-cen-ul nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
		<%-- 	<li>

				<c:url value="/" var="mainPage"></c:url>
        <a href="${mainPage }" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <c:url value="/static/img/mugmung.png" var="mugmung_logo" />
					<img src="${ mugmung_logo }" alt="제주도 맛집! 머그멍" style="width:250px; height:100px;">
        </a>
			</li> --%>
		</ul>
<!-- 헤더 가운데 영역 end-->

<!-- 헤더 우측 영역 검색 -->

 <form class="search-form" role="search">
  <div class="search-container">
    <input type="search" class="form-control search-input text-right" placeholder="Search" aria-label="Search">
    <button type="submit" value="검색" class="search-button">
      <c:url value="/static/assets/icons/search-heart.svg" var="searchIcon" />
      <img src="${searchIcon}" alt="검색">
    </button>
  </div>
</form> 

<!-- 헤더 우측 영역 검색 end-->        
        
<!-- 로그인한 username이 있는 경우 -->
	     <c:if test="${not empty signedInUser }">
	     
	     	<div class="flex-shrink-0 dropdown">
          		<a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
          			<c:url value="/static/img/user_login_default_img.png" var="loginImg"></c:url>
            		<img src="${loginImg }" alt="mdo" width="32" height="32" class="rounded-circle" style=" margin-left: 30px;  ">
          		</a>
	          	<ul class="dropdown-menu text-large shadow">
		           <c:url var="myPage" value="/mypage/mypage" />
		            <li><a class="dropdown-item" href="${myPage }" >마이 페이지</a></li>
		            
		            <c:url var="setPage" value="/mypage/set" />
		            <li><a class="dropdown-item" href="${setPage }">설정</a></li>
		            
		            <c:url var="mainPage" value="/" />
		            <li><a class="dropdown-item" href="#">프로필</a></li>
		            
		            <c:url var="mainPage" value="/" />
		            <li><hr class="dropdown-divider"></li>
		            
		            <c:url var="logout" value="/user/signout" />
		            <li><a class="dropdown-item" href="${logout }">로그아웃</a></li>
	          	</ul>
         	</div> 
         </c:if>
<!-- 로그인한 username이 있는 경우 end--> 

        
<!-- 로그인한 username이 없는 경우 -->         
         <c:if test="${ empty signedInUser }">
          <div class="col-md-3 text-end">
       		<button type="button" id="loginBtn" class="btn btn-warning me-2">로그인</button>
        	<button type="button" id="signUpBtn" class="btn btn-light">회원가입</button>
      	  </div>
      	</c:if>
<!-- 로그인한 username이 없는 경우 end-->            
        </div>
      </div>
<!-- 헤더 컨테이너 끝 -->      
  </header>
<!-- 헤더 끝 -->

  
	<main style="font-family: 'omyu_pretty'; font-size: 25px;">
<!-- 네비게이션 바 시작 -->	
	 <div class="container" style="padding-bottom: 15px;">
	  <ul class="nav nav-pills justify-content-center">
<!-- map -->    		
	   <c:url var="mugMapPage" value="/" />
	   <li class="nav-item"><a href="${mugMapPage }" class="nav-link" aria-current="page">머그맵</a></li>
<!-- map end-->	 
<!-- 홈 end-->




        <c:url var="bestPage" value="/best/best" />
        <li class="nav-item"><a href="${bestPage }" class="nav-link">베스트</a></li>
        
        <c:url var="primePage" value="/prime/prime" />
        <li class="nav-item"><a href="${primePage }" class="nav-link">유튜버가 사랑한 제주도</a></li>
        
        <c:url var="couponPage" value="/coupon/coupon" />
        <li class="nav-item"><a href="${couponPage }" class="nav-link">쿠폰</a></li>
        
        <c:url var="specialPage" value="/special/special" />
        <li class="nav-item"><a href="${specialPage }" class="nav-link">특전</a></li>
        
        <c:url var="innPage" value="/home/inn" />
        <li class="nav-item"><a href="${innPage }" class="nav-link">숙소</a></li>
        
        <c:url var="playPage" value="/play/play" />
        <li class="nav-item"><a href="${playPage }" class="nav-link">놀거리</a></li>

<!-- 커뮤니티 -->        
        <li class="nav-item dropdown">
        	<a href="#" class=" d-block link-dark text-decoration-none dropdown-toggle nav-link" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
	        	<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownMenuLink2">
	        	<c:url var="announcelistPage" value="/community/announce/announcelist" />
	        		<li><a class="dropdown-item" href="${ announcelistPage}">공지사항</a></li>
	        		
        		<c:url var="reviewlistPage" value="/community/review/reviewlist" />
	        		<li><a class="dropdown-item" href="${ reviewlistPage}">리뷰게시판</a></li>
	        		
        		<c:url var="capturelistPage" value="/community/capture/capturelist" />
	        		<li><a class="dropdown-item" href="${ capturelistPage}">사진게시판</a></li>
	        		
	      		</ul>
        </li>
<!-- 커뮤니티 end-->

<!-- 고객센터 -->       
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
<!-- 고객센터 끝-->        

<c:if test="${fn:contains(signedInUser, 'admin')}">
<!-- 어드민 관련 로그인 시 보여짐 -->
		<c:url var="adminMainPage" value="/admin/main" />
        <li class="nav-item"><a href="${adminMainPage }" class="nav-link">어드민 페이지</a></li>        
<!-- 어드민 관련 로그인 시 보여짐 -->        
</c:if>        
        <%-- <c:url var="postListPage" value="/post/list" />
        <li class="nav-item"><a href="${postListPage }" class="nav-link">선생님 수업</a></li> --%>
        
      </ul>
  </div>
<!-- 네비게이션바 끝 -->         
      </main>
     <c:url value="/static/js/headerb.js" var="headerb" />
     <script 
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" 
    crossorigin="anonymous"></script>
     <script type="text/javascript" src="${headerb }"></script> 
   </body>
</html>