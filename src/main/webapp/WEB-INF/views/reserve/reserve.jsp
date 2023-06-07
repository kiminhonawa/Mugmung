<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>예약페이지</title>
 </head>
<body>﻿
		<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="user-scalable=yes, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width,target-densitydpi=medium-dpi"
			 name="viewport">
		<meta name="format-detection" content="telephone=no"> -->

<body>﻿
		<link rel="stylesheet" type="text/css" href="../static/css/style.css">
		<link rel="stylesheet" type="text/css" href="static/css/slick.css">
	<!-- 	<link rel="stylesheet" type="text/css" href="static/css/jquery.bxslider.css">
		<link rel="stylesheet" type="text/css" href="static/css/jquery.fullPage.css"> -->
<!-- 		<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="../js/jquery.easing.1.3.min.js"></script>
		<script type="text/javascript" src="../js/ui.js"></script>
		<script type="text/javascript" src="../js/slick.js"></script>
		<script type="text/javascript" src="../js/jquery.bxslider.js"></script>
		<script type="text/javascript" src="../js/jquery.fullPage.js"></script> -->

		<link rel="stylesheet" type="text/css" href="static/css/board_reaction.css">
<!-- 		<script type="text/javascript" src="/js/zipcode.js"></script><script charset="UTF-8" type="text/javascript" 
		src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" 
		src="//t1.daumcdn.net/postcode/api/core/221018/1666013742754/221018.js"></script> -->
		
		<script type="text/javascript" src="/js/common.js"></script>
		<script type="text/javascript" src="common.js"></script>
		<script type="text/javascript" src="/js/board.js"></script>
		<script src="/cheditor/cheditor.js"></script>
		<link rel="shortcut icon" href="../images/ico/keyescape.ico">

<!--[if lt IE 9]> 
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!--[if lt IE 9]>
    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->

<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
	



	<!-- 달력 -->
    <div id="popCal" style="position:absolute; left:-400px; top:0px; width:0; height=0; z-index:1; VISIBILITY:hidden;">
    <iframe name="pop_frame_cal" src="" frameborder="0" scrolling="no" width="320" height="320"></iframe>
    </div>

	<!-- submit 사용시 -->
	<div style="position:absolute">
	<iframe src="" name="ifr_ok" width="0" height="0" frameborder="0" scrolling="no"></iframe>
	</div>

<script>document.title = '★머그멍 제주';</script>	﻿	
		<div id="wrap"><!-- 메인 클래스 추가 -->
			<dl id="skip">
				<dt class="hide">지슈지슈</dt>
				<dd><a href="#gnb">메인메뉴 바로가기</a></dd>
				<dd><a href="#contents">컨텐츠 바로가기</a></dd>
			</dl>

			<div class="container"><!-- 메인/서브 푸터의 위치가 다릅니다 -->
				<header>
					<div id="header">
						<div class="in_Layer">
							<a href="home.php?go=main"><h1 class="logo"></h1></a>
							<div class="mNav">
								<div class="nav nav1"><a href="home.php?go=rev.make"><img src="../images/common/mTop01.png" alt=""></a></div>
								<div class="nav nav2"><a href="#self" class="m_menu"><img src="../images/common/menu.png" alt=""></a></div>
							</div>
							
							<!-- 화면 작으면 검정블록으로 메인버튼만 띄우기 -->
							<!-- <div class="gnbIn" style="display: block !important;">
								<div class="close"><a href="#self"><img src="../images/common/close.png" alt=""></a></div>
								<ul class="gnb" id="gnb">
									<li class="first"><a href="#page1" data-menuanchor="page1"></a></li>
									<li><a href="home.php?go=main#page2" data-menuanchor="page2">KEYESCAPE</a></li>
									<li><a href="home.php?go=main#page3" data-menuanchor="page3">THEME</a></li>
									<li><a href="home.php?go=main#page4" data-menuanchor="page4">LOCATION</a></li>
									<li><a href="home.php?go=rev.make" class="active">RESERVATION</a></li>
									<li><a href="home.php?go=pds.list&amp;pds_type=1">Q &amp; A</a></li>
								</ul>
							</div> -->
						</div>
					</div><!-- end : id : header -->
				</header>
					<!-- contents  -->
					<div id="contents">
						<div class="s_contents">
							<div class="in_Layer">

﻿
<script>

function fun_zizum_select(zizum_num,i,init) {

    f = eval('document.register'); 

	f.zizum_num.value = zizum_num;

	$("#zizum_data li").removeClass("on").eq(i).addClass("on");

	f.theme_num.value='';
	f.theme_time_num.value='';

	fun_calendar_view();
	fun_theme_view();
	fun_theme_time_view();
	fun_zizum_info_view();


	if(init!='Y') {	// 처음로딩시에는 스크롤이동X
		var offset = $(".rev2").offset();	// 스크롤이동
		$('html, body').animate({scrollTop : offset.top-100}, 400);
	}
}


