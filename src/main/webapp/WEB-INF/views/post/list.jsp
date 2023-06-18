
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Spring 2</title>
        <link 
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" 
            rel="stylesheet" 
            integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
            crossorigin="anonymous">
            <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
    </head>
    <body>
    <div class="container-fluid">
        <header class="my-2 p-5 text-center text-bg-dark">
            <h1>포스트 목록 페이지</h1>
        </header>
        
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <ul class="navbar-nav bg-light">
                <li class="nav-item">
                    <c:url var="mainPage" value="/" />
                    <a class="nav-link" href="${ mainPage }">메인 페이지</a>
                </li>
                <li class="nav-item">
                    <c:url var="postCreatePage" value="/post/create" />
                    <a class="nav-link" href="${ postCreatePage }">새 포스트 작성</a>
                </li>
            </ul>
        </nav>
        
        <main class="my-2">
            <div class="card">
                <table class="card-body table table-hover">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성시간</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ boardList }" var="post">
                            <tr>
                                <td>${ post.id }</td>
                                <td>
                                    <c:url var="postDetailPage" value="/post/detail">
                                        <c:param name="id" value="${ post.id }" />
                                    </c:url>
                                    <a href="${ postDetailPage }">${ post.title }</a>
                                    <span class="text-danger">[${ post.rcnt }]</span>
                                </td>
                                <td>${ post.author }</td>
                                <td>
                                    <fmt:formatDate value="${ post.created_time }" 
                                        pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            
                <div class="row center">
                <!-- Pagination -->
                <ul class="pagination">
                    <li class="${ pageMaker.prev ? 'waves-effect' : 'disabled' }"><a id="prev"><i class="material-icons">chevron_left</i></a></li>
                    
                    <c:forEach var="i" begin="${ pageMaker.startPage }" end="${ pageMaker.endPage }" step="1">
                    	<li class="${ pageMaker.cri.pageNum == i ? 'active' : 'waves-effect' }"><a href="/mugmung/post/list?pageNum=${ i }">${ i }</a></li>
                    </c:forEach>
                    
                    <li class="${ pageMaker.next ? 'waves-effect' : 'disabled' }"><a id="next"><i class="material-icons">chevron_right</i></a></li>
                </ul>
                <!-- end of Pagination -->
            </div>
            
        </main>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
            crossorigin="anonymous"></script>
    
    </div>
    <script>
    	// [이전] a태그 클릭이벤트
    	var prev = document.querySelector('a#prev');
    	
    	prev.addEventListener('click', function (event) {
    		event.preventDefault();
    		
    		var isPrev = ${ pageMaker.prev };
    		if (!isPrev) {
    			return;
    		}
    		location.href = '/mugmung/post/list?pageNum=${ pageMaker.startPage - 1 }';
    	});
    	
    	// [다음] a태그 클릭이벤트
		var next = document.querySelector('a#next');
    	
		next.addEventListener('click', function (event) {
			event.preventDefault();
			
    		var isNext = ${ pageMaker.next };
    		if (!isNext) {
    			return;
    		}
    		location.href = '/mugmung/post/list?pageNum=${ pageMaker.endPage + 1 }';
    	});
    
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
            crossorigin="anonymous"></script>
    </body>
</html>
