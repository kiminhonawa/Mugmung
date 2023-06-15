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
<title>맛집은! 머그멍</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<c:url value="/static/css/map.css" var="map" />
<link rel="stylesheet" href="${ map }">
</head>
<body>
	<main>
		<div class="container-fluid">
			<div class="btn-group" role="group">
				<div style="height: 10px;"></div>
				<div style="text-align: center; position: relative;">
					<c:url value="/static/img/jejumap.jpeg" var="titleMap" />
					<img src="${titleMap}" class="jeju" alt="제주도 맛집! 머그멍" width="90%">
				</div>
				<div id="buttonContainer">
					<button class="btn1 cityBtn" id="hangyeong" name="hangyeong" type="button"></button>
					<button class="btn2 cityBtn" id="hanlim" name="hanlim" type="button"
						onclick="javascript:sensorBtnClick('btn2');"></button>
					<button class="btn3 cityBtn" id="aewol" name="aewol" type="button"
						onclick="javascript:sensorBtnClick('btn3');"></button>	
					<button class="btn4 cityBtn" id="jeju" name="jeju" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn5 cityBtn" id="jochun" name="jochun" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn6 cityBtn" id="gujwa" name="gujwa" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn7 cityBtn" id="daejeong" name="daejeong" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn8 cityBtn" id="anduck" name="anduck" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>			
					<button class="btn9 cityBtn" id="seogwipo" name="seogwipo" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn10 cityBtn" id="namwon" name="namwon" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn11 cityBtn" id="pyosun" name="sungsan" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>
					<button class="btn12 cityBtn" id="sungsan" name="sungsan" type="button"
						onclick="javascript:sensorBtnClick('btn1');"></button>		
				</div>
			</div>
		</div>
		<%@ include file="../../views/common/footer.jsp"%>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<c:url value="/static/js/mugmap.js" var="mugmap"></c:url>	
	<script src="${ mugmap }"></script>
</body>
</html>