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
      
      <style>
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    
    .image {
      display: flex;
      justify-content: center;
      margin-bottom: 10px;
    }
    
    .label {
      margin-bottom: 10px;
    }
    
    .button {
      margin-bottom: 10px;
    }
    
    
  </style>
      
   </head>
   <body>
   
   <script>
    // 이미지 요청 함수
    function requestImage() {
        // XMLHttpRequest 객체 생성
        var xhr = new XMLHttpRequest();
        
        // GET 요청 설정
        xhr.open('GET', '/mugmung/mypage/your-image-url', true);
        
        // 응답 처리
        xhr.onload = function() {
            if (xhr.status === 200) {
                // 응답을 이미지로 설정
                var blob = xhr.response;
                var url = URL.createObjectURL(blob);
                document.getElementById('myImage').src = url;
            }
        };
        
        // 요청 전송
        xhr.send();
    }
</script>

<!-- 이미지 표시 -->
<img id="myImage" src="" alt="이미지">

<!-- 버튼 클릭 시 이미지 요청 -->
<button onclick="requestImage()">이미지 요청</button>
   
   
	<main>
		<input type="hidden" id="mymyImage" name="mymyImage" value="${img_loc}">
		<div>
<div class="row mb-3 text-center">

	<div class="col-md-4 themed-grid-col">
		<div class="container">
    <div class="image">
		<img id="myImgUrl" src="" alt="이미지" style="width: 200px; height: 200px;">
    </div>
    <div class="label">
      <p>${username } </p>님 안녕하세요.
    </div>
    
    <button id="settingInfoBtn" name="settingInfoBtn" class="settingInfoBtn">설정</button>
    <br/>
    <div>
      <label for="bookmarkCnt">북마크 수 : ${cntDto.bookmarkCnt }</label>
     </div>
     <div >
      <label for="reviewCnt">리뷰 수 : ${cntDto.reviewCnt }</label>
      </div>
      <div >
      <label for="reviewCnt">예약 수 : ${cntDto.reserveCnt }</label>
      </div>
    
    
  </div>
	</div>

    <div class="col-md-8 themed-grid-col">
      <div class="container">
      <div>
      
      <div>
   			<c:url value="/upload/imgUpload" var="upload"></c:url>
				<form id="signUploadForm" action="${upload}" method="post" enctype="multipart/form-data">
      <label for="">수정할 프로필 사진 선택</label>
    				<input type="file" class="myfile" id="file" name="file" />
    				<input type="button" id="btnUpload" value="Upload" />
    			</form>
   				<input type="text" id="user_image" name="user_image">
  		</div>
  		<br>
      
      	<form action="" method="post">
      		<div>
      			<label for="email">현재 이메일 입력</label>
      			<input type="email" id="email" name="email">
      		</div>
      		<label id="emailLabel" ></label>
      		<div>
      			<label for="email-confirm">변경할 이메일 입력</label>
      			<input type="email" id="email-confirm" name="email-confirm">
   			</div>
   			
    	</form>
      </div>
    	
    
  </div>
    </div>
      
      
      
</div>
		</div>
		<%@ include file="../../views/common/footer.jsp" %>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<c:url value="/static/js/set.js" var="set"/>
	<script type="text/javascript" src="${set }"></script>
   </body>
</html>