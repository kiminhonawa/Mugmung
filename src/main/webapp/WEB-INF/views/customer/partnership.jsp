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
   href="https://getbootstrap.kr/docs/5.2.3/examples/checkout/">

<link href="/docs/5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
 crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
 href="/docs/5.2.3/assets/img/favicons/apple-touch-icon.png"
 sizes="180x180">
<link rel="icon" href="/docs/5.2.3/assets/img/favicons/favicon-32x32.png"
 sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2.3/assets/img/favicons/favicon-16x16.png"
 sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2.3/assets/img/favicons/manifest.json">
<link rel="mask-icon"
 href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg"
 color="#712cf9">
<link rel="icon" href="/docs/5.2.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">



<!-- Custom styles for this template -->
<link href="partnership.css" rel="stylesheet">
</head>


<style>
@font-face {
    font-family: 'SUITE-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
</style>





<body class="bg-light">
 <div class="container mb-3">

  <main>
   <br> <br>
   <div class="row justify-content-center" style="font-family: 'SUITE-Regular';">
   <div class="col-md-7 col-lg-8">
    <h4 class="mb-4"> 입점/제휴 문의내용</h4>
    <hr>
    <form class="checkValidity" method="post" >
    <table>
     <colgroup>
         <col width="163" />
         <col width="*" />
        </colgroup>
    <tbody>
    <tr>
    
      <th><label for="username" class="form-label" >아이디</label></th> 
      <td><div class="input_area col-md-6">
         <input type="text" id="username" class="form-control mb-3"
          readonly="" value="${username}" />
        </div></td>
    </tr>
    <tr>   
      
     <th><label for="title" class="form-label" >가게명 / 회사명</label></th> 
     <td><div class="input_area col-md-6">
        <input style="resize: none;" id="title" class="form-control mb-3" name="title" ></input>
       </div></td>
    </tr>   


     <!-- 문의하기 -->
     <tr>
    
      <th><label for="partner_type" class="form-label">문의 구분</label> </th>
        <td><div class="form-group col-md-6">
            <select class="form-select mb-3" id="partner_type" name="partner_type"
             onchange="inquiryChang(this)" required>
             <option>선택하세요.</option>
             <option value="입점 문의">입점 문의</option>
             <option value="제휴 문의">제휴 문의</option>
             <option value="API연동 문의">API연동 문의</option>
            </select>
      <div class="invalid-feedback">선택해주세요.</div>
     </div></td>
     </tr>

    <tr>
     
      <th><label class="form-label" for="content">제휴 문의</label></th>
        <td><div class="col-md-10">
            <textarea style="resize: none;" class="form-control mb-3" id="content"
             name="content" rows="10">
              </textarea>
           </div></td>
    </tr>
    
    <tr>       

     <th>첨부파일</th>
     <td><div class="iqr_file">
      <br><br> <label for="slt_file" data-button="upload" class="btn_sys mid_d mb-3"><span>파일첨부</span></label>
       <input type="file" data-file id="slt_file" class="blind">
      </div>
      <div data-container="fileList"></div>
      <ul class="list_type">
       <li>최대 5MB / 최대 5개까지 첨부 가능 / 첨부 가능 파일 : PNG, JPG, JPEG, XLS,
        XLSX, PDF</li>
      </ul></td>
      </tr>
    </tbody>
    </table>

     <br> <br>
     <div class="btn_area text-center">
    <button class="form-control btn btn-primary" style="width: 200px;" type="submit"
     value="작성 완료" id="btnInquiry">문의하기</button>
     </div>
     
     
     
 
     </form>
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
