<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  부트스트랩 달력 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	
	<!-- 부트스트랩 그리드 -->
<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
	rel="stylesheet">
	
	  <link  
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
        crossorigin="anonymous">
	
<title>tastyRoad</title>

<style>
.cal-month,
.cal-days,
.cal-weekdays {
  display: grid;
  grid-template-columns: repeat(7, 1fr);
  align-items: center;
}
.cal-month-name {
  grid-column-start: 2;
  grid-column-end: 7;
  text-align: center;
}
.cal-weekday,
.cal-btn {
  display: flex;
  flex-shrink: 0;
  align-items: center;
  justify-content: center;
  height: 3rem;
  padding: 0;
}


</style>

</head>
<body class="p-3 m-0 border-0 bd-example bd-example-row">
	<h2>Reservation System</h2>

<div class="container">
   <div class="row align-items-center">
	<div class="container text-center">
		<div class="row justify-content-md-center">
			<div class="col col-lg-2">
				<dt>리스트</dt>
				<div class="scroll">
					<ul >
						<li class="on">						
						<a class="nav-link" href="www.naver.com">덕후선생 광화문점</a>
						</li>
						<li class="nav-item">						
						<a class="nav-link" href="www.naver.com">더플레이스</a>
						</li>
						<li class="nav-item">						
						<a class="nav-link" href="www.naver.com">빕스</a>
						</li>
						<li class="nav-item">						
						<a class="nav-link" href="www.naver.com">태태삼겹</a>
						</li>
						<li class="nav-item">						
						<a class="nav-link" href="www.naver.com">몽중헌</a>
						</li>
						<li class="nav-item">						
						<a class="nav-link" href="www.naver.com">주신당</a>
				
					</ul>
				</div>

			</div>

			
			<div class="col-md-auto">
				<dt>날짜</dt>
					<div class="calendar">
						<!-- <div class="header"> -->
							<button id="prevButton">prev</button>
							<span id="monthYear"></span>
							<button id="nextButton">next</button>
						<!-- </div> -->
						<ul class="weekdays">
							<li>일</li>
							<li>월</li>
							<li>화</li>
							<li>수</li>
							<li>목</li>
							<li>금</li>
							<li>토</li>
						</ul> <!-- 날짜요일 구분 -->
						<hr />
						<ul class="days"></ul>  
			          
			          
			        </div>






<!-- <div class="dropdown-menu d-block position-static p-2 shadow rounded-3 w-340px">
  <div class="d-grid gap-1">
    <div class="cal">
      <div class="cal-month">
        <button class="btn cal-btn" type="button">
          <svg class="bi" width="16" height="16"><use xlink:href="#arrow-left-short"/></svg>
        </button>
        <strong class="cal-month-name">June</strong>
        <select class="form-select cal-month-name d-none">
          <option value="January">January</option>
          <option value="February">February</option>
          <option value="March">March</option>
          <option value="April">April</option>
          <option value="May">May</option>
          <option selected value="June">June</option>
          <option value="July">July</option>
          <option value="August">August</option>
          <option value="September">September</option>
          <option value="October">October</option>
          <option value="November">November</option>
          <option value="December">December</option>
        </select>
        <button class="btn cal-btn" type="button">
          <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-short"/></svg>
        </button>
      </div>
      <div class="cal-weekdays text-muted">
        <div class="cal-weekday">Sun</div>
        <div class="cal-weekday">Mon</div>
        <div class="cal-weekday">Tue</div>
        <div class="cal-weekday">Wed</div>
        <div class="cal-weekday">Thu</div>
        <div class="cal-weekday">Fri</div>
        <div class="cal-weekday">Sat</div>
      </div>
      <div class="cal-days">
        <button class="btn cal-btn" disabled type="button">30</button>
        <button class="btn cal-btn" disabled type="button">31</button>

        <button class="btn cal-btn" type="button">1</button>
        <button class="btn cal-btn" type="button">2</button>
        <button class="btn cal-btn" type="button">3</button>
        <button class="btn cal-btn" type="button">4</button>
        <button class="btn cal-btn" type="button">5</button>
        <button class="btn cal-btn" type="button">6</button>
        <button class="btn cal-btn" type="button">7</button>

        <button class="btn cal-btn" type="button">8</button>
        <button class="btn cal-btn" type="button">9</button>
        <button class="btn cal-btn" type="button">10</button>
        <button class="btn cal-btn" type="button">11</button>
        <button class="btn cal-btn" type="button">12</button>
        <button class="btn cal-btn" type="button">13</button>
        <button class="btn cal-btn" type="button">14</button>

        <button class="btn cal-btn" type="button">15</button>
        <button class="btn cal-btn" type="button">16</button>
        <button class="btn cal-btn" type="button">17</button>
        <button class="btn cal-btn" type="button">18</button>
        <button class="btn cal-btn" type="button">19</button>
        <button class="btn cal-btn" type="button">20</button>
        <button class="btn cal-btn" type="button">21</button>

        <button class="btn cal-btn" type="button">22</button>
        <button class="btn cal-btn" type="button">23</button>
        <button class="btn cal-btn" type="button">24</button>
        <button class="btn cal-btn" type="button">25</button>
        <button class="btn cal-btn" type="button">26</button>
        <button class="btn cal-btn" type="button">27</button>
        <button class="btn cal-btn" type="button">28</button>

        <button class="btn cal-btn" type="button">29</button>
        <button class="btn cal-btn" type="button">30</button>
        <button class="btn cal-btn" type="button">31</button>
      </div>
    </div>
  </div>
</div> -->
			</div>

			<div class="col col-lg-2">
				<dl>
					<dt>인원</dt>
				</dl>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 2
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 3
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 4
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 5
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 6
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 7
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 8
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 9
				</div>
				<div>
					<input class="form-check-input" type="radio" name="radioNoLabel"
						id="radioNoLabel1" value="" aria-label="..."> 10
				</div>
			</div>


			<div class="col col-lg-2">
				<dl>
					<dt>시간</dt>
					<button type="button" class="btn btn-outline-secondary btn-lg">10:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">11:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg"">12:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">13:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">14:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">15:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">16:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">17:00</button>
					<button type="button" class="btn btn-outline-secondary btn-lg">18:00</button>
					
				</dl>
			</div>

		</div>
	</div>
	
	  </div>
</div>
	<script 
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
           integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
           crossorigin="anonymous">
           </script>
	
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script> -->

	<!-- <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
	<!-- <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script> -->
	
	<!-- 자바스크립트 경로지정 -->
	<script type="text/javascript" src="../static/js/tastyRoad.js"></script>
</body>
</html>
