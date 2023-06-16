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
      <link rel="stylesheet" href="carousel">
      <c:url value="/static/css/carouselrtl.css" var="carouselrtl" />
      <link rel="stylesheet" href="carouselrtl">

      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
   </head>
   <body>

	<main>
		<!-- 파일 업로드에서는 enctype(인코딩타입)을 multipart/form-data로 반드시 설정 -->
    <form action="upload_ok" method="post" enctype="multipart/form-data"> <!-- 폼요소가 파일이나 이미지 전송할때 사용 -->
        파일 선택 : <input type="file" name="file">
        <input type="submit" value="전송">
    </form>
=======
   <main>
   <hr>
   <p align="left" style="padding-left: 80px; font-weight: bold; font-size: large;">${username}님 안녕하세요.</p>
   <br>
   <h1 align="center">매장 정보</h1>
   <h4 align="center">연령별 / 성별 인기도</h4>
   <div class="container">
      <div class="row">
         <div class="col-md-2" style="padding-left: 0; width: 150px;">
            <div class="sidebar">
               <ul class="nav flex-column">
                  <c:url var="adminNoticePage" value="/admin/main/notice" />
                        <li class="nav-item"><a href="${adminNoticePage}" class="nav-link">공지사항</a></li>
                  <li class="nav-item">
<<<<<<< HEAD
                     <c:url var="storecreatePage" value="/admin/storecreate" />
                    <a class="nav-link" href="${ storecreatePage }">새 매장 등록</a>
=======
                     <a class="nav-link" href="/mugmung/admin/main">매장 정보</a>
>>>>>>> refs/remotes/origin/main
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#">새 매장 등록</a>
                  </li>
                  <c:url var="adminReviewPage" value="/admin/main/review"/>
				  <li class="nav-item">			
  				  <a href="${adminReviewPage}" class="nav-link">리뷰 관리</a>
				  </li>     
               </ul>
            </div>
         </div>
         <div class="col-md-5">
            <div>
              <canvas id="ageChart" width="350" height="350"></canvas> <!-- 바 차트를 표시할 canvas 요소 --> 
            </div>
         </div>
         <div class="col-md-5">
            <div>
              <canvas id="genderChart" width="350" height="350"></canvas> <!-- 원 차트를 표시할 canvas 요소 --> 
            </div>
         </div>
      </div>
   </div>
>>>>>>> refs/remotes/origin/inho

<<<<<<< HEAD
    <div id="imagePreview"></div>
		<%@ include file="../../views/common/footer.jsp" %>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="../static/js/picture-upload.js"></script>

   </body>
</html>
=======
   <%@ include file="../../views/common/footer.jsp" %>
</main>
<script>
   // 연령대 선호도 데이터
   var ageData = {
      labels: ['10대', '20대', '30대', '40대'],
      datasets: [{
         label: '연령대 선호도',
         data: [10, 80, 60, 30],
         backgroundColor: ['lightblue', 'lightgreen', 'yellow', 'lightpink'],
      }]
   };

   // 성별 데이터
   var genderData = {
      labels: ['남성', '여성'],
      datasets: [{
         label: '성별 비율',
         data: [60, 40],
         backgroundColor: ['skyblue', 'pink'],
      }]
   };

   // 차트 옵션
   var chartOptions = {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
         legend: {
            position: 'bottom',
         },
         tooltip: {
            callbacks: {
               label: function (context) {
                  var label = context.label || '';
                  if (label) {
                     label += ': ';
                  }
                  if (context.parsed && context.parsed.toFixed) {
                     label += context.parsed.toFixed(2) + '%';
                  }
                  return label;
               }
            }
         }
      }
   };

// 연령대 선호도 차트 생성
   var ageCtx = document.getElementById('ageChart').getContext('2d');
   var ageChart = new Chart(ageCtx, {
      type: 'bar',
      data: ageData,
      options: {
         scales: {
            y: {
               beginAtZero: true,
               max: 100
            }
         },
         ...chartOptions
      }
   });

   // 성별 차트 생성
   var genderCtx = document.getElementById('genderChart').getContext('2d');
   var genderChart = new Chart(genderCtx, {
      type: 'pie',
      data: genderData,
      options: chartOptions
   });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
>>>>>>> refs/remotes/origin/inho
