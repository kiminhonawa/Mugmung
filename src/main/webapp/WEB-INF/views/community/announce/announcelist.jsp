<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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

<body>
<%@ include file="../../../views/common/header.jsp"%>
	<br />
	<br />
	<br />
	<h2 style="font-family: 'SUITE-Regular'; text-align: center;">공지사항</h2>
		<h6 class="text-center">커뮤니티</h6>
	<br />
	<br />

<form id="sform">
<div id="sform-in">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">개인정보 처리방침</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">위치기반서비스</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">서버점검</button>
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
							[공지] 머그멍 개인정보 처리방침 변경 안내 23.6.10</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>머그멍 개인정보 처리방침</strong>
1. 주요 변경 사항
1) 개인정보 수집항목 현행화
2) 개인정보의 제3자 제공 현행화
3) 개인정보 처리위탁 업체 현행화
4) 개인정보의 안전성 확보조치 세부 항목 추가

※ 자세한 사항은 '개인정보처리방침 보기' 내용을 통해 확인할 수 있습니다.
개인정보 처리방침 보기

2. 변경 시기
변경 사항은 2023년 3월 31일부터 적용됩니다.

앞으로도 지속적인 서비스 이용과 관심 부탁드립니다.
감사합니다.

						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							[공지] 머그멍 개인정보 처리방침 변경 안내 22.07.08</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body" style="text-align: left;">
							<strong>머그멍 개인정보 처리방침</strong>
1. 주요 변경 사항
1) 라벨링 적용 등 전반적인 내용 보강
2) 긴급상황 발생 시 제공 항목 추가

※ 자세한 사항은 ‘개인정보 처리방침 보기’ 내용을 통해 확인할 수 있습니다.
개인정보 처리방침 보기

2. 변경 시기
변경 사항은 2022년 7월 8일부터 적용됩니다.

앞으로도 지속적인 서비스 이용과 관심 부탁드립니다.
감사합니다.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							[공지] 머그멍 개인정보처리방침 일부 변경에 관한 안내 21.03.31</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>머그멍 개인정보처리방침 일부 변경안내</strong>

■ 개인정보처리방침 변경 및 시행일: 2021년 03월 31일

1.개인정보처리 국외이전 정보변경
  - (변경) Amazon Web Services 추가

※ 자세한 사항은 ‘개인정보처리방침 보기’ 내용을 통해 확인할 수 있습니다.

    개인정보처리방침보기

앞으로도 지속적인 서비스 이용과 관심 부탁드립니다.
감사합니다.


 
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
							[공지] 머그멍 위치기반서비스 이용약관 변경 안내 23.04.28</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>머그멍 위치기반서비스</strong>
1. 변경 사항

제4조(서비스의 내용)
 
[개정 전]
회사가 제공하는 서비스는 아래와 같습니다.
- 서비스 명: 머그멍
- 서비스 내용: 모바일용 어플리케이션, PC용 웹사이트

[개정 후]
회사가 제공하는 서비스 개인위치정보의 보유목적 및 기간은 아래와 같습니다.
- 서비스명: 머그멍
- 서비스 내용 및 보유목적
- 위치정보수집 대상의 실시간 위치확인
- 이용자의 위치에서 근접한 업소정보제공
- 보유기간: 일회성 또는 임시로 이용 후 지체없이 파기

[개정 취지]
개정 내용: 개인위치정보의 보유 목적 및 보유기간 추가

부칙
 
[개정 전]
제2조 위치정보관리책임자는 2022년 9월 16일을 기준으로 다음과 같이 지정합니다.
1. 소속: 기술개발실
2. 이름: 유호석
3. 연락처: 02-565-5988

[개정 후]
제2조 위치정보관리책임자는 2023년 4월 28일을 기준으로 다음과 같이 지정합니다.
1. 소속: Product Center
2. 이름: 김태환
3. 연락처: 02-565-5988

[개정 취지]
개정 내용: 위치정보관리책임자 변경

2. 변경 시기
변경 사항은 2022년 9월 13일부터 적용됩니다.

3. 변경 문의
변경된 내용에 대해 궁금하신 부분은 고객센터에 문의해주세요.

 

 
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							[공지] 머그멍 위치기반서비스 이용약관 변경 안내 22.09.18</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>타인 양도가 가능한 상품에 한하여 현장에서 구매자의 정보(성함, 휴대폰 뒷자리 등)로 티켓을 사용할 수 있습니다.</strong>
						1. 변경 사항

제4조(서비스의 내용)
 
[개정 전]
회사가 제공하는 서비스는 아래와 같습니다.
- 서비스 명: 머그멍
- 서비스 내용: 모바일용 어플리케이션, PC용 웹사이트

