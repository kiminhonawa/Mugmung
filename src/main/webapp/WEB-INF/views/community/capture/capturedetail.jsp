<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
            <h1>상세보기</h1>
        </header>
         
         <nav class="navbar navbar-expand-lg bg-body-tertiary" style="font-family: 'SUITE-Regular';">
            <ul class="navbar-nav bg-light">
                <li class="nav-item">
                    <c:url var="captureListPage" value="/community/capture/capturelist" />
                    <a class="nav-link" href="${ captureListPage }" >글 목록</a>
                </li>
            </ul>
        </nav>
        
        <main class="my-2" style="font-family: 'SUITE-Regular';">
            <section class="card">
                <form class="card-body">
                    <div class="my-2">
                        <label class="form-label" for="id">번호</label>
                        <input class="form-control" id="id" value="${ capture.id }" readonly />
                    </div>
                     <div class="my-2">
                        <label class="form-label" for="content">내용</label>
                        <input class="form-control" id="content" 
                            value="${capture.content}" readonly/>
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="capture_image_id">사진</label>
                        <input class="form-control" id="capture_image_id" 
                            value="${capture.capture_image_id}" readonly/>
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="viewsCount">조회수</label>
                        <input class="form-control" id="viewsCount" 
                            value="${capture.viewsCount}" readonly/>
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="created_Time">작성 시간</label>
                        <fmt:formatDate value="${capture.created_time}"
                            pattern="yyyy-MM-dd HH:mm:ss"  var="created" />
                        <input class="form-control" id="created_Time" value="${created}" readonly />
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="modified_Time">수정 시간</label>
                        <fmt:formatDate value="${capture.modified_time}"
                            pattern="yyyy-MM-dd HH:mm:ss"  var="modified" />
                        <input class="form-control" id="modified_Time" value="${modified}" readonly />
                    </div>
                </form>
                <div class="card-footer">
                    <c:url var="captureModifyPage" value="/community/capture/capturemodify">
                        <c:param name="id" value="${capture.id}"></c:param>
                    </c:url>
                    <div class="d-flex justify-content-end">
                    <a class="btn btn-outline-primary form-control" style="width:200px; "
                        href="${ captureModifyPage }">수정하기</a>
                    </div>
                </div>
            </section> <!-- 상세보기 끝 -->
            
           <section class="my-2 card">
                <div class="card-header fw-bold">
                    <span>댓글</span>
                    <span id="replyCount">${ capture.replyCount }</span>개
                    <button class="btn" id="btnToggleReply">
                        <img id="toggleBtnIcon" 
                            src="/mugmung/static/assets/icons/toggle-off.png" 
                            alt="toggle-off" width="32"/>
                            <br/>
                            <span>댓글</span>
                    </button>
                </div>
                <div class="card-body collapse" id="replyToggleDiv">
                    <!-- 내 댓글 등록 -->
                    <div class="my-2 row">
                        <label class="form-label" for="reply_text">나의 댓글</label>
                        <div class="col-10">
                            <textarea class="form-control" id="reply_text" name="reply_text"></textarea>
                            <input class="d-none" id="writer" value="${username }" /> <!-- TODO: 로그인 사용자 아이디 -->
                        </div>
                        <div class="col-2">
                            <button class="form-control btn btn-outline-success" id="btnAddReply">
                                등록
                            </button>
                        </div>
                    </div>
                    
                    <!-- 댓글 목록 보여줄 영역 -->
                    <div class="my-2 row" id="replies"></div>
                </div>
            </section> <!-- 댓글 등록, 댓글 리스트 카드 -->
            
            <!-- 댓글 수정 모달 -->
            <div id="replyUpdateModal" class="modal" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">댓글 수정</h5>
                            <button type="button" class="btn-close"
                                data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <!-- 수정할 댓글 아이디 - 화면에 보이지 않도록 -->
                            <input id="modalReplyId" class="d-none" />
                            <!-- 수정할 댓글 내용 -->
                            <textarea id="modalReplyText" class="form-control"></textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button"
                                class="btn btn-secondary"
                                data-bs-dismiss="modal">취소</button>
                            <button type="button" id="modalBtnUpdate"
                                class="btn btn-primary">변경 내용 저장</button>
                        </div>
                    </div>
                </div>
            </div> <!-- end modal -->

        </main>
        
        
        
         <%@ include file="../../common/footer.jsp" %>
         
           <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
           <script type="text/javascript" src="/mugmung/static/js/capture-reply.js"></script>
      </div>
   </body>
</html>