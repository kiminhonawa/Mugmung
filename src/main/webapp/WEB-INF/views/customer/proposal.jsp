<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../../views/common/header.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>맛집은!머그멍</title>
<link
 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
 rel="stylesheet"
 integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
 crossorigin="anonymous">
</head>

<body>
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
   <div class="row justify-content-center">
    <div class="col-md-7 col-lg-8">
     <div class="proposal_write_tbl">
      <h4 class="proposal_write_tit mb-4" style="font-family: 'SUITE-Regular';">제안하기</h4>
      <hr>
      <form method="post">
       <table class="table_info">
        <colgroup>
         <col width="163" />
         <col width="*" />
        </colgroup>
        <tbody>
         <tr>
          <th><label for="userId" class="form-label">아이디</label></th>
          <td><div class="input_area">
            <input type="text" id="userId"
             class="form-control mb-3" readonly=""
             value="${username}" />
           </div></td>
         </tr>
         <tr>
          <th><label for="email" class="form-label">이메일</label></th>
          <td><div class="input_area">
            <input type="text" id="email"
             class="form-control mb-3" readonly=""
             value="${email}" />
           </div></td>
         </tr>

         <tr>
          <th><label for="inquiry" class="form-label">제안구분</label></th>
          <td><select class="form-select mb-3" id="inquiry"
           name="inquiry" onchange="inquiryChang(this)" required>
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
          <th><label for="ipt_tit" class="lb_tit">제목</label></th>
          <td><div class="input_area ipt_tit_area">
            <input type="text" id="ipt_tit"
             class="inpt_default form-control mb-3" name="title"
             maxLength="51" value="" />
           </div></td>
         </tr>
         <tr>
          <th><label for="ipt_ctt" class="lb_tit">내용</label></th>
          <td><div class="input_area input_txtarea">
            <textarea id="ipt_ctt"
             class="inpt_default form-control mb-3" name="desc"
             rows="18" style="resize: none;"
             placeholder="본 게시판은 제안게시판으로 작성 글에 대한 답변은 제공하지 않습니다.
답변이 필요하신 경우 마이페이지 내 1:1문의 서비스를 이용하시기 바랍니다."></textarea>
           </div></td>
         </tr>

         <tr>
          <th>파일첨부(선택)</th>
          <td><div class="ipt_file_area">
            <br> <label for="ipt_file" class="btn_sys mid_d"><span>파일첨부</span></label><input
             type="file" id="ipt_file" class="blind" />
            <ul class="file_list"></ul>
           </div>
           <ul class="list_type">
            <li>최대용량 2MB, 첨부 가능 파일: <!-- -->PNG, JPG, JPEG, GIF,
             XLS, XLSX, PDF
            </li>
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
        <button class="btn btn-primary btn-lg" type="submit" value="취소"
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
 <script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
  crossorigin="anonymous"></script>
   <script src="../static/js/proposal.js"></script>
 </div>
</body>
</html>