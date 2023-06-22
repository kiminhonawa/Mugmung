<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>맛집은! 머그멍</title>
<!-- 부트스트랩 그리드 -->
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../static/css/reserve.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body class="p-3 m-0 border-0 bd-example bd-example-row">
<%@ include file="../../views/common/header.jsp"%>
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

	<br />
	<br />
	<br />
	<h2 style="font-family: 'EF_jejudoldam'; text-align: center;" > ${name} 젲 </h2>
	<h6 style="font-family: 'SUITE-Regular'; text-align: center;">예약페이지</h6>
	<br />
	<br />

	<div class="container">
		<div class="row align-items-center">
			<div class="container text-center">
			<c:url value="/reserve/booking" var="reservePage"/>
			<form action="${reservePage }" method="post">
				<div class="row justify-content-md-center">
					<div class="col-md-auto">
						<dt>날짜</dt>
						<br />
						<div class="calendar">
							<!-- <div class="header"> -->
							<button type="button" class="btn btn-light" id="prevButton">
                        	<img id="prevBtnIcon" 
                            src="../static/img/caret-left.svg" 
                            alt="caret-left" width="25"/>
                  			</button>
							
							<span id="monthYear"></span>
							<button type="button" class="btn btn-light" id="nextButton">
							<img id="nextBtnIcon" 
                            src="../static/img/caret-right.svg" 
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
							<dt>인&nbsp;원</dt>
						</dl>
						<br />
						<%
						  int maxMember = (int) request.getAttribute("maxMember"); // 컨트롤러에서 maxMember 값을 가져온다고 가정
						  for (int i = 1; i <= maxMember; i++) {
						%>
						<div>
							<input class="form-check-input" type="radio" name="numberOfPeople"
								id="numberOfPeople<%=i %>" value="<%=i %>" aria-label="..." >
							<label class="form-check-label" for="numberOfPeople<%=i %>">
								<%=i %>&nbsp;명
						  </label>	 
						</div>
						<%} %>
						
					</div>

					

					<div class="col col-lg-2">
						<dl>
							<dt>시&nbsp;간</dt>
						</dl>
							<br />
								 <%
								 	int startHour= (int) request.getAttribute("startHour");
					                int endHour= (int) request.getAttribute("endHour");
						  			for (int i = startHour; i <= endHour; i++) {
								%>	
								 <div>
							<input class="form-check-input" type="radio" name="reserveTime"
								id="reserveTime<%=i %>" value="<%=i %>" aria-label="..." >
							<label class="form-check-label" for="reserveTime<%=i %>">
								<%=i %>&nbsp;:&nbsp;00
						  </label>	 
						</div>
						<%} %>
					</div>
				</div>
				<input type="hidden" id="selectedDate" name="selectedDate" value="" />
				<input type="hidden" id="restaurant_id" name="restaurant_id" value="${param.id}" />
				<div class="card-footer my-2">
                        <input id="btnReserve" class="btn btn-warning " 
                            data-bs-toggle="modal" data-bs-target="#staticBackdrop" type="submit" value="예약하기" />
                    	<c:url var="mainPage" value="/main" />
                    	<a class="btn btn-light" href="${ mainPage }">취소하기</a>
                    </div>
				</form> 
			</div>

		</div>
	</div>


	<br />
	

	<!-- <div>
		<nav class="text-center">
			<ul>
				Button trigger modal
				<button type="button" class="btn btn-outline-warning"
					data-bs-toggle="modal" data-bs-target="#staticBackdrop" onclick="reserve()">예약하기</button>
				<button type="button" class="btn btn-outline-success">취소하기</button>
			</ul>
		</nav>
	</div> -->

	
	<div id="warning" style="display: none;">Please select all the required fields.</div>


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
				<div class="modal-body">예약확인 되었습니다.
										예약내역은 마이페이지에서 확인해주세요.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">확인</button>
					<button type="button" class="btn btn-primary">마이페이지</button>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />

	<!-- 자바스크립트 경로지정 -->
	<script type="text/javascript" src="../static/js/calendar.js"></script>
	<%@ include file="../../views/common/footer.jsp"%>
	
</body>
</html>