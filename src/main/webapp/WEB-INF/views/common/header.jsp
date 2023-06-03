<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="EUC-KR">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Spring2</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
      <link href="./static/css/headers.css" rel="stylesheet" /> 
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
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <img src="./static/assets/icons/ggule.png" alt="제주도 맛집! 머그멍">
        </a>

<ul class="logo-cen-ul nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">

	<li>
		<img src="./static/assets/icons/ggule.png" alt="제주도 맛집! 머그멍">
	</li>
	
</ul>



        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
        <div class="search-container">
    <input type="search" class="form-control search-input" placeholder="Search.aaa.." aria-label="Search">
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
            <li><a class="dropdown-item" href="#">New project...</a></li>
            <li><a class="dropdown-item" href="#">Settings</a></li>
            <li><a class="dropdown-item" href="#">Profile</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Sign out</a></li>
          </ul>
        </div>
      </div>
      </div>
  </header>
      <div>
              <div class="container">
    <header class="d-flex justify-content-center py-3">
    
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="#" class="nav-link active" aria-current="page">홈</a></li>
        <li class="nav-item"><a href="#" class="nav-link">머그멍 데이</a></li>
        <li class="nav-item"><a href="#" class="nav-link">머그멍 추천</a></li>
        <li class="nav-item"><a href="#" class="nav-link">베스트</a></li>
        <li class="nav-item"><a href="#" class="nav-link">프라임</a></li>
        <li class="nav-item"><a href="#" class="nav-link">쿠폰</a></li>
        <li class="nav-item"><a href="#" class="nav-link">특전</a></li>
        <li class="nav-item"><a href="#" class="nav-link">집으로</a></li>
        <li class="nav-item"><a href="#" class="nav-link">놀거리</a></li>
        <li class="nav-item"><a href="#" class="nav-link">커뮤니티</a></li>
        
      </ul>
    </header>
  </div>
         
      </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>      
   </body>
</html>