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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
      <c:url value="/static/css/signin.css" var="signinCss" />
      <link rel="stylesheet" href="${signinCss }">
      
   </head>
   <body class="text-center" data-new-gr-c-s-check-loaded="14.1111.0" data-gr-ext-installed="">
    
<main class="form-signin w-100 m-auto">
  <form method="post">
  	
    <c:url value="/main" var="mainPage"></c:url>
        <a href="${mainPage }" >
          <c:url value="/static/img/ggule.png" var="test_logo" />
				<img class="mb-4" src="${test_logo }" alt="제주도 맛집! 머그멍" width="72" height="57">
        </a>
    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" name="username" placeholder="id" required="required" autofocus="autofocus">
      <label for="floatingInput">아이디</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" required="required">
      <label for="floatingPassword">비밀번호</label>
    </div>

    <div class="checkbox mb-3">
      <label>
      </label>
    </div>
    <c:url value="/user/findId" var="findId"></c:url>
	<a class="findId" href="${findId }">아이디 찾기</a>
	<c:url value="/user/findPass" var="findPass"></c:url>
	<a class="findPass" href="${findPass }">비밀번호 찾기</a>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
    <p class="mt-5 mb-3 text-muted">© mugmung</p>
  </form>
</main>


    
  

</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<c:url value="/static/js/signin.js" var="signin" />
	<script type="text/javascript" src="${signin }"></script>
	
   </body>
</html>