function fun_days_select(days,i) {

    f = eval('document.register'); 

	f.rev_days.value = days;
	$(".day_index").removeClass("on").eq(i).addClass("on");

	f.theme_num.value='';
	f.theme_time_num.value='';

	fun_theme_view();
	fun_theme_time_view();
	fun_zizum_info_view();

	var offset = $(".rev3").offset();	// 스크롤이동
	$('html, body').animate({scrollTop : offset.top-100}, 400);
}


function fun_calendar_view() {

	f = eval('document.register');

    $.ajax({
       type: "POST",
       url: "./rev.calendar.php",
       data: "zizum_num="+f.zizum_num.value+"&rev_days="+f.rev_days.value,
       success: function (data) {

			var data = $.trim(data);
			$('#calendar_data').html(data);
       }
    });
}

// 달력 월이동
function fun_calendar_move(year,month) {

	f = eval('document.register');

    $.ajax({
       type: "POST",
       url: "./rev.calendar.php",
       data: "zizum_num="+f.zizum_num.value+"&rev_days="+f.rev_days.value+"&year="+year+"&month="+month,
       success: function (data) {

			var data = $.trim(data);
			$('#calendar_data').html(data);
       }
    });
}


function fun_theme_view() {

	f = eval('document.register');

    $.ajax({
       type: "POST",
       url: "./rev.theme.php",
       data: "zizum_num="+f.zizum_num.value+"&rev_days="+f.rev_days.value,
       success: function (data) {
			var data = $.trim(data);
			$('#theme_data').html(data);
       }
    });
}

function fun_theme_select(theme_num,i) {

    f = eval('document.register'); 

	f.theme_num.value = theme_num;

	$("#theme_data li").removeClass("on").eq(i).addClass("on");

	fun_theme_time_view();

	var offset = $(".rev4").offset();	// 스크롤이동
	$('html, body').animate({scrollTop : offset.top-100}, 400);
}


function fun_theme_time_view() {

	f = eval('document.register');

    $.ajax({
       type: "POST",
       url: "./rev.theme_time.php",
       data: "zizum_num="+f.zizum_num.value+"&rev_days="+f.rev_days.value+"&theme_num="+f.theme_num.value,
       success: function (data) {
			var data = $.trim(data);
			$('#theme_time_data').html(data);
       }
    });
}

function fun_theme_time_select(theme_time_num,i) {

    f = eval('document.register'); 

	f.theme_time_num.value = theme_time_num;

	$("#theme_time_data li").removeClass("on").eq(i).addClass("on");
}


function fun_zizum_info_view() {

	f = eval('document.register');

    $.ajax({
       type: "POST",
       url: "./rev.zizum_info.php",
       data: "zizum_num="+f.zizum_num.value+"&rev_days="+f.rev_days.value,
       success: function (data) {
			var data = $.trim(data);
			$('#zizum_info_data').html(data);
       }
    });
}


