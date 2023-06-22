<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../../views/common/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>맛집은! 머그멍</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body>
    <div class="container-fluid">                 
        <main class="my-2">
            <div class="card">
            
            
            
            
<%-- 서블릿에 요청해 파일을 업로드 함 --%>
			<c:url value="/upload/imgUpload" var="upload"></c:url>
			<form id="signUploadForm" action="${upload}" method="post" enctype="multipart/form-data">
    <input type="file" class="myfile" id="file" name="file" />
    <input type="button" id="btnUpload" value="Upload" />
</form>
			
            <c:url value="/join/signup" var="signupPage"></c:url>
                <form id="signupForm" method="post" action="${signupPage }">
                    <div class="card-body">
                        <div class="my-2">
                            <label class="form-label" for="id">아이디</label>
                            <input class="form-control" 
                                type="text" id="username" name="username" required autofocus />
                        </div>
                        
                        <div class="bd-example">
					        <p class="lead" id="usernameConfirmLabel" style="font-size: 15px; color: #e55;">
					        </p>
				        </div>
                        
                        <div class="my-2">
                            <label class="form-label" for="password">비밀번호</label>
                            <input type="password" class="form-control"
                                id="password" name="password" required />
                        </div>
                        <div class="my-2">
                            <label class="form-label" for="passwordConfirm">비밀번호 확인</label>
                            <input type="password" class="form-control"
                                id="passwordConfirm" name="passwordConfirm" required>
                        </div>
                        <div class="bd-example">
					        <p class="lead" id="pwconfirmLabel" style="font-size: 15px; color: #e55;">
					          
					        </p>
				        </div>
				        <p>
					      	<label for="date">생년 월일</label>
							<input type="date" id="birth_day" name="birth_day">
					    </p>
				        <div>
				        	<label class="form-label" for="flexRadioDefault1">성별</label>
				        <div class="form-check">
						  <input class="form-check-input" type="radio" name="gender" id="genderM" value="1">
						  <label class="form-check-label" for="genderM">
						    남성
						  </label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="gender" id="genderF" value="0">
						  <label class="form-check-label" for="genderF">
						    여성
						  </label>
						</div>
						
						<input type="hidden" id="user_image" name="user_image">
						
				        </div>
                        <div class="my-2">
                            <label class="form-label" for="email">이메일</label>
                            <input class="form-control" 
                                type="email" id="email" name="email" required />
                        </div>
                    </div>
                    <div class="card-footer my-2">
                        <input id="btnSignup" class="form-control btn btn-outline-primary" 
                            type="submit" value="작성 완료" />
                    </div>
                </form>
                
            </div>
            <%@ include file="../../views/common/footer.jsp" %>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <c:url value="/static/js/join-signup.js" var="signup"></c:url>
    <script type="text/javascript" src="${signup }"></script>
    </body>
</html>
