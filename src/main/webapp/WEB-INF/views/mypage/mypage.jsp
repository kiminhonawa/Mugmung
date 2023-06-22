<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

   
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>맛집은! 머그멍</title>
      <link rel="stylesheet" href="/mugmung/static/css/carousel.css">
      <link rel="stylesheet" href="/mugmung/static/css/carouselrtl.css">
      <c:url value="/static/css/grid.css" var="grid" />
      <link rel="stylesheet" href="${grid }">
      
      <style>
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      text-align: center;
    }
    
    .image {
      display: flex;
      justify-content: center;
      margin-bottom: 10px;
    }
    
    .label {
      margin-bottom: 10px;
    }
    
    .button {
      margin-bottom: 10px;
    }
    
    
  </style>
      
   </head>
   <body>
   <%@ include file="../../views/common/header.jsp" %>
	<main>
	
		<input type="hidden" id="mymyImage" name="mymyImage" value="${img_loc}">
		<div>
<div class="row mb-3 text-center">

	<div class="col-md-4 themed-grid-col">
		<div class="container">
    <div class="image">
		<img id="myImgUrl" src="" alt="이미지" style="width: 200px; height: 200px;">
    </div>
    <div class="label">
      <p>${username } </p>님 안녕하세요.
    </div>
    
    <!-- <button id="settingInfoBtn" name="settingInfoBtn" class="settingInfoBtn">설정</button> -->
    <br/>
    <div>
      <label for="bookmarkCnt">북마크 수 : ${cntDto.bookmarkCnt }</label>
     </div>
     <div >
      <label for="reviewCnt">리뷰 수 : ${cntDto.reviewCnt }</label>
      </div>
      <div >
      <label for="reviewCnt">예약 수 : ${cntDto.reserveCnt }</label>
      </div>
    
    
  </div>
	</div>

    <div class="col-md-8 themed-grid-col">
      <div class="container">
    <header class="d-flex justify-content-center py-3">
      <ul class="nav nav-pills">
      
      <!-- 
      구매한 상품 - purchased
      리뷰한 상품 - reviewed
      북마크 보기 - bookmarked
      별점보기 - starscore
      문의한 내용 - makgora
       -->
      
      
      	<c:url value="/mypage/purchased" var="purchasedPage" />
      	
        <li class="nav-item">
        	<a id="purchased" class="nav-link active" aria-current="page" >예약한 상품</a>
        </li>
        
        <c:url value="/mypage/reviewed" var="reviewedPage" />
        <li class="nav-item"><a id="reviewed" class="nav-link" >리뷰 보기</a></li>
        
        <c:url value="/mypage/bookmarked" var="bookmarkedPage" />
        <li class="nav-item"><a id="bookmarked" class="nav-link">북마크보기</a></li>
        
        <c:url value="/mypage/starscore" var="starscorePage" />
        <li class="nav-item"><a id="starscore" class="nav-link">별점보기</a></li>
        
        <c:url value="/mypage/makgora" var="makgoraPage" />
        <li class="nav-item"><a id="makgora" class="nav-link">문의한 내용</a></li>
        
       	<%-- <c:url value="/mypage/setImg" var="setImg" />
        <li class="nav-item">
        	<a href="${ setImg}" id="setImg" class="nav-link">프로필 변경</a>
       	</li>
       	
       	<c:url value="/mypage/setEmail" var="setEmail" />
        <li class="nav-item">
        	<a href="${ setEmail}" id="setEmail" class="nav-link">이메일 변경</a>
       	</li>
       	
       	<c:url value="/mypage/setPw" var="setPw" />
        <li class="nav-item">
        	<a href="${ setPw}" id="setPw" class="nav-link">비밀번호 변경</a>
       	</li> --%>
        
      </ul>
    </header>
  </div>
      <div class="card">
                <table class="card-body table table-hover" >
                    <thead id="tableHead">
                        <tr style="border: 1px black " >
                            <th>상호명</th>
                            <th rowspan="2">가게 정보</th>
                            <th >맛집 이동</th>
                        </tr>
                    </thead>
                    <tbody id="tableLists">
                    
                    	<c:forEach items="${lists }" var="list">
                    	<tr>
                    		<td>${list.name}</td>
			                <td>
			                    ${list.name_info}
			                </td>
			                <td>
			                   <button class="btnModify btnDetail btn btn-outline-success" data-id="${list.id}">
			                        맛집 이동
			                    </button> 
			                </td>
			            </tr>
                    	</c:forEach>
                    </tbody>
                </table>
            </div>
    	</div>
	</div>
		</div>
		<%@ include file="../../views/common/footer.jsp" %>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<c:url value="/static/js/mypage.js" var="mypage"/>
	<script type="text/javascript" src="${mypage }"></script>
   </body>
</html>