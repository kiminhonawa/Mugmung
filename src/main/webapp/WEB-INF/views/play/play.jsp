<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은!머그멍</title>
      
   </head>
   <body>
<%@ include file="../../views/common/header.jsp" %>
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
        <h1 class="fw-light" style="font-family: 'EF_jejudoldam';">제주도 놀거리줗</h1>
        <p class="lead text-muted" >금강산도 식후경!!!</p>
        
      </div>
    </div>
  </section>
  
  <h2 class="display-3.5 text-left mb-4" style="font-family: 'EF_jejudoldam';">추천 놀거리</h2>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" style="font-family: 'EF_jejudoldam';">가족과 함께</h4>
          </div>
          <div class="card-body">
            <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20160703_112%2Frzip84_1467521450655cFyWn_JPEG%2FSAM_5797_%25BA%25B9%25BB%25E7%25BA%25BB.jpg&type=sc960_832" width="350" height="200"/>
            <h1 class="card-title pricing-card-title">쇠소깍 카약<small class="text-muted fw-light"></small></h1>
            <h1 class="card-title pricing-card-title">10,000₩<small class="text-muted fw-light">/40분</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>제주 서귀포시 쇠소깍로 104</li>
              
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">
            	<a href="https://smartstore.naver.com/sgpij/search?q=%EC%87%A0%EC%86%8C%EA%B9%8D%20%EC%B9%B4%EC%95%BD">
            	예약하기
            	</a>
            </button>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" style="font-family: 'EF_jejudoldam';">연인과 함께</h4>
          </div>
          <div class="card-body">
            <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230214_93%2F16763596187677bIsD_JPEG%2FRACE-981-%25285%2529.jpg" width="350" height="200"/>
            <h1 class="card-title pricing-card-title">9.81 파크 제주<small class="text-muted fw-light"></small></h1>
            <h1 class="card-title pricing-card-title">39,500₩<small class="text-muted fw-light">/3회</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>제주 제주시 애월읍 천덕로 880-24</li>
              
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">
            	<a href="https://www.981park.com/">
            	예약하기
            	</a>
            </button>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal" style="font-family: 'EF_jejudoldam';">단체 놀거리</h4>
          </div>
          <div class="card-body">
            <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20220927_62%2F1664258034848uTFlM_JPEG%2F%25BA%25F1%25BA%25F1%25C5%25BA%25BC%25AD%25B9%25D9%25C0%25CC%25B9%25FA2.jpg" width="350" height="200"/>
            <h1 class="card-title pricing-card-title">윈드1947 테마파크<small class="text-muted fw-light"></small></h1>
            <h1 class="card-title pricing-card-title">14,000₩<small class="text-muted fw-light">/1시간</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
              <li>제주 서귀포시 토평공단로 78-27</li>
              
            </ul>
            <button type="button" class="w-100 btn btn-lg btn-outline-primary">
            	<a href="https://sklec.com/index.php">
            	예약하기
            	</a>
            </button>
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
         <c:forEach items="${playLists}" var="play">
        <tbody>
          <tr>
            <th scope="row" class="text-start">${play.name}</th>
            <td><svg class="bi" width="24" height="24">
            	<p>${play.price}</p>
            </svg></td>
            <td><svg class="bi" width="24" height="24">
            	<p>${play.address}</p>
            </svg></td>
            <td><svg class="bi" width="24" height="24">
            	<p>
         		 <a href="${play.web_url}" class="btn btn-primary my-2">예약하기</a>
       		    </p>
            </svg></td>
          </tr>
          </tbody>
            </c:forEach>
      </table>
    </div>
  </main>

 
</div>


  
  </body>
</html>
        
         

      </div>
      <%@ include file="../../views/common/footer.jsp" %> 
   </body>
</html>