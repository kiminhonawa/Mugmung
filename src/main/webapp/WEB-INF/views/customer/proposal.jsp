<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>맛집은!머그멍</title>

</head>

<body>
<%@ include file="../../views/common/header.jsp"%>
<style>
@font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
</style>

 <div class="container">
  <main>

  
   <br> <br>
   <div class="row justify-content-center"  style="font-family: 'SUITE-Regular';" >
    <div class="col-md-7 col-lg-8">
     <div class="proposal_write_tbl">
      <h4 class="proposal_write_tit mb-4">제안하기</h4>
      <hr>
      <c:url value="/customer/proposal" var="proposal"></c:url>
      <form class="my-form" method="post" action="${ proposal }" >
       <table class="table_info">
        <colgroup>
         <col width="163" />
         <col width="*" />
        </colgroup>
        <tbody>
        <%--  <tr>
          <th><label for="userId" class="form-label">아이디</label></th>
          <td><div class="input_area">
            <input type="text" id="username" name="username"
             class="form-control mb-3" readonly=""
             value="${username}" />
           </div></td>
         </tr> --%>
         

         <tr>
          <th><label for="proposal_type" class="form-label">제안구분</label></th>
          <td><select class="form-select mb-3" id="proposal_type"
           name="proposal_type" onchange="proposal_typeChang(this)"  required>
            <option>선택하세요.</option>
            <option value="신메뉴 제안">신메뉴 제안</option>
            <option value="서비스 개선 제안">서비스 개선 제안</option>
            <option value="시설 개선 제안">시설 개선 제안</option>
            <option value="이벤트 및 프로모션 제안">이벤트 및 프로모션 제안</option>
            <option value="온라인 서비스 개선 제안">온라인 서비스 개선 제안</option>
            <option value="기타 제안">기타 제안</option>
          </select></td>

         </tr>


         <tr>
          <th><label for="title" class="lb_tit">제목 ${username}</label></th>
          <td><div class="input_area ipt_tit_area">
            <input type="text" id="title"
             class="inpt_default form-control mb-3" name="title"
             maxLength="51" value="" />
           </div></td>
         </tr>
         <tr>
          <th><label for="content" class="lb_tit">내용</label></th>
          <td><div class="input_area input_txtarea">
            <textarea id="content"
             class="inpt_default form-control mb-3" name="content"
             rows="18" style="resize: none;"
             placeholder="본 게시판은 제안게시판으로 작성 글에 대한 답변은 제공하지 않습니다.
답변이 필요하신 경우 마이페이지 내 1:1문의 서비스를 이용하시기 바랍니다."></textarea>
           </div></td>
         </tr>

         <tr>
          <th>파일첨부(선택)</th>
          <td><div class="ipt_file_area">
            <br><br> <label for="ipt_file" class="btn_sys mid_d"><span>파일첨부</span></label><input
             type="file" id="ipt_file" class="blind" />
            <ul class="file_list"></ul>
           </div>
           <ul class="list_type">
            <li>최대용량 2MB, 첨부 가능 파일: <!-- -->PNG, JPG, JPEG, GIF,
             XLS, XLSX, PDF</li>
           <li>제안하기 등록 시 개인정보는 기재/첨부되지 않도록 주의 바랍니다.</li>
           </ul></td>
         </tr>
        </tbody>
       </table>
       <hr>
       <ul class="list_type">
        <li>입력하신 정보는 제안내용에 대한 확인 및 보상을 위해 처리기간 동안만 보관하며, 마케팅 등 다른
         목적으로 사용되지 않습니다</li>
       </ul>
       <div class="btn_area text-center">
        <button class="btn btn-primary btn-lg" type="submit"
         value="제안하기" id="btnSuggest">
         <span>제안하기</span>
        </button>
        <button class="btn btn-primary btn-lg =" type="submit" value="취소"
         id="btnCancel">
         <span>취소</span>
        </button>
       </div>
      </form>
     </div>
    </div>
   </div>
  </main>
 </div>







 <%@ include file="../../views/common/footer.jsp"%>

   <script src="/mugmung/static/js/proposal.js"></script>
 </div>
</body>
</html>