<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
      <c:url value="/static/css/carousel.rtl.css" var="carouselrtl" />
      <link rel="stylesheet" href="${carouselrtl }">
   </head>
   <body>
    <main> 
        <div>
<!-- carousel 시작 -->
    <main>
     <style>
     
       .align-self-stretch {
         align-self: stretch;
       }
       .flex-grow-1 {
         flex-grow: 1;
       }
       @font-face {
    font-family: 'EF_jejudoldam';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
     </style>
     


  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>이미지 넣어라1</h1>
            <p>어쩌구저쩌구 사진만 넣자</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption">
            <h1>이미지 넣어라2</h1>
            <p>어쩌구저쩌구 사진만 넣자</p>
          </div>
        </div>
      </div>
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption text-end">
            <h1>이미지 넣어라3</h1>
            <p>어쩌구저쩌구 사진만 넣자</p>
            
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>


   <!-- 가게 정보 상세보기 -->
   <div class="row align-items-md-stretch" >
      <div class="col-md-5 offset-md-1 h-100 p-5 text-bg-white rounded-3">
        <div id="title" class="mb-4" style= "font-family: 'EF_jejudoldam';"><h2>${post.title}title불러오기

         <!-- 리뷰, 즐겨찾기 버튼 --> 
        
            <button class="btn" id="btnReview">
                <img id="reviewBtn" 
                    src="../static/assets/icons/reviewBtn.png" 
                    alt="review-Btn" width="50" />
             <br>       
            <span class="review_button_text">리뷰쓰기</span>
            </button>
        
         
             
        <button class="btn" id="btnToggelBookmark">
            <img id="bookmarkBtn"
                src="../static/assets/icons/bookmarkOff.png"
                alt="bookmark-off" width="50" />
           <br>
           <span class="review_button_text">북마크</span>     
        </button> </h2> 

         <hr>
        </div>

        <div class="my-2">
          <label for="address" style= "font-family: 'EF_jejudoldam';">주소</label>
          <input type="hidden" id="address" value="${ post.address }" name="address" readonly />
        </div>
        <div class="my-2">
          <label for="phone_number" style= "font-family: 'EF_jejudoldam';">전화번호</label>
          <input type="hidden" id="phone_number" value="${ post.phone_number }" name="phone_number" readonly />
        </div>
        <div class="my-2">
          <label for="cuisine_type" style= "font-family: 'EF_jejudoldam';">음식 종류</label>
          <input type="hidden" id="cuisine_type" value="${ post.cuisine_type }" name="cuisine_type" readonly />
        </div>
        <div class="my-2">
          <label for="price" style= "font-family: 'EF_jejudoldam';">가격대</label>
          <input type="hidden" id="price" value="${ post.price }" name="price" readonly />
        </div>
        <div class="my-2">
          <label for="parking" style= "font-family: 'EF_jejudoldam';">주차</label>
          <input type="hidden" id="parking" value="${ post.parking }" name="parking" readonly />
        </div>
        <div class="my-2">
          <label for="open_time" style= "font-family: 'EF_jejudoldam';">영업 시간</label>
          <input type="hidden" id="open_time" value="${ post.open_time }" name="open_time" readonly />
        </div>
        <div class="my-2">
          <label for="last_order" style= "font-family: 'EF_jejudoldam';">마지막 주문</label>
          <input type="hidden" id="last_order" value="${ post.last_order }" name="last_order" readonly />
        </div>
         <div class="my-2">
          <label for="break_time" style= "font-family: 'EF_jejudoldam';">쉬는 시간</label>
          <input type="hidden" id="break_time" value="${ post.break_time }" name="break_time" readonly />
        </div>
        <div class="my-2">
          <label for="holiday" style= "font-family: 'EF_jejudoldam';">휴일</label>
          <input type="hidden" id="holiday" value="${ post.holiday }" name="holiday" readonly />
        </div>
         <div class="my-2">
          <label for="website" style= "font-family: 'EF_jejudoldam';">웹 사이트</label>
          <input type="hidden" id="website" value="${ post.website }" name="website" readonly />
        </div>
         <div class="my-2">
          <label for="menu" style= "font-family: 'EF_jejudoldam';">메뉴</label>
          <input type="hidden" id="menu" value="${ post.menu }" name="menu" readonly />
        </div>
       <hr>
      </div>
      
      <div class="col-md-4 offset-md-1">
         <div class="h-90 p-5 bg-light border rounded-3 ">
           <h2>지도</h2>
         </div>
       </div>   
   </div>

   
    <section class="my-2 d-flex justify-content-center align-items-center">
        <div class="card align-self-stretch" style="min-width: 1260px; max-width: 1260px;">
      <div class="card-header fw-bold">
      
        <span style= "font-family: 'EF_jejudoldam';">리뷰</span>
        <span id="reviewCount">(${ post.reviewCount })</span>
      </div>
    
        <div class="my-2 row" id="replies">
         <h5>리뷰리뷰 불러와라~~</h5>
        </div>
    </div>
   
   </section>
     
             
    
        <%@ include file="../../views/common/footer.jsp" %> 
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="../static/js/detail.js"></script>
   </body>
</html>
