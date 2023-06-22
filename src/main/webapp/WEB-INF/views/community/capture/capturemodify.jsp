<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>
     
      
   </head>
   <body>
    <%@ include file="../../common/header.jsp" %>
     <style> 
     @font-face {
    font-family: 'EF_jejudoldam';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;} 
    
    @font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
    
    </style> 
      <div class="container-fluid">
        <header class="my-3 p-3 text-center" style="font-family: 'EF_jejudoldam';">
            <h1>수정하기</h1>
        </header>
        
        <nav class="navbar navbar-expand-lg bg-body-tertiary" style="font-family: 'SUITE-Regular';">
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
         
         <main class="my-2" style="font-family: 'SUITE-Regular';">
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
      </div>
        <c:url value="/static/js/capture.js" var="capture" />
        <script type="text/javascript" src="${capture }"></script>
   </body>
</html>