function fun_submit()
{
	f = eval('document.register');

	if(f.rev_days.value=='') 		{ alert('예약일을 선택하세요');  return; }
	if(f.theme_num.value=='') 		{ alert('테마를 선택하세요');  return; }
	if(f.theme_time_num.value=='') 	{ alert('테마시간을 선택하세요');  return; }

	f.submit();
}
</script>

	<!-- 예약하기 (리셋) / 예약확인/취소 버튼 -->
	<h3 class="subTitle">RESERVATION</h3>
	<div class="menuTabs">
		<span><a href="home.php?go=rev.make" class="on">예약하기</a></span>
		<span><a href="home.php?go=rev.login">예약확인/취소</a></span>
	</div>

	<div class="stepUl">
		<div class="pc">
			<img src="../images/contents/pc_step01.png" alt="">
		</div>
		<div class="m">
			<img src="../images/contents/m_step01.png" alt="">
		</div>
	</div><!-- end : class : stepUl -->

	<div class="colorgiud"><img src="../images/ico/colorgiud.gif" alt=""></div>

	<div class="revStep">
		<dl class="rev1">
			<dt>맛집 리스트</dt>
			<dd>
				<div class="scroll revList1">
					<ul class="revList" id="zizum_data">
						<c:forEach items="${ tastystore }" var="storename">
 							 <a href="javascript:fun_zizum_select('${item.zizum_num}','${item.index}','')">
   						 		<li class="${storename.index == 0 ? 'on' : ''}" >${store.storename}</li>
  							</a>
						</c:forEach>
						
						
						<%-- <c:forEach items="${ posts }" var="post">
                            <tr>
                                <td>${ post.id }</td>
                                <td>
                                    <c:url var="postDetailPage" value="/post/detail">
                                        <c:param name="id" value="${ post.id }" />
                                    </c:url>
                                    <a href="${ postDetailPage }">${ post.title }</a>
                                    <span class="text-danger">[${ post.rcnt }]</span>
                                </td>
                                <td>${ post.author }</td>
                                <td>
                                    <fmt:formatDate value="${ post.created_time }" 
                                        pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                            </tr>
                        </c:forEach> --%>
						
						
						
						<!-- <a href="javascript:fun_zizum_select('20','0','')"><li class="on">LOG_IN 2</li></a>
						<a href="javascript:fun_zizum_select('19','1','')"><li>LOG_IN 1</li></a>
						<a href="javascript:fun_zizum_select('18','2','')"><li>메모리컴퍼니</li></a>
						<a href="javascript:fun_zizum_select('16','3','')"><li>우주라이크</li></a>
						<a href="javascript:fun_zizum_select('14','4','')"><li>강남 더오름</li></a>
						<a href="javascript:fun_zizum_select('3','5','')"><li>강남점</li></a>
						<a href="javascript:fun_zizum_select('9','6','')"><li>부산점</li></a>
						<a href="javascript:fun_zizum_select('7','7','')"><li>전주점</li></a>
						<a href="javascript:fun_zizum_select('10','8','')"><li>홍대점</li></a>
						<a href="javascript:fun_zizum_select('4','9','')"><li>혜화점</li></a>
						<a href="javascript:fun_zizum_select('5','10','')"><li>명동점</li></a>
						<a href="javascript:fun_zizum_select('15','11','')"><li>강남 더어썸</li></a>
						<a href="javascript:fun_zizum_select('17','12','')"><li>KEYESCAPE</li></a>	 -->
					</ul>
				</div>
			</dd>
		</dl>
		<dl class="rev2" id="rev2">
			<dt>날짜</dt>
			<dd>
				<div class="scroll">
					<div class="calendar">
											<div class="pc" id="calendar_data">
												<div class="calendar_yymm">
													<li class="prev"><a
														href="javascript:fun_calendar_move('2023','5')"><img
															src="../images/board/cal_arrow_prev.png"></a></li>
													<li class="yymm">2023. 6</li>
													<li class="next"><a
														href="javascript:fun_calendar_move('2023','7')"><img
															src="../images/board/cal_arrow_next.png"></a></li>
												</div>

												<table class="t_calendar">
													<colgroup>
														<col width="15%">
														<col width="14%">
														<col width="14%">
														<col width="14%">
														<col width="14%">
														<col width="14%">
														<col width="15%">
													</colgroup>
													<tbody>
														<tr>
															<th style="color: #ff3333">일</th>
															<th>월</th>
															<th>화</th>
															<th>수</th>
															<th>목</th>
															<th>금</th>
															<th style="color: #3333ff">토</th>
														</tr>
														<tr height="30">
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td>&nbsp;</td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">1</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">2</font></td>
															<td class="day_index calendar_sat " title=""><font
																style="color: #bbb">3</font></td>
														</tr>
														<tr height="30">
															<td class="day_index calendar_sun " title=""><font
																style="color: #bbb">4</font></td>

															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">5</font></td>
															<td class="day_index calendar_sun on" title="현충일"><a
																href="javascript:fun_days_select('2023-06-06','5')"><u>6</u></a></td>
															<td class="day_index calendar_day " title=""><a
																href="javascript:fun_days_select('2023-06-07','6')">7</a></td>
															<td class="day_index calendar_day " title=""><a
																href="javascript:fun_days_select('2023-06-08','7')">8</a></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">9</font></td>
															<td class="day_index calendar_sat " title=""><font
																style="color: #bbb">10</font></td>
														</tr>
														<tr height="30">
															<td class="day_index calendar_sun " title=""><font
																style="color: #bbb">11</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">12</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">13</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">14</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">15</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">16</font></td>
															<td class="day_index calendar_sat " title=""><font
																style="color: #bbb">17</font></td>
														</tr>
														<tr height="30">
															<td class="day_index calendar_sun " title=""><font
																style="color: #bbb">18</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">19</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">20</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">21</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">22</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">23</font></td>
															<td class="day_index calendar_sat " title=""><font
																style="color: #bbb">24</font></td>
														</tr>
														<tr height="30">
															<td class="day_index calendar_sun " title=""><font
																style="color: #bbb">25</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">26</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">27</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">28</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">29</font></td>
															<td class="day_index calendar_day " title=""><font
																style="color: #bbb">30</font></td>
															<td>&nbsp;</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
				</div>
			</dd>
		</dl>
		<dl class="rev3">
			<dt>인원</dt>
			<dd>
				<div class="scroll revList2">
					<ul class="revList" id="theme_data"><a href="javascript:fun_theme_select('61','0')"><li>BACK TO THE SCENE+</li></a></ul>
				</div>
			</dd>
		</dl>
		<dl class="rev4">
			<dt class="last">시간</dt>
			<dd class="last">
				<div class="scroll revList3">
					<ul class="revList" id="theme_time_data"></ul>
				</div>
			</dd>
		</dl>
	</div>


	<!-- 지점정보 및 이벤트 -->
	<div class="bottom" id="zizum_info_data"><div class="notice">
			<div class="inTitle">NOTICE</div>
			<dl>
				<dt>매장번호</dt>
				<dd>01094446082&nbsp;</dd>
			</dl>
			<dl>
				<dt>이용금액 </dt>
				<dd><font color="red"><b>★ 예약 오픈 시간은 10시 00분 입니다. 예약자명과 동일한 성함으로 입금해주셔야 예악이 확정됩니다.</b></font>
