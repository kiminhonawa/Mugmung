<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



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
   <%@ include file="../../views/common/header.jsp" %>
    <main> 
<!-- carousel 시작 -->
     <style>

    .btn-container {
    text-align: right;
   
  } 
    .nametext {
     text-align: left;
    }


     .Menu_name {
          display: inline-block;
         margin-right: 10px;
       }

    .th, td {
  padding-left: 5px;
  padding-right: 5px;
  padding-top: 5px;
  padding-bottom: 5px;
}

     .menuItem {
     
    display: -moz-flex;
    display: -ms-flexbox;
    display: flex;
    display: -webkit-box;
    display: -webkit-flex;
    -moz-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-flex-direction: row;
    -webkit-box-direction: normal;
    -webkit-box-orient: horizontal;
    border-bottom: 1px solid #e9e9e9;
    margin-bottom: 5px;
     margin-top: 10px;

    
}
     
     
     @font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
     
     
    .table {
    border-collapse: separate;
    border-spacing: 10px;
    
  }
 
         .no-border {
        border: none;
      }
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
    
    
    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" ><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption text-end">
            <img src="${ }" >
          </div>
        </div>
      </div>
    </div>
  
  </div>

 
    <!-- 가게 title -->
    
    <div class="row align-items-md-stretch">
     <div class="col-md-5 offset-md-1 h-100 p-5 text-bg-white rounded-3">
     
     
      <div id="title" class="mb-4" style="font-family: 'EF_jejudoldam';">
       <h1>${detail.name}
        <!-- 예약하기, 리뷰, 즐겨찾기 버튼 -->
        <div class="btn-container " style="font-family: 'SUITE-Regular';">
        <button class="btn" id="btnReserve" >
        <c:url var="reservePage" value="/reserve/booking">
            <c:param name="id" value="${ detail.id }"></c:param>
         </c:url>
         <a href="${reservePage}"><img id="reserveBtn" src="../static/assets/icons/reserve.png"
          alt="reserve-Btn" width="50" onclick="location.href='${reservePage}'" /></a> <br>
          <span class="reserve_button_text" onclick="location.href='${reservePage}'">예약하기</span>
        </button>
       


        <button class="btn" id="btnReview">
         <c:url var="reviewPage" value="/review/review">
            <c:param name="id" value="${ detail.id }"></c:param>
         </c:url>
         <a href="${reviewPage}"><img id="reviewBtn" src="../static/assets/icons/reviewBtn.png"
          alt="review-Btn" width="50"/></a> <br> 
          <span class="review_button_text" onclick="location.href='${reviewPage}'">리뷰쓰기</span>
        </button>

        <button class="btn" id="bookmarkBtn" >
        <input  type="hidden" id="restaurant_id" name="restaurant_id" value="${param.id}" />
        <input  type="hidden" id="username" name="username" value="${username}" />
        
        <c:choose>
		<c:when test="${existFlag == 0}">
		<!-- 처리할 내용 -->
		<img id="btnToggleBookmark"
		          src="../static/assets/icons/bookmarkOff.png"
		          alt="bookmark-off" width="50" />
		</c:when>
		<c:when test="${existFlag == 1}">
		<!-- 처리할 내용 -->
		<img id="btnToggleBookmark"
		          src="../static/assets/icons/bookmarkOn.png"
		          alt="bookmark-on" width="50" />
		</c:when>
		</c:choose>
         <!-- <img id="btnToggleBookmark"
          src="../static/assets/icons/bookmarkOff.png"
          alt="bookmark-off" width="50" />  -->
          <br> 
          <span class="review_button_text" >북마크</span>
        </button>
        </div>
        </h1>
       <hr>
      </div>    





      <!-- 가게 정보 불러오기 -->
    <table class="menu_info my-5" style="font-family: 'SUITE-Regular';">
        <tbody>
            <tr class="only-desktop">
                <th>가게 정보</th>
                  <td>${ detail.name_info }</td>
            </tr>
            <tr class="only-desktop">
                <th style="width: 100px;">주소</th>
                  <td>${ detail.address1 }&nbsp;${ detail.address2 }</td>
                  </tr>
            <tr class="only-desktop">
                <th>전화번호</th>
                    <td>${ detail.phone_num }</td>
            </tr> 
            
            <!-- 음식타입 3가지 --> 
             <tr class="only-desktop">
                <th>음식 종류</th>
                    <td>${ detail.food_type1 } / ${ detail.food_type2 } / ${ detail.food_type3 }</td>
            </tr> 
            
             <!-- 최소 ~ 최대 금액 -->
             <tr class="only-desktop">
                <th>가격대</th>
                    <td>${ detail.low_price_range }원 ~ ${ detail.high_price_range }원</td>
            </tr> 
            
            <!-- 영업시작시간 ~ 영업종료시간 -->
             <tr class="only-desktop">
                <th>영업 시간</th>
                    <td>${ detail.business_start_hour } : 00 ~ ${ detail.business_end_hour } : 00</td>
            </tr>   
             <tr class="only-desktop">
                <th>마지막 주문</th>
                    <td>${ detail.last_order }  : 00</td>
            </tr>
             <tr class="only-desktop">
                <th>휴일</th>
                    <td>${ detail.holiday }</td>
            </tr>  
              <tr class="only-desktop">
                <th>웹 사이트</th>
                    <td><a href="${detail.web_link}" target="_blank">${detail.web_link}</a></td>
            </tr>
            
            
             <!-- 메뉴 id -->
              <tr class="my-5">
                <th>메뉴</th>
                <td class="menu_td">
                <ul class="menuList" style="padding-left: 0px;">
                  <li class="menuItem">
                    <span class="Menu_name">${ detail.menu1_name }</span>
                    <span class="Menu_price"> ${ detail.menu1_price }</span>
                  </li>
                   
                  <li class="menuItem">
                    <span class="Menu_name">${ detail.menu2_name } </span>
                    <span class="Menu_name">${ detail.menu2_price }</span>
                  </li>
                  <li class="menuItem">
                     <span class="Menu_name">${ detail.menu3_name }</span> 
                      <span class="Menu_name">${ detail.menu3_price }</span>
                  </li>
                  <%-- <li class="menuItem">
                   <span class="Menu_name">${ detail.menu_id.menu4_name } </span>
                    <span class="Menu_name">${ detail.menu_id.menu4_price }</span>
                    </li>
                    
                  <li class="menuItem">
                   <span class="Menu_name">${ detail.menu_id.menu5_name } </span>
                    <span class="Menu_name">${ detail.menu_id.menu5_price }</span>
                    </li>
                    
                  <li class="menuItem">
					<span class="Menu_name">${ detail.menu_id.menu6_name } </span>
					<span class="Menu_name">${ detail.menu_id.menu6_price }</span>
				  </li>
                  <li class="menuItem">
					<span class="Menu_name">${ detail.menu_id.menu7_name } </span>
					<span class="Menu_name">${ detail.menu_id.menu7_price }</span>
				  </li>
                  <li class="menuItem">
					<span class="Menu_name">${ detail.menu_id.menu8_name } </span>
					<span class="Menu_name">${ detail.menu_id.menu8_price }</span>
				  </li>
                  <li class="menuItem">
					<span class="Menu_name">${ detail.menu_id.menu9_name } </span>
					<span class="Menu_name">${ detail.menu_id.menu9_price }</span>
				  </li>
                  <li class="menuItem">
					<span class="Menu_name">${ detail.menu_id.menu10_name } </span>
					<span class="Menu_name">${ detail.menu_id.menu10_price }</span>
				  </li> --%>
                  </ul>
                  </td>
            </tr>

       
      </tbody>
      </table>
       <hr>
      </div>
    
    
    <!-- 지도 위치 불러오기 -->
     <div class="col-md-4 offset-md-1">
      <div class="h-90 p-5 bg-light border rounded-3 ">
       <label for="map_id" style="font-family: 'EF_jejudoldam';">지도</label>
       <img src="${mapImageUrl}" alt="지도 위치 이미지">
       
       <%-- <input type="text" id="map_id" value="${ detail.map_id.x } ${ detail.map_id.y }"
        name="map_id" readonly /> --%>
      </div>
     </div>
 
   </div>
  



	
    <!-- 작성된 리뷰 불러오기 -->
    <section
     class="my-2 d-flex justify-content-center align-items-center">
   <div class="card align-self-stretch"
    style="min-width: 1260px; max-width: 1260px;">
    <div class="card-header fw-bold">
     <span style="font-family: 'EF_jejudoldam';">리뷰</span>
     <%-- <span id="reviewCount">(${review.reviewCount})</span>  --%>
    </div>

    <div class="card-body" id="replie">
     <div class="my-2 row">
     <!--  <label class="form-label" for="replyText" style="font-family: 'SUITE-Regular';"> 나의 리뷰</label> -->

      <!--  <div class="col-10">
        <textarea class="form-control" id="replyText"></textarea>
        <input class="d-none" id="writer" value="admin" />
       </div> -->

      <!-- 리뷰 보여줄 영역 -->

      <div class="my-2 row" id="replies" style="font-family: 'SUITE-Regular';">
       <c:forEach items="${ review }" var="list">
        <div class="comment-item mb-3" style="border-bottom: 1px solid #ccc;">
         <div>
          <span class="d-none">${list.id}</span> 
          <span class="fw-bold" style="font-size: 20px;">${list.writer}</span>
          <span class="text-secondary" style="font-size: 13px;">
          <fmt:formatDate  value="${list.modified_time}"
            pattern="yyyy-MM-dd" /></span>

         </div>
         <br>
         <div>${list.reply_text}</div>
         <br>

        </div>
       </c:forEach>

<%--       <span>${review.REPLY_TEXT}</span> 
      <span>${review.MODIFIED_TIME}</span>  --%>
    </div>
   </div>
</div>
</div>
  </section>
    

    <%@ include file="../../views/common/footer.jsp"%>
    
 </main>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="/mugmung/static/js/bookmark.js"></script>
</body>
</html>
