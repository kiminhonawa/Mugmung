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
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
        crossorigin="anonymous">

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
        
        <div class="card">
            <form method="post">

                <div class="ReviewWritingPage__Row">
                <strong class="RestaurantSubMessage__RestaurantName" style="font-family: 'EF_jejudoldam'";>남부</strong>
                <div class="RestaurantSubMessage__SubMessageWrap">
                <span class="RestaurantSubMessage__SubMessage" style="font-family: 'EF_jejudoldam';">에 대한 솔직한 리뷰를 써주세요.</span>
                </div>
        <div class="review_rating">
            
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점">
                    <label for="rating1"></label>
                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점">
                    <label for="rating2"></label>
                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
                    <label for="rating3"></label>
                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
                    <label for="rating4"></label>
                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
                    <label for="rating5"></label>
                
            </div>
        </div>
        </div>
            </form>
      <textarea class="ReviewEditor__Editor" maxlength="10000"
       style="overflow: hidden; overflow-wrap: break-word; height: 150px;"
       placeholder="아영님, 주문하신 메뉴는 어떠셨나요? 식당의 분위기와 서비스도 궁금해요!"></textarea>
     </div>

    <div class="ReviewEditor">
     <p class="ReviewEditor__TextLengthStateBox">
      <span class="ReviewEditor__CurrentTextLength">0</span> <span
       class="ReviewEditor__TextLengthStateDivider">/</span> <span
       class="ReviewEditor__MaxTextLength">10,000</span>
     </p>
    </div>

    <div>
        <script type="text/javascript">

    function readURL(input) {
      var file = input.files[0] 
      console.log(file)
      if (file != '') {
         var reader = new FileReader();
         reader.readAsDataURL(file);
         reader.onload = function (e) { 
         console.log(e.target)
        console.log(e.target.result)
           $('#preview').attr('src', e.target.result);
          }
      }
  }  
    </script>
    <div>
        <form method="post" action="${contextPath}/board/writeSave" enctype="multipart/form-data">
            <div class="form-group" style="height: 150px; width: 200px;">
                <label>이미지 파일 첨부</label>
                    
                    <input type="file" name="imgFile" onchange="readURL(this);"/>
                    <img id="preview" src="#" width=200 height=150 alt="선택된 이미지가 없습니다" style="align-content: flex-end; ">
            </div>
        </form>
    </div>
    </div>
    <div class="ReviewWritingPage">
        <div class="ReviewWritingPage__PictureWrap">
        <div class="ReviewPictureCounter"
            style="top: 93px; left: 89px; display: block;">
        <span class="ReviewPictureCounter__CurrentLength">0</span> <span
            class="ReviewPictureCounter__Divider">/</span> <span
            class="ReviewPictureCounter__MaxLength">20</span>
        </div>
        </div>
        
    <div class="DraggablePictureContainer">
        <ul class="DraggablePictureContainer__PictureList muuri"
            style="height: 98px;">
            <li
                class="DraggablePictureContainer__PictureItem DraggablePictureContainer__PictureItem--button muuri-item muuri-item-shown dz-clickable"
                style="left: 0px; top: 0px; transform: translateX(0px) translateY(0px); display: block; touch-action: none; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                <button class="DraggablePictureContainer__AddButton"
                        style="opacity: 1; transform: scale(1);">
                <i class="DraggablePictureContainer__AddIcon"></i>
                저장</button>
            </li>
        </ul>

    <div class="DraggablePictureContainer__GuideLayer">
        <span class="DraggablePictureContainer__GuideMessage">사진을 여기에 놓으세요.</span>
    </div>
    </div>
    </div>





    <div class="find-btn">
        <button type="button" class="btn btn-navy navbar-btn find-btn1"
                onclick="location.href='/login'" style="font-family: 'EF_jejudoldam';">임시저장</button>
        <button type="button" class="btn btn-navy navbar-btn find-btn1"
                onclick="location.href='/login'" style="font-family: 'EF_jejudoldam';">저장</button>
        <button type="button" class="btn btn-grey navbar-btn find-btn1"
                onclick="location.href='/findIdPw'" style="font-family: 'EF_jejudoldam';">취소</button>
    </div>

 
 <%@ include file="../../views/common/footer.jsp" %>
 </main>


    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
    crossorigin="anonymous">
		
	</script>

    <script src="../static/js/review-star.js"></script>
</body>
</html>