<br> 
<br><font color="red"><b>★ 다른 고객님들을 위해, 동일 테마에 대한 예약건은 1회로 제한됩니다. 추가 예약시 모두 취소 및 이용이 제한 되니, 주의 바랍니다.</b></font>
<br><font color="red">★ 다른 고객님들을 위해, 매크로를 이용한 예약을 삼가해주세요.</font>
<br><font color="red">★ 예약시 무통장 입금만 가능합니다. ★★ 타명의 계좌 환불 불가 ★★</font>
<br>
<br><font color="red">★예약완료시 예약확인 문자가 발송이 됩니다. (비정상 예약 또는 중복예약시 미발송 됩니다)</font>
<br><font color="red">예약 후 예약완료 문자를 수신하지 못한 경우, 사이트를 통한 재예약 부탁드립니다.</font>
<br>
<br>-영업시간 외 무통장 예약건은 다음날 영업시간 중 순차 발송됩니다.&nbsp;</dd>
			</dl>
			<dl>
				<dt>계좌번호 </dt>
				<dd>국민은행/키이스케이프로그인2/453801-01-164931&nbsp;</dd>
			</dl>
			<dl>
				<dt>매장주소</dt>
				<dd>서울특별시 강남구 강남대로98길 16, 5층(역삼동)&nbsp;</dd>
			</dl>
			<dl>
				<dt>오시는길</dt>
				<dd>&nbsp;</dd>
			</dl>
			<dl>
				<dt>지점소개</dt>
				<dd>★테마 시작 시간 15분이 지나면 이용이 불가하며 환불이 불가합니다.★
<br><font color="red">※별도의 주차장이 준비되어 있지 않습니다.</font>
<br>    대중교통 이용 바랍니다.
<br>    (건물주차장은 지정주차로 인하여 이용이 불가합니다.)&nbsp;</dd>
			</dl>
		</div>
		<div class="event">
			<div class="inTitle">EVENT</div>
			<div class="in">
			</div>
		</div></div><!-- end : class : bottom -->


   	<form action="home.php" method="post" name="register">
	<div class="btnArea">
		<a href="javascript:fun_submit()" class="b">예약하기</a>
		<a href="javascript:history.go(-1)" class="w">취소</a>
	</div>
		
		<input type="hidden" name="zizum_num" value="20">
		<input type="hidden" name="rev_days" value="2023-06-06">
		<input type="hidden" name="theme_num" value="">
		<input type="hidden" name="theme_time_num" value="">

		<input type="hidden" name="go" value="rev.make2">
	</form>


<script>

$(function(){
	fun_zizum_select('20','0','Y')
});

</script>﻿							</div><!-- end : class : in_Layer -->
						</div><!-- end : id : s_contents -->
					</div><!-- end : id : contents -->
								<footer>
									<div id="footer" class="footer">
										<div class="in_Layer">
											<p class="addr">
												상호 : 키이스케이프(주)<span class="none">|</span>
																						사업자등록번호 : 121-86-42811<span class="none">|</span>
												통신판매신고번호 : 제 2018-서울강남-02342호 <br>
												서울특별시 강남구 강남대로100길 13 스타빌딩 5층<span class="none">|</span>
												Tel : 지점 : RESERVATION 지점선택 H.P : 본사 : 010-2552-6082<span class="none">|</span>
												<span class="ari">EMAIL : keyescapecop@naver.com</span>
											</p>
											<p class="copy">Copyright © KEYESCAPE All rights reserved.</p>
											<div class="fBtn"><a href="javascript:fun_agree_a()">개인정보보호정책</a></div>
										</div>
									</div><!-- end : id : footer -->
								</footer>


			</div><!-- end : class : container -->
		</div><!-- end : id : wrap -->
	
</body>
   </body>
</html>