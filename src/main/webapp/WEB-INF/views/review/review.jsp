<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
 <%@ include file="../../views/common/header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>review</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
        crossorigin="anonymous"/>

            <link href="../static/css/star.css" rel="stylesheet" type="text/css"/>
            <link rel="shortcut_icon" href="../static/img/starrate.png" />
            <link rel="shortcut_icon" href="../static/img/camera.png" />
    </head>
    <body>
     <style> 
     @font-face {
    font-family: 'EF_jejudoldam';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;} </style>   

    <main class="my-2">
        <div class="card" >
            <form class="card-body" method="post" id="reviewForm">
                <div class="my-2">
                    <label class="form-label" for="id" style="font-family: 'EF_jejudoldam';">${name }</label>
                    <input type="hidden" id="restaurant_id" name="restaurant_id" value="${ param.id }">
                    <label class="form-label" for="id" style="font-family: 'EF_jejudoldam';">에 대한 솔직한 리뷰를 써주세요.</label>
                </div>
                
            	
            	
                <div class="rating">
                    <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                    <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점" >
                        <label for="rating1"></label>
                    <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점" >
                        <label for="rating2"></label>
                    <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
                        <label for="rating3"></label>
                    <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
                        <label for="rating4"></label>
                    <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
                        <label for="rating5"></label>
               <div id="result"></div> 
                </div>
                
                
                <div>
                    <textarea class="ReviewEditor my-2"  id="content" name="content" maxlength="10000"
                     style="width:100%;border-width;overflow:visible;text-overflow:ellipsis;" rows=10
                    placeholder="${ username }, 주문하신 메뉴는 어떠셨나요? 식당의 분위기와 서비스도 궁금해요!"></textarea>
                </div>
                </form>
            </div>
    
    <div class="ReviewEditor">
     <p class="ReviewEditor__TextLengthStateBox">
      <span class="ReviewEditor__CurrentTextLength">0</span> <span
       class="ReviewEditor__TextLengthStateDivider">/</span> <span
       class="ReviewEditor__MaxTextLength">1000</span>
     </p>
    </div>
    
    
        <%-- <div>
            <c:url value="/review/review" var="reviewPage"></c:url>
            서블릿에 요청해 파일을 업로드 함
            <form action="${reviewPage }" method="post" enctype="multipart/form-data">
                <input type="file" name="file" />
                <img id="preview" src="#" width=200 height=150 alt="선택된 이미지가 없습니다" style="align-content: flex-end; ">
                <input type="submit" value="Upload" />
            </form>
        </div> --%>
    
    
    <div class="ReviewWritingPage">
        <div class="ReviewWritingPage__PictureWrap">
        <div class="ReviewPictureCounter"
            style="top: 93px; left: 89px; display: block;">
            <span class="ReviewPictureCounter__CurrentLength">0</span> <span
                class="ReviewPictureCounter__Divider">/</span> 
            <span class="ReviewPictureCounter__MaxLength">20</span>
        </div>
        </div>
        
    
    </div>
    
    <div class="card-footer">
        <div class="d-flex justify-content-center">
            <button class="btn btn-navy navbar-btn find-btn1" id="btnTemp"
                style="font-family: 'EF_jejudoldam';">임시저장</button>
            <button class="btn btn-navy navbar-btn find-btn1" id="btnSave"
                style="font-family: 'EF_jejudoldam';">저장</button>
            <button class="btn btn-grey navbar-btn find-btn1" id="btnDelete"
                style="font-family: 'EF_jejudoldam';">취소</button>
        </div>
    </div>

 
 <%@ include file="../../views/common/footer.jsp" %>
 </main>


    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous">
		
	</script>

    <script src="../static/js/review-star.js"></script>
</body>
</html>