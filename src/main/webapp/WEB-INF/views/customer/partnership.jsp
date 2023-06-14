<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../views/common/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author"
   content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
  <meta name="generator" content="Hugo 0.104.2">
  <title>제휴문의</title>
  
  <link rel="canonical"
   href="https://getbootstrap.kr/docs/5.2/examples/checkout/">

<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
 crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
 href="/docs/5.2/assets/img/favicons/apple-touch-icon.png"
 sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png"
 sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png"
 sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon"
 href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
 color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">



<!-- Custom styles for this template -->
<link href="partnership.css" rel="stylesheet">
</head>



<body class="bg-light">
 <div class="container">

  <main>
   <br> <br>
   <div class="col-md-7 col-lg-8">
    <h4 class="mb-4">입점/제휴 문의내용</h4>
    <hr>
    <form class="checkValidity" method="post">

     <!-- 문의하기 -->
     <div class="form-group col-md-6">
      <label for="inquiry" class="form-label">문의구분</label> <select
       class="form-select mb-3" id="inquiry" name="inquiry"
       onchange="inquiryChang(this)" required>
       <option>선택하세요.</option>
       <option value="입점 문의">입점 문의</option>
       <option value="제휴 문의">제휴 문의</option>
       <option value="API연동 문의">API연동 문의</option>
      </select>
      <div class="invalid-feedback">선택해주세요.</div>
     </div>

     <div class="form-group col-md-6">
      <label for="category" class="form-label">카테고리</label> <select
       class="form-select mb-3" id="category" name="category" required>
       <option>선택하세요.</option>
      </select>
      <div class="invalid-feedback">선택해주세요.</div>
     </div>

     <div class="col-md-10">
      <label class="form-label" for="content">제휴 문의</label>
      <textarea style="resize: none;" class="form-control" id="content"
       name="content" rows="10" placeholder="">
        </textarea>
      <p class="text_bit">
       (<span data-text-length>0</span>/1000자)
      </p>
     </div>

     <dt>첨부파일</dt>
     <dd>
      <div class="iqr_file">
       <label for="slt_file" data-button="upload" class="btn_sys mid_d"><span>파일첨부</span></label>
       <input type="file" data-file id="slt_file" class="blind">
      </div>
      <div data-container="fileList"></div>
      <ul class="list_type">
       <li>최대 5MB / 최대 5개까지 첨부 가능 / 첨부 가능 파일 : PNG, JPG, JPEG, XLS,
        XLSX, PDF</li>
      </ul>
     </dd>


     <br> <br>
     <div class="shop_info  col-md-10">
      <h4 class="mb-4">업체정보</h4>
      <hr>
      <br>
      <div class="input_area">
       <label class="form-label" for="content">판매업체명</label> <input
        type="text" class="form-control mb-3" maxlength="20"
        data-role="companyNm" />
      </div>
      <div class="input_area">
       <label class="est">담당자 이름</label> <input type="text"
        class="form-control mb-3" data-role="managerNm" maxlength="20" />
      </div>
      <div class="input_area" data-input="cellphone">
       <label class="est">담당자 휴대폰</label> <input type="text"
        class="form-control mb-3" maxlength="13"
        data-role="managerMobile" id="cellphone" placeholder="- 없이 입력" />
      </div>
      <div class="input_area" data-input="email">
       <span class="est">담당자 이메일</span> <input type="text"
        class="form-control mb-3" maxlength="30"
        data-role="managerEmail" id="email"
        placeholder="답변받을 이메일 주소를 입력" />
      </div>

      <div class="input_area">
       <span class="est">홈페이지 주소</span> <input type="text"
        class="form-control mb-3" data-role="homepageUrl"
        maxlength="200" />
      </div>
     </div>
    </form>
    <div class="btn_area text-center">
    <button class="btn btn-primary btn-lg" type="submit"
     value="작성 완료" id="btnInquiry">문의하기</button>
     </div>

   </div>

  </main>
 </div>

</body>








<%@ include file="../../views/common/footer.jsp"%>
 <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
  crossorigin="anonymous"></script>
 <script src="../static/js/partnership.js"></script>

</html>
