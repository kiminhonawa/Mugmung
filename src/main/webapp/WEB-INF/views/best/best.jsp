<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은!머그멍</title>
      
      
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

  <%@ include file="../../views/common/header.jsp" %>
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
@font-face {
	font-family: 'SUITE-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}
    </style>

    
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>
  <body>
    


<main class="container">
  <div class="p-4 p-md-5 mb-4 rounded text-bg-warning p-3">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic" style="font-family: 'EF_jejudoldam';" >제주도 젲<br> best of best<br> 맛집 <br>TOP 10 </h1>
      <!-- <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p> -->
    </div>
  </div>


<c:set var="counter" value="0" />
<c:forEach items="${bestLists}" var="list">
<c:if test="${counter < 10}">
  <c:if test="${counter % 2 == 0}">
  
    <div class="row mb-2">
  </c:if>
  <div class="col-md-6">
    <c:url value="/detail/detail?id=${list.id}" var="detailPage"></c:url>
    <a href="${detailPage}" style="text-decoration: none; color: black;">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <h3 class="mb-0" style="font-family: 'EF_jejudoldam';">${list.name}</h3>
          <br>
          <p class="card-text mb-auto">${list.address1} ${list.address2}</p>
          <h2 class="featurette-heading fw-normal lh-1" style="text-align: left; margin-left: 100px;">
            <img src="../static/img/starrate.png" class="bg-warning" width="40px;" height="40px;" style="margin-bottom: 10px">
            <span class="text-muted" style="font-size: 30px; font-family: 'SUITE-Regular';">${list.star_score}점</span>
          </h2>
        </div>
        <div class="col-auto d-none d-lg-block">
          <img src=".${list.images_loc}" class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"></text></svg>
        </div>
      </div>
    </a>
  </div>
  </c:if>
  <c:if test="${counter % 2 != 0}">
    </div>
  </c:if>
  <c:set var="counter" value="${counter + 1}" />
</c:forEach>


		
  
  
         
         
      </div>
      
      <%@ include file="../../views/common/footer.jsp" %>
   </body>
</html>