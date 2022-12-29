<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
  <div id="Contents">
    <div class="mypage-head rate_04">
      <h1 class="tit">
        <a href="/mypage">마이페이지</a>
      </h1>
      <div class="grd-box">
        <div class="info_user clrfix">
          <div class="thum">
            <span class="bg"></span>
            <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg" alt="" onerror="common.errorImg(this);">
          </div>
          <p class="txt">
            <strong class="name">이승규</strong>님 반갑습니다.
          </p>
        </div>
      </div>
    </div>
    <div class="mypage-ix">
      <div class="mypage-lnb">
        <ul>
          <li>
            <h2>마이 쇼핑</h2>
            <ul>
              <li class="subMenu on">
                <a href="/mypage/order-lists">주문 조회</a>
              <li class="subMenu">
                <a href="/mypage">좋아요</a>
              </li>
          </li>
          <li class="subMenu">
            <a href="/cart">장바구니</a>
          </li>
          <li class="subMenu">
            <a href="/mypage/reviews-write">리뷰</a>
          </li>
        </ul>
        </li>
        <li>
          <h2>마이 정보</h2>
          <ul>
            <li class="subMenu">
              <a href="info-change" mymenuid="0501" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/getMktReceiptInfo.do" data-attr="마이페이지^메뉴^회원정보 수정">회원정보 수정</a>
            </li>
            <li class="subMenu">
              <a href="info-remove" mymenuid="0504" data-ref-linkurl="https://www.oliveyoung.co.kr/store/mypage/custInfoOut.do" data-attr="마이페이지^메뉴^회원탈퇴">회원탈퇴</a>
            </li>
          </ul>
        </li>
        </ul>
      </div>
      <!-- //마이페이지 SUB 메뉴 -->
      <!-- //마이페이지 SUB -->
      <div class="mypage-conts">
        <script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=20221223001"></script>
        <script type="text/javascript">
									$(document).ready(function() {
										mypage.wish.init();
									});
								</script>
        <script>
									$(window)
											.ready(
													function() {
														mypage.side.init();

														if (_isLogin) {
															var gdasPossibleTotCnt = sessionStorage
																	.getItem("gdasPossibleTotCnt");
															// if( common.isEmpty(gdasPossibleTotCnt) ) {
															common.Ajax
																	.sendJSONRequest(
																			"POST",
																			_baseUrl
																					+ "mypage/getGdasPossibleTotCnt.do",
																			null,
																			function(
																					res) {
																				if (res.result != null
																						&& res.result > 0) {
																					sessionStorage
																							.setItem(
																									"gdasPossibleTotCnt",
																									res.result
																											.numberFormat());
																				} else {
																					sessionStorage
																							.setItem(
																									"gdasPossibleTotCnt",
																									"0");
																				}
																				$(
																						"#_gdasPossibleTotCnt")
																						.text(
																								sessionStorage
																										.getItem("gdasPossibleTotCnt"));

																			});
															//} else {
															//  $("#_gdasPossibleTotCnt").text( gdasPossibleTotCnt );
															//}

															// [3283136] 마이페이지 PC GUI 개편 및 장바구니 버튼 추가 요청의 件(CHY)
															// 신규 리뷰 작성 여부의 따라 N 아이콘 표출
															var lastCheckDtime = localStorage
																	.getItem("lastCheckDtime");
															common.Ajax
																	.sendJSONRequest(
																			"POST",
																			_baseUrl
																					+ "mypage/getNewGdasPossibleCnt.do",
																			{
																				"lastCheckDtime" : lastCheckDtime
																			},
																			function(
																					res) {
																				if (res.result > 0) {
																					$(
																							"#_newGdasPossible")
																							.show();
																				} else {
																					$(
																							"#_newGdasPossible")
																							.hide();
																				}
																			});
														}

													});
								</script>