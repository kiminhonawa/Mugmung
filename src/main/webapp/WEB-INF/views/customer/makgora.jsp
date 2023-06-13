<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%@ include file="../../views/common/header.jsp"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은!머그멍</title>
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
      
   </head>
  <body>

	<style>
@font-face {
	font-family: 'EF_jejudoldam';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}
</style>

	<h2 style="font-family: 'EF_jejudoldam'";>1:1 문의하기</h2>
	<h2></h2>
	<form class="my-form">

		<div class="row mb-3">
  <legend class="col-form-label col-sm-2 pt-0">문의유형</legend>
  <div class="col-sm-10">
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
      <label class="form-check-label" for="gridRadios1"> 회원정보관련 </label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
      <label class="form-check-label" for="gridRadios2"> 할인쿠폰 / 포인트 </label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
      <label class="form-check-label" for="gridRadios2"> 상품관련 </label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
      <label class="form-check-label" for="gridRadios2"> 예약지연 보상관련 </label>
    </div>
  </div>
</div>

<div class="row mb-3">
  <label class="col-sm-2 col-form-label">문의상품 선택</label>
  <div class="col-sm-10">
    <select class="form-select" aria-label="Default select example">
      <option selected>예약상품을 선택하세요</option>
      <option value="1">One</option>
      <option value="2">Two</option>
      <option value="3">Three</option>
    </select>
  </div>
</div>

<div class="row mb-3">
  <label class="col-sm-2 col-form-label">제목</label>
  <div class="col-sm-10">
    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력해주세요" required>
  </div>
</div>

<div class="row mb-3">
  <label class="col-sm-2 col-form-label">내용</label>
  <div class="col-sm-10">
    <textarea class="form-control" id="content" rows="10" name="content" placeholder="내용을 입력해주세요" required></textarea>
  </div>
</div>

<div class="row mb-3">
  <label class="col-sm-2 col-form-label">파일첨부</label>
  <div class="col-sm-10">
    <div class="form-group uploadDiv">
      <input type="file" name="uploadFile" id="uploadFile" multiple />
    </div>
    <div class="uploadResult">
      <ul></ul>
    </div>  
  </div>
</div>
		

<div class="row">
  <div class="col-sm-2"></div>
  <div class="col-sm-10 text-center">
    <button type="button" class="btn btn-warning">등록하기</button>
    <button type="button" class="btn btn-light">취소하기</button>
  </div>
</div>
	</form>


<%@ include file="../../views/common/footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>

</body>
</html>