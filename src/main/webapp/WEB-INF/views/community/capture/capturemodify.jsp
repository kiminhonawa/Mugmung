<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../../common/header.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>
      <link  
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3-alpha3/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
        crossorigin="anonymous">
      
   </head>
   <body>
      <div class="container-fluid">
        <header class="my-3 p-3 text-center">
            <h1>수정하기</h1>
        </header>
        
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <ul class="navbar-nav bg-light">
                <li class="nav-item">
                    <c:url var="captureListPage" value="/community/capture/capturelist" />
                    <a class="nav-link" href="${ captureListPage }">글 목록</a>
                </li>
                <li class="nav-item">
                    <c:url var="captureDetailPage" value="/community/capture/capturedetail" >
                        <c:param name="id"></c:param>
                    </c:url>
                    <a class="nav-link" href="${ captureListPage }">상세보기</a>
                </li>
            </ul>
        </nav>
         
         <main class="my-2">
            <div class="card">
                <form class="card-body" id=modifyForm>
                    <div class="my-2">
                        <label class="form-label" for="id">번호</label>
                        <input class="form-control" id="id" name="id" value="${ capture.id }" readonly />

                    </div>
                    <div class="my-2">
                        <label class="form-label" for="content" >내용</label>
                        <textarea class="form-control" name="content" id="content" >${ capture.content }</textarea>
                    </div>

                    <div class="my-2">
                        <label class="form-label" for="writer">작성자</label>
                        <input class="form-control" id="writer" value="${ capture.writer }" readonly />
                    </div>
                    </form>
                    <div class="card-footer">
                    <div class="d-flex justify-content-end">
                        <button class="mx-1 btn btn-outline-primary" id="btnDelete">삭제</button>
                        <button class="btn btn-outline-primary" id="btnUpdate">업데이트</button>
                    </div>
                    </div>
                    </div>

            </main>
         
         
         <%@ include file="../../common/footer.jsp" %>
         <script 
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3-alpha3/dist/js/bootstrap.bundle.min.js" 
           integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
           crossorigin="anonymous">
           </script>
      </div>
        <c:url value="/static/js/capture.js" var="capture" />
        <script type="text/javascript" src="${capture }"></script>
   </body>
</html>