[개정 후]
회사가 제공하는 서비스 개인위치정보의 보유목적 및 기간은 아래와 같습니다.
- 서비스명: 머그멍
- 서비스 내용 및 보유목적
- 위치정보수집 대상의 실시간 위치확인
- 이용자의 위치에서 근접한 업소정보제공
- 보유기간: 일회성 또는 임시로 이용 후 지체없이 파기

[개정 취지]
개정 내용: 개인위치정보의 보유 목적 및 보유기간 추가

부칙
 
[개정 전]
제2조 위치정보관리책임자는 2015년 3월 16일을 기준으로 다음과 같이 지정합니다.
1. 소속: 기술개발실
2. 이름: 김인호
3. 연락처: 02-565-5988

[개정 후]
제2조 위치정보관리책임자는 2022년 9월 16일을 기준으로 다음과 같이 지정합니다.
1. 소속: Product Center
2. 이름: 최명근
3. 연락처: 02-565-5988

[개정 취지]
개정 내용: 위치정보관리책임자 변경

2. 변경 시기
변경 사항은 2022년 9월 13일부터 적용됩니다.

3. 변경 문의
변경된 내용에 대해 궁금하신 부분은 고객센터에 문의해주세요.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							[공지] 머그멍 위치기반서비스 이용약관 변경 안내 15.03.16</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>주문 취소 철회하기</strong>
													1. 변경 사항

제4조(서비스의 내용)
 
[개정 전]
회사가 제공하는 서비스는 아래와 같습니다.
- 서비스 명: 머그멍
- 서비스 내용: 모바일용 어플리케이션, PC용 웹사이트

[개정 후]
회사가 제공하는 서비스 개인위치정보의 보유목적 및 기간은 아래와 같습니다.
- 서비스명: 머그멍
- 서비스 내용 및 보유목적
- 위치정보수집 대상의 실시간 위치확인
- 이용자의 위치에서 근접한 업소정보제공
- 보유기간: 일회성 또는 임시로 이용 후 지체없이 파기

[개정 취지]
개정 내용: 개인위치정보의 보유 목적 및 보유기간 추가

부칙
 
[개정 전]
제2조 위치정보관리책임자는 2013년 4월 16일을 기준으로 다음과 같이 지정합니다.
1. 소속: 기술개발실
2. 이름: 김인호
3. 연락처: 02-565-5988

[개정 후]
제2조 위치정보관리책임자는 2015년 3월 16일을 기준으로 다음과 같이 지정합니다.
1. 소속: Product Center
2. 이름: 최명근
3. 연락처: 02-565-5988

[개정 취지]
개정 내용: 위치정보관리책임자 변경

2. 변경 시기
변경 사항은 2022년 9월 13일부터 적용됩니다.

3. 변경 문의
변경된 내용에 대해 궁금하신 부분은 고객센터에 문의해주세요.
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
							[공지] 서비스 점검 안내 - 완료 23.4.13</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>[공지] 서비스 점검 안내</strong> 
							안녕하세요.
머그멍 서비스 점검을 알려드립니다.

* 점검 시간: 2023년 4월 13일 (목) 오전 2시 ~ 오전 7시

* 점검 내용: 데이터베이스 점검

* 점검 영향: 점검 시간 중 머그멍 서비스 (앱 , 웹) 이용 불가

앞으로도 더 나은 서비스를 위해 노력하겠습니다.

고맙습니다.
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							[공지] 서비스 점검 안내 - 완료 22.2.20</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse"
						aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong>[공지] 서비스 점검 안내</strong> 
														안녕하세요.
머그멍 서비스 점검을 알려드립니다.

* 점검 시간: 2022년 2월 20일 (목) 오전 2시 ~ 오전 7시

* 점검 내용: 데이터베이스 점검

* 점검 영향: 점검 시간 중 머그멍 서비스 (앱 , 웹) 이용 불가

앞으로도 더 나은 서비스를 위해 노력하겠습니다.

고맙습니다.
							
						</div>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							[공지] 서비스 점검 안내 - 완료 20.10.9</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse"
						aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<div class="accordion-body">
							<strong><[공지] 서비스 점검 안내</strong>
								안녕하세요.
머그멍 서비스 점검을 알려드립니다.

* 점검 시간: 2020년 10월 9일 (금) 오전 2시 ~ 오전 7시

* 점검 내용: 데이터베이스 점검

* 점검 영향: 점검 시간 중 머그멍 서비스 (앱 , 웹) 이용 불가

앞으로도 더 나은 서비스를 위해 노력하겠습니다.

고맙습니다.
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
<%@ include file="../../../views/common/footer.jsp"%>
</body>
</html>