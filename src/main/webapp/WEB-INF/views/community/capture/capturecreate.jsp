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
        <header>
            <h1>새 글 작성</h1>
        </header>
    
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <ul class="navbar-nav bg-light">
                <li class="nav-item">
                    <c:url var="mainpage" value="/main" />
                    <a class="nav-link" href="${mainpage}">메인 페이지</a>
                </li>
                <li class="nav-item">
                    <c:url var="capturelistpage" value="/community/capture/capturelist"/>
                    <a class="nav-link" href="${capturelistpage}">목록 페이지</a>
                </li>
            </ul>
        </nav>
        
        <main class="my-2">
            <div class="card">
                <form method="post">
                    <div class="my-2">
                        <!-- <div class="my-2">
                            <label class="form-label" for="title">제목</label>
                            <input class="form-control"
                                type="text" id="title" name="title" required autofocus/>
                        </div> -->
                        <div class="my-2">
                            <label class="form-label" for="content">내용</label>
                            <textarea class="form-control" 
                                id="content" name="content" required></textarea>
                        </div>  
                        <div class="my-2">
                            <label class="form-label" for="writer">작성자</label>
                            <input class="form-control" 
                                type="text" id="writer" name="writer" required autofocus/>
                        </div>               
                    </div>
                    <div class="card-footer my-2">
                        <form action="${createPage }" method="post" enctype="multipart/form-data">
                            <input type="file" name="file" />
                            
                        <div style="width:200px" class="d-flex justify-content-end">
                            <input class="form-control btn my-2 " type="submit" value="작성완료">
                        </div>
                        </form>  
                        
                    </div>
                    
                </form>
            </div>
            
        </main>
    
    
    
    
    
         
         
         <%@ include file="../../common/footer.jsp" %>
         <script 
           src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
           integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
           crossorigin="anonymous">
           </script>
           
    </div>
    
    <script src="../static/js/capture.js"></script>  
   </body>
</html>