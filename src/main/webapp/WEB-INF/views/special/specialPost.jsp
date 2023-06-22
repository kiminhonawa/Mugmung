<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Spring2</title>
    
   </head>
   <style>
   .card {
          text-align: center;
          max-width: 70%;
  		  margin: auto;
   }
   @font-face {
	font-family: 'SUITE-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}
   </style>
   <body>
   	<%@ include file="../../views/common/header.jsp"%>
   	<br>
   	<br>
   	<h2 style="font-family: 'SUITE-Regular'; text-align: center;"> 새 맛집 메이트 찾기 <br> 작성하기
			</h2>
   	<br>
   	<br>
      <div>
         <main class="my-2">
                <div class="card">
                    <form method="post">
                        <div class="card-body" >
                            <div>
                                <label class="form-label my-2" for="location">지역</label>
                                <input class="form-control" type="text" id="location" name="location" required autofocus />
                            </div>
                            <div>
                                <label class="form-label my-2" for="content">내용</label>
                                <textarea class="form-control" id="content" name="content" required></textarea>
                            </div>
                            <div>
                                <label class="form-label my-2" for="users">작성자(아이디)</label>
                                <input class="form-control" type="text" id="users" name="users" required />
                           </div>
                        </div>    
                            <div class="card-footer my-2">
                                <input class="form-control btn btn-outline-primary"
                                type="submit" value="작성 완료" />
                            </div>
                    </form>
                </div>
            </main>
         
         
      </div>
      <%@ include file="../../views/common/footer.jsp"%>
   </body>
</html>