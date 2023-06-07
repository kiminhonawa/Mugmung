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
<c:url value="/static/css/carousel.css" var="carousel" />
<link rel="stylesheet" href="carousel">
<c:url value="/static/css/carouselrtl.css" var="carouselrtl" />
<link rel="stylesheet" href="carouselrtl">
<style>
.jeju {
	box-shadow: 0 0 40px rgba(0, 0, 0, 0.3);
	border-radius: 30px;
	
}
</style>
</head>
<body>
	<main>
		<div style="text-align: center;">
			<c:url value="/static/img/jejumap.jpeg" var="titleMap" />
			<img src="${titleMap }" class="jeju" alt="제주도 맛집! 머그멍" width="1200">
		</div>

		<%@ include file="../../views/common/footer.jsp"%>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>