<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>★머그멍 제주 예약페이지</title>
      <link  
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
        crossorigin="anonymous">
		      
		        <style>
		.calendar {
			font-family: Arial, sans-serif;
			width: 300px;
		}
		
		.calendar .header {
			color: black;
			text-align: center;
			padding: 10px;
		}
		
		.calendar .days {
			margin: 0;
			padding: 0;
			list-style: none;
		}
		
		.calendar .days li {
			display: inline-block;
			width: 40px;
			height: 40px;
			line-height: 40px;
			text-align: center;
			margin-bottom: 5px;
		}
		
		.calendar .days li.active {
			background-color: darklight;
			color: white;
		}
		
		.calendar .days li.active {
			background-color: darklight;
			color: white;
		}
		
		.calendar .weekdays {
			display: flex;
			justify-content: space-between;
			padding: 0 10px;
			margin-bottom: 5px;
		}
		
		.calendar .weekdays li {
			width: 40px;
			text-align: center;
			list-style-type: none; /* 마침표 제거 */
		        
		}
		</style>
      
      
      
   </head>
   <body>
   		<div class="container text-center">
  			<div class="row row-cols-4">
   				<div class="col">맛집 리스트</div>
			    <div class="col">날짜</div>
			     <div class="calendar">
					<div class="header">
						<button id="prevButton">prev</button>
						<span id="monthYear"></span>
						<button id="nextButton">next</button>
				</div>
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
			    
			    <div class="col">인원</div>
			    <div class="col">시간</div>
		   </div>
		</div>
   
   
   
         <script 
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
           integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
           crossorigin="anonymous">
           </script>
      </div>
   </body>
</html>