<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Headers · Bootstrap v5.2</title>
    <!-- 부트스트랩css태그 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
			rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" 
			crossorigin="anonymous">
	<!-- css 경로지정 -->
	<link type="text/css" rel="stylesheet" href="./static/css/headers.css" />


    <link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/headers/">



  </head>
  <body>
	<main>
  		<h1 class="visually-hidden">Headers examples</h1>

    	  <header class="p-3 text-bg-dark">
		    <div class="container">
		      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
		        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
		          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
		        </a>
		
		        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
		          <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
		          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
		        </ul>
		
		        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
		          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
		        </form>
		
		        <div class="text-end">
		          <button type="button" class="btn btn-outline-light me-2">Login</button>
		          <button type="button" class="btn btn-warning">Sign-up</button>
		        </div>
		      </div>
		    </div>
		  </header>
	</main>
		  
		  
		  
		  <style>
.calendar {
	font-family: Arial, sans-serif;
	width: 300px;
}

.calendar .header {
	color: black;
	text-align: center;
	padding: 10px;
}

.calendar .days {
	margin: 0;
	padding: 0;
	list-style: none;
}

.calendar .days li {
	display: inline-block;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	margin-bottom: 5px;
}

.calendar .days li.active {
	background-color: darklight;
	color: white;
}

.calendar .days li.active {
	background-color: darklight;
	color: white;
}

.calendar .weekdays {
	display: flex;
	justify-content: space-between;
	padding: 0 10px;
	margin-bottom: 5px;
}

.calendar .weekdays li {
	width: 40px;
	text-align: center;
	list-style-type: none; /* 마침표 제거 */
        
}
</style>

</head>
<body>
	<h2>Reservation System</h2>
       	 		
       	 		<dt>날짜</dt>
        <div class="col-md-auto">
        <div class="calendar">
		<div class="header">
			<button id="prevButton">prev</button>
			<span id="monthYear"></span>
			<button id="nextButton">next</button>
		</div>
		<ul class="weekdays">
			<li>일</li>
			<li>월</li>
			<li>화</li>
			<li>수</li>
			<li>목</li>
			<li>금</li>
			<li>토</li>
		</ul> <!-- 날짜요일 구분 -->
		<hr />
		<ul class="days"></ul>  
          
          
        </div>
        </div>
		  
			


	<!-- 부트스트랩 js태그 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
 	<!-- 자바스크립트 경로지정 -->
	<script type="text/javascript" src="../static/js/tastyRoad.js"></script>
	
  </body>
</html>
