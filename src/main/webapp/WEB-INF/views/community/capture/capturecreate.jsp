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
        <header style="font-family: 'EF_jejudoldam';">
            <h1>새 글 작성</h1>
        </header>
    
        <nav class="navbar navbar-expand-lg bg-body-tertiary" style="font-family: 'SUITE-Regular';">
            <ul class="navbar-nav bg-light">
                <li class="nav-item">
                    <c:url var="capturelistpage" value="/community/capture/capturelist"/>
                    <a class="nav-link" href="${capturelistpage}">목록 페이지</a>
                </li>
            </ul>
        </nav>
        
        <main class="my-2" style="font-family: 'SUITE-Regular';">
            <div class="card">
                <form method="post">
                    <div class="my-2">
                        <div class="my-2">
                            <label class="form-label" for="content">내용</label>
                            <textarea class="form-control" 
                                id="content" name="content" required></textarea>
                        </div>
                        <div class="my-2">
                        <label class="form-label" for="capture_image_id">사진</label>
                        <input class="form-control" id="capture_image_id" 
                            value="${capture.capture_image_id }" readonly/>
                        <input type="file" name="file" />
                        </div>  
                        <div class="my-2">
                            <label class="form-label" for="writer">작성자</label>
                            <input class="form-control" value="${ username }"
                                type="text" id="writer" name="writer"  readonly autofocus/>
                        </div>               
                    </div>
                    <div class="card-footer my-2">
                        <div >
                            <input class="form-control btn my-2 " type="submit" value="작성완료">
                        </div>
                        
                    </div>
                    
                </form>
            </div>
            
        </main>
    
         <%@ include file="../../common/footer.jsp" %>
         
           
    </div>
    
    <script src="../static/js/capture.js"></script>  
   </body>
</html>