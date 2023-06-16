<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	font-family: 'SUITE-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}
.text-center {
	text-align: center;
}
	#sform {
          text-align: center;
          max-width: 80%;
  		  margin: auto;
        }



</style>


	<main>
		<br />
		<br />
		<br />
		<h2 style="font-family: 'SUITE-Regular'; text-align: center;">1:1 문의하기</h2>
		<h6 class="text-center">고객센터</h6>
		<br />
		<br />
		
		<div id="sform">
		<c:url value="/customer/makgora" var="makgora"></c:url>
		<form class="my-form" method="post" action="${ makgora }" style="padding-left: 220px;">
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">문의상품 유형</label>
				<div class="col-sm-6">
					<select class="form-select" aria-label="Default select example" id="makgora_type" name="makgora_type">
						<option selected>문의유형을 선택하세요</option>
						<option value="회원정보관련">회원정보관련</option>
						<option value="할인쿠폰/포인트">할인쿠폰/포인트</option>
						<option value="상품관련">상품관련</option>
						<option value="예약지연 보상관련">예약지연 보상관련</option>
					</select>
				</div>
			</div>

			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">제목 ${ username }</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="title" name="title"
						placeholder="제목을 입력해주세요" required>
				</div>
			</div>

			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">내용</label>
				<div class="col-sm-6">
					<textarea class="form-control" id="content" rows="10"
						name="content" placeholder="내용을 입력해주세요" required></textarea>
				</div>
			</div>
			<div class="row mb-3">
			  <label class="col-sm-2 col-form-label">파일첨부</label>
			  <div class="col-sm-6">
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
				<div class="col-sm-6">
					<input class="btn btn-warning" type="submit" value="등록하기" />
					<input class="btn btn-light" type="submit" value="취소하기" />
				</div>
			</div>
		</form>
		</div>


		<%@ include file="../../views/common/footer.jsp"%>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous"></script>

	</main>
</body>
</html>