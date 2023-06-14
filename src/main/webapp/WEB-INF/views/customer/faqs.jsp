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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link href="./static/css/headers.css" rel="stylesheet" />
<link href="/mugmung/static/css/dropdowns.css" rel="stylesheet" />
<style>
@font-face {
	font-family: 'SUITE-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-2@1.0/SUITE-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}

    .table th:nth-child(1),
    .table td:nth-child(1),
    .table th:nth-child(3),
    .table td:nth-child(3) {
        width: 10%;
    }

    .table th:nth-child(2),
    .table td:nth-child(2) {
        width: 70%;
    }
     .table {
        font-size: 12px;
    }

    .table th,
    .table td {
        padding: 0.5rem;
    }
	#sform {
          text-align: center;
          max-width: 60%;
  		  margin: auto;
   }
   /* 아코디언 버튼 활성 상태일 때의 색상 */
.border-botton-color {
    background-color: #ffc720;
    /* 여기서 "색상"은 원하는 색상 값을 입력합니다. 예를 들어, red, #ff0000, rgb(255, 0, 0) 등을 사용할 수 있습니다. */
}

	.accordion-body {
		text-align: left;
	}

</style>
</head>


</body>
<body>
	<br />
	<br />
	<br />
	<h2 style="font-family: 'SUITE-Regular'; text-align: center;">자주묻는질문</h2>
		<h6 class="text-center">고객센터</h6>
	<br />
	<br />

<form id="sform">
<div id="sform-in">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">회원서비스</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">예약/취소</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">포인트/회원약관</button>
  </li>
</ul>

	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="home" role="tabpanel"
			aria-labelledby="home-tab">
			<div class="accordion" id="accordionHome">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							[회원정보] 회원정보 수정은 어떻게 하나요?</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>로그인 후 아래의 경로에서 회원정보를 수정할 수 있습니다.</strong>
							 수정 가능한 회원정보는 이름(개명), 아이디(이메일), 휴대폰 번호입니다. 주소록(배송지)은 별도의 경로에서 수정이 가능합니다.
							회원정보 수정하기
							마이쿠팡 → MY정보 →  → 비밀번호 입력 이후 수정을 원하는 항목의 [수정] 버튼을 클릭하여 수정합니다.
							주소록(배송지) 수정하기
							마이쿠팡 → MY정보 →  → 수정

						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							[회원탈퇴] 회원 탈퇴는 어떻게 하나요?</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body" style="text-align: left;">
							<strong>회원 탈퇴는 아래의 절차를 따라 하실 수 있습니다.</strong>
									탈퇴 시 회원 전용 웹 서비스 이용이 불가합니다.
									탈퇴 전 유의사항을 반드시 확인해 주시기 바랍니다. 
									
									회원 탈퇴하기
									마이쿠팡 → MY정보 →  → 비밀번호 입력 → [회원탈퇴] 클릭 후 남은 절차를 모두 확인 및 동의하면 회원탈퇴가 완료됩니다.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							[회원탈퇴] 탈퇴하면 개인정보는 모두 삭제되나요?</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>회원 탈퇴와 함께 고객님의 개인정보는 완전히 삭제되므로 재가입을 하여도 구매내역은 확인이 불가합니다.</strong>
								
							단, 「상법」 및 「전자상거래 등에서의 소비자 보호에 관한 법률」 등 관련 법령에 따라 거래 관련 권리 의무 관계의 확인 등을 이유로 보유하여야 할 필요가 있을 경우, 거래정보는 법에서 정해진 기간동안 별도로 보관 후 파기합니다.
                                • 계약 또는 청약철회 등에 관한 기록 : 5년
								• 대금 결제 및 재화 등의 공급에 관한 기록 : 5년
								• 소비자의 불만 또는 분쟁에 관한 기록 : 3년
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="tab-pane fade" id="profile" role="tabpanel"
			aria-labelledby="profile-tab">
			<div class="accordion" id="accordionProfile">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							[찜하기] 찜한 상품은 어디에서 확인할 수 있나요?</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>찜한 상품은 마이페이지에서 확인이 가능합니다.</strong>
							■ 찜하기 이용방법
							1. 찜하는 방법 : 상품 상세페이지 우측 상당 찜버튼(♡)
							2. 찜한 상품 확인 방법
								1) 모바일 앱 : []
								2) PC : 홈페이지 우측 상단 [마이쿠팡]에 마우스 커서를 올리고 []선택
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							[티켓] 티켓을 친구나 가족, 지인에게 선물해 주고 싶어요. 어떻게 하나요?</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>This is the second item's accordion body.</strong> It is
							hidden by default, until the collapse plugin adds the appropriate
							classes that we use to style each element. These classes control
							the overall appearance, as well as the showing and hiding via CSS
							transitions. You can modify any of this with custom CSS or
							overriding our default variables. It's also worth noting that
							just about any HTML can go within the
							<code>.accordion-body</code>
							, though the transition does limit overflow.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							Accordion Item #3</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>This is the third item's accordion body.</strong> It is
							hidden by default, until the collapse plugin adds the appropriate
							classes that we use to style each element. These classes control
							the overall appearance, as well as the showing and hiding via CSS
							transitions. You can modify any of this with custom CSS or
							overriding our default variables. It's also worth noting that
							just about any HTML can go within the
							<code>.accordion-body</code>
							, though the transition does limit overflow.
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="tab-pane fade" id="contact" role="tabpanel"
			aria-labelledby="contact-tab">
			<div class="accordion" id="accordionContact">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							[회원정보] 회원정보 수정은 어떻게 하나요?</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>로그인 후 아래의 경로에서 회원정보를 수정할 수 있습니다. </strong> 수정 가능한 회원정보는 이름(개명), 아이디(이메일), 휴대폰 번호입니다. 주소록(배송지)은 별도의 경로에서 수정이 가능합니다.

 

회원정보 수정하기

마이쿠팡 → MY정보 →  → 비밀번호 입력

이후 수정을 원하는 항목의 [수정] 버튼을 클릭하여 수정합니다.

 

주소록(배송지) 수정하기

마이쿠팡 → MY정보 →  → 수정
							<code>.accordion-body</code>
							, though the transition does limit overflow.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							Accordion Item #2</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>This is the second item's accordion body.</strong> It is
							hidden by default, until the collapse plugin adds the appropriate
							classes that we use to style each element. These classes control
							the overall appearance, as well as the showing and hiding via CSS
							transitions. You can modify any of this with custom CSS or
							overriding our default variables. It's also worth noting that
							just about any HTML can go within the
							<code>.accordion-body</code>
							, though the transition does limit overflow.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							Accordion Item #3</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>This is the third item's accordion body.</strong> It is
							hidden by default, until the collapse plugin adds the appropriate
							classes that we use to style each element. These classes control
							the overall appearance, as well as the showing and hiding via CSS
							transitions. You can modify any of this with custom CSS or
							overriding our default variables. It's also worth noting that
							just about any HTML can go within the
							<code>.accordion-body</code>
							, though the transition does limit overflow.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
<br />
<br />
<br />
<br />
<br />
<br />
<br />


	<%@ include file="../../views/common/footer.jsp"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="/mugmung/static/js/headerb.js"></script>

</body>
</html>