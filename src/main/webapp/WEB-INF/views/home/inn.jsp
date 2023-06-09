<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../../views/common/header.jsp" %>
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
      
   </head>
   <body>

<!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      @font-face {
    font-family: 'EF_jejudoldam';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
    </style>

    
    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
  </head>
  <body>
    
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check" viewBox="0 0 16 16">
    <title>Check</title>
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>
</svg>

<div class="container py-3">
  
  <main>
    <section class="py-5 text-center container">
    <div class="row py-lg-5" >
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light" style="font-family: 'EF_jejudoldam';">제주도 숙소줗</h1>
        <p class="lead text-muted" >잘 곳 많겠지 관광지 인데, 호텔 이런데 말고<br> 정말 사람 냄새 나는 쉴 수 있는곳을 알아보자!!!</p>
        <p>
          <a href="#" class="btn btn-primary my-2">Main call to action</a>
          <a href="#" class="btn btn-secondary my-2">Secondary action</a>
        </p>
      </div>
    </div>
  </section>
  
  <h2 class="display-3.5 text-left mb-4" style="font-family: 'EF_jejudoldam';">추천 숙소</h2>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" style="font-family: 'EF_jejudoldam';">가성비 숙소</h4>
          </div>
          <div class="card-body">
            <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fpup-review-phinf.pstatic.net%2FMjAyMzA1MDZfMTM4%2FMDAxNjgzMzQ0ODM5NzA2.oXr_ahNQO11ZZ6rXG6WVVra0jWpWcKGkGXaYaOMrOmsg.c5nN7Lu00KB33qOI1KesXSvA4_WGPpVOd65fCyWhFnAg.JPEG%2F907FE62D-76BD-44A0-8E29-99CC17AD6340.jpeg" width="350" height="200"/>
            <h1 class="card-title pricing-card-title">공공연<small class="text-muted fw-light"></small></h1>
            <h1 class="card-title pricing-card-title">30,000₩<small class="text-muted fw-light">/1박</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>제주시 한경면 용수리 4304-3</li>
              
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">
            	<a href="https://map.naver.com/v5/entry/place/1052105000?lng=126.1684113&lat=33.3230025&placePath=%2Froom%3Fac=0%26adm_lat=37.4954841%26adm_long=127.0333574%26bizId=1052105000%26debug=0%26deviceType=pc%26lgl_lat=37.4954841%26lgl_long=127.0333574%26lgl_rcode=09680101%26ngn_country=KR%26nlu_query=%7B%22pension%22:%7B%22source%22:%22placesearch%22,%22sid%22:%221052105000%22,%22q%22:%22%EA%B3%B5%EA%B3%B5%EC%97%B0%22%7D,%22nluQuery%22:%22%EA%B3%B5%EA%B3%B5%EC%97%B0%22%7D%26nqx_theme=%7B%22theme%22:%7B%22main%22:%7B%22name%22:%22accommodation%22%7D%7D%7D%26r1=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%26r2=%EA%B0%95%EB%82%A8%EA%B5%AC%26r3=%EC%97%AD%EC%82%BC1%EB%8F%99%26rcode=09680640%26rev=44%26sm=top_hty%26spq=0%26ssc=tab.nx.all%26target=pc%26where=nexearch%26x=127.0333574%26y=37.4954841&entry=plt&c=15,0,0,0,dh">
            	예약하기
            	</a>
            </button>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" style="font-family: 'EF_jejudoldam';">뷰 맛집 숙소</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$15<small class="text-muted fw-light">/mo</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>20 users included</li>
              <li>10 GB of storage</li>
              <li>Priority email support</li>
              <li>Help center access</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary">Get started</button>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" style="font-family: 'EF_jejudoldam';">광란의 파티 숙소</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">$29<small class="text-muted fw-light">/mo</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>30 users included</li>
              <li>15 GB of storage</li>
              <li>Phone and email support</li>
              <li>Help center access</li>
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-primary">Contact us</button>
          </div>
        </div>
      </div>
    </div>

    <h2 class="display-6 text-center mb-4" style="font-family: 'EF_jejudoldam';">제주도 숙소 리스트</h2>

    <div class="table-responsive">
      <table class="table text-center">
        <thead>
          <tr>
            <th style="width: 34%;"></th>
            <th style="width: 22%;">가격</th>
            <th style="width: 22%;">주소</th>
            <th style="width: 22%;">예약</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row" class="text-start">오늘도 제주</th>
            <td><svg class="bi" width="24" height="24">
            	<p>15만원</p>
            </svg></td>
            <td><svg class="bi" width="24" height="24">
            	<p>제주시 한경면 볼그믓로 228</p>
            </svg></td>
            <td><svg class="bi" width="24" height="24">
            	<p>
         		 <a href="http://www.oje4114.com/html/index.html" class="btn btn-primary my-2">예약하기</a>
       		    </p>
            </svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">소공원 스테이</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
        </tbody>

        <tbody>
          <tr>
            <th scope="row" class="text-start">귤한가</th>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">봉성집</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">토투가</th>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">애월담아</th>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">월림차경</th>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">정취한가</th>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
          <tr>
            <th scope="row" class="text-start">고산별곡</th>
            <td></td>
            <td></td>
            <td><svg class="bi" width="24" height="24"><use xlink:href="#check"/></svg></td>
          </tr>
        </tbody>
      </table>
    </div>
  </main>

 
</div>


  
  </body>
</html>
        <%@ include file="../../views/common/footer.jsp" %> 
         
         <script 
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
           integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
           crossorigin="anonymous">
           </script>
      </div>
   </body>
</html>