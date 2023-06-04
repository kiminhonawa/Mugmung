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
            <c:url value="/join/signup" var="signupPage"></c:url>
                <form method="post" action="${signupPage }">
                    <div class="card-body">
                        <div class="my-2">
                            <label class="form-label" for="id">아이디</label>
                            <input class="form-control" 
                                type="text" id="id" name="id" required autofocus />
                        </div>
                        <div class="my-2">
                            <label class="form-label" for="password">비밀번호</label>
                            <textarea class="form-control"
                                id="password" name="password" required></textarea>
                        </div>
                        <div class="my-2">
                            <label class="form-label" for="passwordConfirm">비밀번호 확인</label>
                            <textarea class="form-control"
                                id="passwordConfirm" name="passwordConfirm" required></textarea>
                        </div>
                        <div class="my-2">
                            <label class="form-label" for="email">작성자 아이디</label>
                            <input class="form-control" 
                                type="text" id="email" name="email" required />
                        </div>
                    </div>
                    <div class="card-footer my-2">
                        <input class="form-control btn btn-outline-primary" 
                            type="submit" value="작성 완료" />
                    </div>
                </form>
            </div>
            <%@ include file="../../views/common/footer.jsp" %>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
