<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
	<!-- #Contents -->
	<div id="Contents">
		<!-- title_box -->
		<div class="title_box">
			<h1>주문완료</h1>
			<ul class="step_list">
				<li><span class="step_num tx_num">1</span> 장바구니</li>
				<li><span class="step_num tx_num">2</span> 주문/결제</li>
				<li class="last on"><span class="hide">현재단계</span><span
					class="step_num tx_num">3</span> 주문완료</li>
				<!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
			</ul>
		</div>
		<!--// title_box -->

		<div class="order_end_box">
			<!-- 2017-01-20 수정 : div 추가 -->

			<!-- 무통장 입금 결제 시 -->
			<div class="order_title">
				<p>
					주문접수가 <span>완료</span>되었습니다.
				</p>
				<p class="tx_sub_cont">입금이 완료되면 주문이 정상적으로 처리됩니다.</p>
				<span class="tx_order_info">주문번호 : 
					<strong class="tx_num"><c:out value="${order.orderId}"/></strong>
				</span>
			</div>
			<!--// 무통장 입금 결제 시 -->


			<div class="inner_box">
				<!-- 2017-01-20 수정 : div 추가 -->

				<!-- 2017-01-20 추가 : 무통장입금 결제 선택 시 -->


				<!-- 무통장 입금 결제 시 -->

				<!--// 무통장 입금 결제 시 -->

				<!--// 2017-01-20 추가 : 무통장입금 결제 선택 시 -->
				<!-- 결제정보 -->
				<h2 class="sub-title2">결제정보</h2>
				<table class="tbl_data_view">
					<caption>결제정보 안내</caption>
					<colgroup>
						<col style="width: 170px">
						<col style="width: *">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">총상품금액</th>
							<!-- 2017-01-20 수정 : 총상품금액, 총배송비, 총 할인금액 추가 -->
							<td><span class="tx_num"><fmt:formatNumber value="${order.totalPrice }" pattern="#,###" /></span>원</td>
						</tr>
						<tr>
							<th scope="row">총할인금액</th>
							<td><span class="tx_price">-<span class="tx_num">0</span>원
							</span></td>
						</tr>
						<tr>
							<th scope="row">총배송비</th>
							<td><span class="tx_num">0</span>원</td>
						</tr>



						<!-- 기타 보조결제수단 -->







						<!--// 기타 보조결제수단 -->

						<!-- 2017-01-20 수정 : 임직원추가할인 및 The CJ 카드 추가 할인 영역 추가 -->


						<!--// 2017-01-20 수정 : 임직원추가할인 및 The CJ 카드 추가 할인 영역 추가 -->

						<!-- 2017-01-20 수정 : 최종 결제금액 영역 추가  -->
						<tr class="last_tot_price">
							<th scope="row">최종 결제금액</th>
							<td><span class="tx_price"><span class="tx_num"><fmt:formatNumber value="${order.totalPrice }" pattern="#,###"/></span>원</span>
							</td>
						</tr>
						<!--// 2017-01-20 수정 : 최종 결제금액 영역 추가 -->
					</tbody>
				</table>
				<!--// 결제정보 -->
			</div>
			<div class="inner_box">

				<!-- 배송정보 -->
				<h2 class="sub-title2">배송정보</h2>
				<table class="tbl_data_view type2">
					<!-- 2017-01-20 수정 : type2 클래스 추가 -->
					<caption>배송정보 안내</caption>
					<colgroup>
						<col style="width: 170px">
						<col style="width: *">
					</colgroup>
					<tbody>



						<tr>
							<th scope="row">받는분</th>
							<td><c:out value="${order.receiverName}"/></td>
						</tr>
						<tr>
							<th scope="row">연락처1</th>
							<td><c:out value="${order.receiverTel}"/></td>
						</tr>

						<tr>
							<th scope="row">주소</th>
							<td>
								<p>도로명 주소 : <c:out value="${order.receiverAddrRoad}"/></p>
								<p class="colorGrey">지번주소 : <c:out value="${order.receiverAddrJibun}"/></p>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<ul class="info_dot_list type2 mgT20 mgL100">
				<!--  2019-12-13 class 변경 -->
				<li>주문취소는 [결제완료] 상태까지 가능합니다. [배송준비중], [배송중]에는 상품 수령 후 반품요청
					부탁드립니다.</li>
				<!--  2019-12-13 취소문구 추가 -->
			</ul>
			<div class="order_btn_area">
				<button class="btnGreenW"
					onclick="location.href='/home'">쇼핑계속</button>
				<button class="btnGreen"
					onclick="location.href='/mypage/order-lists'">주문내역조회</button>
			</div>


			<div id="curation_wrap_a008" class="cura_pord crtBtm" style="">
				<div class="curation_area_a008_lead"></div>
				<div class="loading_box" id="loadingBox_a008" style="display: none;">
					<h4 class="tit_h4">이런 상품 놓치지 않으셨나요?</h4>
					<span class="icon"><img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
						alt="로딩중"></span>
					<p class="txt">고객님을 위한 상품 추천중이에요</p>
				</div>
				
			</div>
		</div>
	</div>
	<!-- //#Contents -->
</div>
<%@ include file="../includes/footer.jsp"%>
