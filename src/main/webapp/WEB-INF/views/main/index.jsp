<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

   
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>
      
      <c:url value="/static/css/carousel.css" var="carousel" />
      <link rel="stylesheet" href="${carousel }">
      <c:url value="/static/css/carousel.rtl.css" var="carouselrtl" />
      <link rel="stylesheet" href="${carouselrtl }">

      
      <style>
   

    @font-face {
    font-family: 'EF_jejudoldam';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
    .container1 {
    margin-left:350px;
    height: 500px;
    width: 800px;
    margin-top: 50px;
    margin-bottom: 50px;
    }
      .centered-img {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
  .carousel-video {
    width: auto;
    height: auto;

  }
   </style>
   </head>
   <body>
    <%@ include file="../../views/common/header.jsp" %>
    
   
    <main>

    
<!-- carousel 시작 -->
<div class="container1">
  <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="5" aria-label="Slide 6"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="6" aria-label="Slide 7"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <a href="http://localhost:8081/mugmung/coupon/coupon" style="text-decoration: none; color: black;">
        <img src="./static/img/couponimg.jpg" alt="Slide 3" class="centered-img" style="width: 500px; height: 500px;" />
      </a>
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="./static/img/mg1.jpg" alt="Slide 4" class="centered-img" style="width: 800px; height: 500px;" />
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img src="./static/img/ay.jpg" alt="Slide 5" class="centered-img" style="width: 800px; height: 500px;" />
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <video src="./static/video/js.mp4" controls autoplay muted class="carousel-video" style="width: 500px; height: 800px; margin-top: -170px; margin-right: -30px;"></video>
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
      <img src="./static/img/solo.jpg" alt="Slide 2" class="centered-img" />
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
       <img src="./static/img/ih.jpg" alt="Slide 6" class="centered-img" style="width: 353px; height: 500px;" />
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
    <div class="carousel-item">
       <img src="./static/img/je.jpg" alt="Slide 7" class="centered-img" />
      <div class="carousel-caption d-none d-md-block">
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>





  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
  <c:forEach items="${mainBest}" var="bestlist" varStatus="loop">
    <c:if test="${loop.index < 3}">
      <div class="col-lg-4">
        <c:choose>
          <c:when test="${loop.index % 3 == 0}">
            <img src="./static/assets/icons/one.png" width="100" />
          </c:when>
          <c:when test="${loop.index % 3 == 1}">
            <img src="./static/assets/icons/two.png" width="100" />
          </c:when>
          <c:otherwise>
            <img src="./static/assets/icons/three.png" width="100" />
          </c:otherwise>
        </c:choose>
        <br>
        <br>
        <img src="${bestlist.images_loc}" class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
        <h2 class="fw-normal" style="font-family: 'EF_jejudoldam';">${bestlist.name}</h2>
        <p>${bestlist.address1}${bestlist.address2}</p>
        <c:url value="/detail/detail?id=${bestlist.id}" var="detailPage"></c:url>
        <p><a class="btn btn-secondary" href="${detailPage}">맛집 들어가기</a></p>
      </div><!-- /.col-lg-4 -->
    </c:if>
  </c:forEach>
</div><!-- /.row -->

    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
    <div class="container my-3">
  
    <input type="text" style="width: 1px; height: 1px; margin-left: 280px;" class="focus"/>
<c:forEach items="${indexLists}" var="list" varStatus="loop">
  <div class="row featurette">
    <c:if test="${loop.index % 2 == 0}">
    
      <div class="col-md-7">
      <c:url value="/detail/detail?id=${list.id}" var="detailPage"></c:url>
      <a href="${detailPage}" style="text-decoration: none; color: black;">
        <h2 class="featurette-heading fw-normal lh-1" style="font-family: 'EF_jejudoldam'; text-align:right; margin-right: 100px">${list.name}
       &nbsp
  <img src="./static/img/starrate.png" class="bg-warning" width="40px;" height="40px;">
  <span class="text-muted" style="font-size: 30px; margin-left: -20px;">${list.star_score}점</span>
</h2>
        <span class="text-muted"></span></h2>
        <p class="lead" style="margin-left: 100px; margin-right: 100px; text-align:right;">
          ${list.address1} ${list.address2}<br>
        </p>
        </a>
      </div>
      <div class="col-md-5">
        <img src="${list.images_loc}" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="400" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
          <title>Placeholder</title>
          <rect width="100%" height="100%" fill="#eee"></rect>
          <text x="50%" y="50%" fill="#aaa" dy=".3em"></text>
        </svg>
        </a>
      </div>
    </c:if>
    <c:if test="${loop.index % 2 != 0}">
      <div class="col-md-5 order-md-1">
        <img src="${list.images_loc}"  class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="400" height="400" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
          <title>Placeholder</title>
          <rect width="100%" height="100%" fill="#eee"></rect>
          <text x="50%" y="50%" fill="#aaa" dy=".3em"></text>
        </svg>
      </div>
      <div class="col-md-7 order-md-2">
      <c:url value="/detail/detail?id=${list.id}" var="detailPage"></c:url>
      <a href="${detailPage}" style="text-decoration: none; color: black;">
        <h2 class="featurette-heading fw-normal lh-1" style="font-family: 'EF_jejudoldam'; text-align: left; margin-left: 100px;">
  ${list.name} 
  &nbsp
  <img src="./static/img/starrate.png" class="bg-warning" width="40px;" height="40px;">
  <span class="text-muted" style="font-size: 30px; margin-left: -20px;">${list.star_score}점</span>
</h2>

        <p class="lead" style="margin-left: 100px; margin-right: 100px; text-align: left;">
       ${list.address1} ${list.address2}<br>
          </p>
      </div>
    </c:if>
  </div>
  <hr class="featurette-divider">
</c:forEach>


    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->

<!-- carousel 끝 -->     
<div id="pagination">
        <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center" id="pages">
  <c:if test="${pageMaker.prev}">
    <li class="page-item">
      <a class="page-link" href="${ pageMaker.cri.pageNum > 1 ? pageMaker.cri.pageNum-1 : 1 }" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
    <li class="page-item ${pageMaker.cri.pageNum == num? "active" :"" }"><a class="page-link" href="${num}">${num}</a></li>
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
<form id='actionForm' action="/mugmung/main" method='get'>
    <input type='hidden' name='pageNum' value ='${pageMaker.cri.pageNum}'>
    <input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
    <input type='hidden' name='id' value='${pageMaker.cri.id}'>
</form>
        
        </div>
        </div>
        
    </main>
    
    <script src="../static/js/main.js"></script>
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

    $(".focus").focus();
});

});


</script>
<%@ include file="../../views/common/footer.jsp" %>
   </body>
</html>