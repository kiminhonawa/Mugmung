<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../views/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Spring2</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<!-- 부트스트랩 그리드 -->
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../static/css/reserve.css">


</head>
<body class="p-3 m-0 border-0 bd-example bd-example-row">

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

	<h2 style="font-family: 'EF_jejudoldam'";>예약페이지 </h2>

	<div class="container">
		<div class="row align-items-center">
			<div class="container text-center">
				<div class="row justify-content-md-center">
					

					<div class="col-md-auto">
						<dt>날짜</dt>
						<br />
						<div class="calendar">
							<!-- <div class="header"> -->
							<button type="button" class="btn btn-light" id="prevButton">
                        	<img id="prevBtnIcon" 
                            src="../static/icon/caret-left.svg" 
                            alt="caret-left" width="25"/>
                  			</button>
							
							<span id="monthYear"></span>
							<button type="button" class="btn btn-light" id="nextButton">
							<img id="nextBtnIcon" 
                            src="../static/icon/caret-right.svg" 
                            alt="caret-right" width="25"/>
							</button>
							
							<ul class="weekdays">
								<li>일</li>
								<li>월</li>
								<li>화</li>
								<li>수</li>
								<li>목</li>
								<li>금</li>
								<li>토</li>
							</ul>
							<!-- 날짜요일 구분 -->
							<hr />
							<ul class="days"></ul>


						</div>
					</div>


					<div class="col col-lg-2">
						<dl>
							<dt>인원</dt>
						</dl>
						<br />
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(2)"> 2명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(3)"> 3명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(4)"> 4명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(5)"> 5명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(6)"> 6명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(7)"> 7명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(8)"> 8명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(9)"> 9명
						</div>
						<div>
							<input class="form-check-input" type="radio" name="radioNoLabel"
								id="radioNoLabel1" value="" aria-label="..." onclick="selectNumberOfPeople(10)"> 10명
						</div>
					</div>


					<div class="col col-lg-2">
						<dl>
							<dt>시간</dt>
							<br />
								 <ul class="timebtn-list">
								      <li><button type="button" class="timebtn" onclick="toggleTime('10:00')" id="button-10:00">10:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('11:00')" id="button-11:00">11:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('12:00')" id="button-12:00">12:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('13:00')" id="button-13:00">13:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('14:00')" id="button-14:00">14:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('15:00')" id="button-15:00">15:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('16:00')" id="button-16:00">16:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('17:00')" id="button-17:00">17:00</button></li>
								      <li><button type="button" class="timebtn" onclick="toggleTime('18:00')" id="button-18:00">18:00</button></li>
								    </ul>

						</dl>
					</div>

				</div>
			</div>

		</div>
	</div>


	<br />


	<div>
		<nav class="text-center">
			<ul>
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-outline-warning"
					data-bs-toggle="modal" data-bs-target="#staticBackdrop">예약하기</button>
				<button type="button" class="btn btn-outline-success">취소하기</button>
			</ul>
		</nav>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">예약 확인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">예약확인 되었습니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">확인</button>
					<button type="button" class="btn btn-primary">마이페이지</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 자바스크립트 경로지정 -->
	<script type="text/javascript" src="../static/js/calendar.js"></script>
	<script type="text/javascript" src="../static/js/reserve.js"></script>

	<%@ include file="../../views/common/footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>