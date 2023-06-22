<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>식당 등록 페이지</title>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">

</head>
<body>
    <header>
        <div class="card" style="width: 50%; margin: 0 auto; text-align: center;">
        
        <h1 class="fw-bold">식당 등록</h1>
        <c:url value="/upload/imgUpload" var="upload"></c:url>
        <form id="signUploadForm" action="${upload}" method="post"
            enctype="multipart/form-data">
            <input type="file" class="myfile" id="file" name="file" />
            <input type="button" id="btnUpload" value="Upload" class="btn btn-dark" />
        </form>
        </div>
    </header>
    <div class="card" style="width: 50%; margin: 0 auto;">
    
        <form method="post">
            <div class="card-body fw-bold" style="width: 80%; margin: 0 auto;">
                <main class="my-2">
                
                    <input type="text" id="sample4_postcode"
                        placeholder="우편번호"> <input type="button"
                        class="btn btn-dark"
                        onclick="sample4_execDaumPostcode()"
                        value="우편번호 찾기"><br> <input
                        type="text" id="address1" name="address1"
                        placeholder="도로명주소" size="60"><br>
                    <input type="hidden" id="sample4_jibunAddress"
                        placeholder="지번주소" size="60"> <span
                        id="guide" style="color: #999; display: none"></span>
                    <input type="text" id="address2" name="address2"
                        placeholder="상세주소" size="60"><br> <input
                        type="hidden" id="sample4_extraAddress"
                        placeholder="참고항목" size="60"> <input
                        type="hidden" id="sample4_engAddress"
                        placeholder="영문주소" size="60"><br>
                    <script
                        src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

                    <script>
                                                                                    
                                                                                    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
                                                                                    function sample4_execDaumPostcode() {
                                                                                        new daum.Postcode(
                                                                                                {
                                                                                                    oncomplete : function(
                                                                                                            data) {
                                                                                                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                                                                                        // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                                                                                                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                                                                                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                                                                                                        var extraRoadAddr = ''; // 참고 항목 변수

                                                                                                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                                                                                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                                                                                        if (data.bname !== ''
                                                                                                                && /[동|로|가]$/g
                                                                                                                        .test(data.bname)) {
                                                                                                            extraRoadAddr += data.bname;
                                                                                                        }
                                                                                                        // 건물명이 있고, 공동주택일 경우 추가한다.
                                                                                                        if (data.buildingName !== ''
                                                                                                                && data.apartment === 'Y') {
                                                                                                            extraRoadAddr += (extraRoadAddr !== '' ? ', '
                                                                                                                    + data.buildingName
                                                                                                                    : data.buildingName);
                                                                                                        }
                                                                                                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                                                                                        if (extraRoadAddr !== '') {
                                                                                                            extraRoadAddr = ' ('
                                                                                                                    + extraRoadAddr
                                                                                                                    + ')';
                                                                                                        }

                                                                                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                                                                                        document
                                                                                                                .getElementById('sample4_postcode').value = data.zonecode;
                                                                                                        document
                                                                                                                .getElementById("address1").value = roadAddr;
                                                                                                        document
                                                                                                                .getElementById("sample4_jibunAddress").value = data.jibunAddress;

                                                                                                        document
                                                                                                                .getElementById("sample4_engAddress").value = data.addressEnglish;

                                                                                                        // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                                                                                                        if (roadAddr !== '') {
                                                                                                            document
                                                                                                                    .getElementById("sample4_extraAddress").value = extraRoadAddr;
                                                                                                        } else {
                                                                                                            document
                                                                                                                    .getElementById("sample4_extraAddress").value = '';
                                                                                                        }

                                                                                                        var guideTextBox = document
                                                                                                                .getElementById("guide");
                                                                                                        // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                                                                                                        if (data.autoRoadAddress) {
                                                                                                            var expRoadAddr = data.autoRoadAddress
                                                                                                                    + extraRoadAddr;
                                                                                                            guideTextBox.innerHTML = '(예상 도로명 주소 : '
                                                                                                                    + expRoadAddr
                                                                                                                    + ')';
                                                                                                            guideTextBox.style.display = 'block';

                                                                                                        } else if (data.autoJibunAddress) {
                                                                                                            var expJibunAddr = data.autoJibunAddress;
                                                                                                            guideTextBox.innerHTML = '(예상 지번 주소 : '
                                                                                                                    + expJibunAddr
                                                                                                                    + ')';
                                                                                                            guideTextBox.style.display = 'block';
                                                                                                        } else {
                                                                                                            guideTextBox.innerHTML = '';
                                                                                                            guideTextBox.style.display = 'none';
                                                                                                        }
                                                                                                    }
                                                                                                })
                                                                                                .open();
                                                                                    }
                                                                                </script>
                    <input type="hidden" id="images_loc" name="images_loc">

                    <div class="my-2">
                        <label class="form-label" for="name">식당
                            이름</label> <input class="form-control" type="text"
                            id="name" name="name" required autofocus />
                    </div>
                    
                    <div class="my-2">
                        <labelx` for="phone_num">전화
                            번호</label> <input class="form-control" type="text"
                            id="phone_num" name="phone_num" required
                            autofocus />
                    </div>
                    <div class="my-2 d-flex align-items-center">
                        <div>
                            <label class="form-label"
                                for="food_type1"> 음식 종류1</label> <input
                                class="form-control" type="text"
                                id="food_type1"
                                name="food_type1" required
                                autofocus />
                        </div>
                        <span class="mx-2">_</span>
                        <div>
                            <label class="form-label"
                                for="food_type2"> 음식 종류2</label> <input
                                class="form-control" type="text"
                                id="food_type2"
                                name="food_type2" required />
                        </div>
                        <span class="mx-2">_</span>
                        <div>
                            <label class="form-label"
                                for="food_type3"> 음식 종류3</label> <input
                                class="form-control" type="text"
                                id="food_type3"
                                name="food_type3" required />
                        </div>
                    </div>
                    <div class="my-2 d-flex align-items-center">
                        <div>
                            <label class="form-label"
                                for="low_price_range"> 최소 가격</label> <input
                                class="form-control" type="text"
                                id="low_price_range"
                                name="low_price_range" required
                                autofocus />
                        </div>
                        <span class="mx-2">~</span>
                        <div>
                            <label class="form-label"
                                for="high_price_range"> 최대 가격</label> <input
                                class="form-control" type="text"
                                id="high_price_range"
                                name="high_price_range" required />
                        </div>
                    </div>
                    <div class="my-2 d-flex align-items-center">
                        <div>
                            <label class="form-label"
                                for="business_start_hour"> 영업 시간</label>
                            <input class="form-control" type="text"
                                id="business_start_hour"
                                name="business_start_hour" required
                                autofocus />
                        </div>
                        <span class="mx-2">~</span>
                        <div>
                            <label class="form-label"
                                for="business_end_hour"> </label> <input
                                class="form-control" type="text"
                                id="business_end_hour"
                                name="business_end_hour" required />
                        </div>
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="last_order">마지막주문</label>
                        <input class="form-control" type="text"
                            id="last_order" name="last_order" required
                            autofocus />
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="holiday">휴일</label>
                        <input class="form-control" type="text"
                            id="holiday" name="holiday" required
                            autofocus />
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="web_link">웹사이트</label>
                        <input class="form-control" type="text"
                            id="web_link" name="web_link" 
                            autofocus />
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="name_info">식당
                            정보</label> <input class="form-control" type="text"
                            id="name_info" name="name_info" required
                            autofocus />
                            <div class="my-2">
                        <label class="form-label" for="x">x좌표
                            </label> <input class="form-control" type="text"
                            id="x" name="x" required
                            autofocus />
                            <div class="my-2">
                        <label class="form-label" for="y">y좌표
                            </label> <input class="form-control" type="text"
                            id="y" name="y" required
                            autofocus />
                    </div>
                    <div class="my-2 d-flex align-items-center">
                        <div>
                            <label class="form-label"
                                for="menu1_name"> 메뉴 이름1</label> <input
                                class="form-control" type="text"
                                id="menu1_name"
                                name="menu1_name" required
                                autofocus />
                        </div>
                        <span class="mx-2">_</span>
                        <div>
                            <label class="form-label"
                                for="menu1_price"> 메뉴 가격1</label> <input
                                class="form-control" type="text"
                                id="menu1_price"
                                name="menu1_price" required />
                        </div>
                    </div>
                    <div class="my-2 d-flex align-items-center">
                        <div>
                            <label class="form-label"
                                for="menu2_name"> 메뉴 이름2</label> <input
                                class="form-control" type="text"
                                id="menu2_name"
                                name="menu2_name" required
                                autofocus />
                        </div>
                        <span class="mx-2">_</span>
                        <div>
                            <label class="form-label"
                                for="menu2_price"> 메뉴 가격2</label> <input
                                class="form-control" type="text"
                                id="menu2_price"
                                name="menu2_price" required />
                        </div>
                    </div>
                    <div class="my-2 d-flex align-items-center">
                        <div>
                            <label class="form-label"
                                for="menu3_name"> 메뉴 이름3</label> <input
                                class="form-control" type="text"
                                id="menu3_name"
                                name="menu3_name" required
                                autofocus />
                        </div>
                        <span class="mx-2">_</span>
                        <div>
                            <label class="form-label"
                                for="menu3_price"> 메뉴 가격3</label> <input
                                class="form-control" type="text"
                                id="menu3_price"
                                name="menu3_price" required />
                        </div>
                    </div>
                    <div class="my-2">
                        <label class="form-label" for="max_members">인원수
                            </label> <input class="form-control" type="text"
                            id="max_members" name="max_members" required
                            autofocus />
                    </div>
                    <div class="card-footer my-2">
                        <input
                            class="form-control btn btn-outline-dark"
                            type="submit" value="작성 완료" />
                    </div>
                </main>
            </div>
        </form>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous">
                                </script>
                                <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
                                <c:url value="/static/js/storecreate.js" var="storecreate"></c:url>
    <script type="text/javascript" src="${ storecreate }"></script>
    </div>
</body>
</html>