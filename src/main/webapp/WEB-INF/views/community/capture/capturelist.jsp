<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>맛집은! 머그멍</title>

<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- Favicons -->        
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
    </style>

    </head>
    <body>
        
        <%@ include file="../../common/header.jsp" %>
        
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <ul class="navbar-nav bg-light">
                <li class="nav-item">
                    <c:url var="captureListPage" value="/community/capture/capturelist" />
                    <a class="nav-link" href="${ captureListPage }">글 목록</a>
                </li>
                <li class="nav-item">
                    <c:url var="captureCreatePage" value="/community/capture/capturecreate" />
                    <a class="nav-link" href="${ captureCreatePage }">새 글 작성</a>
                </li>
            </ul>
        </nav>
        
        <main class="my-2">
            <div id="board" class="clearfix">
                    <form name="search" id="search" action="/mugmung/community/capture/search" method="get">
                    <div class="card">
                        <div class="p-form-group">
                        <select name="searchCnd_search" id="searchCnd_search" title="검색항목선택" class="p-input">
                            <option value="content">내용</option>
                        </select>
                        <input name="search" id="search" type="text" placeholder="검색어를 입력하세요" />
                        <button type="submit" id="searchBtn" class="p-button black">검색</button>
                        </div>
                    </div>
                    </form>        
                </div>
        </main>
    </body>
 
  <body>
    


<main>

  <div class="album py-5 bg-light">
    <div class="container">   
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
            <c:forEach items="${captures}" var="capture">
                <div class="col">
                    <div class="card shadow-sm">
                        <%-- <c:url value="/static/img/gogi.jpg" var="gogi"></c:url> --%>
                        <img class="bd-placeholder-img card-img-top"
                          src=".${capture.images_loc}"
                          alt="고기 이미지" width="100%" height="225" 
                          aria-label="Placeholder: Thumbnail" 
                          preserveAspectRatio="xMidYMid slice" />
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <c:url var="captureDetail" value="/community/capture/capturedetail">
                                        <c:param name="id" value="${capture.id}" />
                                    </c:url>
                                    <a href="${captureDetail}">${capture.content}</a>
                                </div>
                                <div>
                                    <span id="viewsCount">
                                      <c:url value="/static/img/views.png" var="views" ></c:url>
                                      <img alt="조회수" src="${views }" width="20" height="20">
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>






<!-- 페이징 -->
    <div id="pagination">
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center my-5" id="pages">
        <c:if test="${pageMaker.prev}">
            <li class="page-item">
                <a class="page-link" href="${ pageMaker.cri.pageNum > 1 ? pageMaker.cri.pageNum-1 : 1 }" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            </c:if>
            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
            <li class="page-item ${pageMaker.cri.pageNum == num? "active" :"" }" ><a class="page-link" href="${num}">${num}</a></li>
            </c:forEach>
            <c:if test="${pageMaker.next}">
            <li class="page-item">
                <a class="page-link" href="${pageMaker.cri.pageNum+1}" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
            </c:if>
        </ul>
    </nav>
    <form id='actionForm' action="/mugmung/community/capture/capturelist" method='get'>
    <input type='hidden' name='pageNum' value ='${pageMaker.cri.pageNum}'>
    <input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
</form>
    </div>
        
</div>        
             
      <%@ include file="../../common/footer.jsp" %>   
             
      </main> 
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript">
        $(document).ready(function() {

        	var actionForm = $("#actionForm");


        	$(".page-link").on("click", function(e){

        	e.preventDefault();


        	var targetPage = $(this).attr("href");

        	console.log(targetPage);


        	actionForm.find("input[name='pageNum']").val(targetPage);

        	actionForm.submit();


        	});
        	$(document).ready(function(){

        	    $(".page-link").focus();
        	});

        	});

        </script>
        
        
    
    <c:url value="/static/js/capture.js" var="capture" />
    <script type="text/javascript" src="${capture }"></script>

    </body>
</html>
