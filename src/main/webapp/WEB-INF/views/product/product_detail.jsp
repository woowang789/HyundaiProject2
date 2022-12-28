<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
	<div id="Contents">
		<!-- 상단 카테고리 history -->

		<div class="prd_detail_box renew">
			<div class="left_area">
				<div class="prd_img">
					<span class="thumb_flag best">베스트</span> <img id="mainImg"
						src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014453508ko.jpg?l=ko"
						alt="상품명 이미지" onerror="common.errorImg(this);" /> <input
						type="hidden" id="mainImgSize" value="550" />

					<!-- 20200526 상품개선 : 추가 / 발색비교 옵션 선택 시 옵션명 변경 및 관련 썸네일로 변경 -->
					<div class="prd-option-name">
						<!-- 노출 시 is-active class 추가 -->
						<span class="txt" id="goodstxt">03. 얼모스트 핑크</span>
					</div>
				</div>

				<!-- 202005 상품개선 : 위치 변경 및 마크업 변경 -->
				<!-- 고객 만족도 및 공유, 재고확인 -->
				<div class="prd_social_info">
					<!-- 평점 및 리뷰 건수 추가 -->

					<!-- 위치 변경 <p><a href="#" class="btn_off_store" data-rel="layer" data-target="offlineStore">올리브영 오프라인 매장 재고확인</a></p>-->
				</div>
				<!--// 고객 만족도 및 공유, 재고확인 -->
			</div>
			<div class="right_area">
				<div class="prd_info">
					<p class="prd_brand">
						<a href="#" id="moveBrandShop" class="pd_arrow_link">브로앤팁스</a>
					</p>

					<p class="prd_name">브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)</p>

					<!-- 202005 상품개선 : 추가 -->
					<!-- 					<p class="prd-txt1">1회 최대 구매수량 5개 입니다.</p> -->

					<div class="price">
						<span class="price-1"> <strike>26,000</strike> <span>원</span>
						</span> <span class="price-2"> <strong>32,000</strong> <span>원</span>
						</span>
					</div>

					<p class="prd_flag">
						<span class="icon_flag delivery">오늘드림</span>
					</p>

					<!-- 프로 모션 쿠폰영역-->

					<!-- 프로 모션 쿠폰영역-->

					<!-- EP 쿠폰영역-->

					<!-- EP 쿠폰영역-->

					<div class="prd_more_info">
						<div class="row">
							<ul class="bl_list">
								<li><span>일반배송</span>
									<div>
										2,500원 ( 20,000 원 이상 무료배송 ) <br /> <em>올리브영 배송 </em> <em>평균
											9일 이내 배송</em>

										<!-- 												<b>무료배송</b>  -->

										<!-- 														 <br><b>업체배송</b> -->

										<!-- 															<em><b>합배송 불가</b></em> -->

										<!-- 															<em><b>합배송 불가</b></em> -->
									</div></li>

								<!-- 202005 상품개선 : 오늘드림 빠름배송 -->
								<li class="liQuickAI" style="display: none"><span
									class="tx_tit"> 오늘드림 빠름 배송 AI 예측 <!-- 202005 상품개선 : 자세히 보기 위치 변경 -->
										<a
										href="javascript:goods.detail.todayDelivery.openQuickDeliAI();"
										class="ico_infoMore">자세히 보기</a>
								</span>

									<p class="tx_addre">
										<span>┖ </span><span class="quickUsrAddr">서울특별시 도봉구
											도봉로112길</span> 기준
										<!-- 202005 상품개선 : tx_cont 위치 변경 -->
										<span class="tx_cont"> <span class="span_dlvTitlNm">1시간
												내</span> <span class="span_maxDeliPer">63%</span>
										</span>
									</p></li>
							</ul>
						</div>
					</div>

					<input type="hidden" id="goodsItemYn" value="Y" />

					<div class="prd_option_box optionType1 type2" id="buy_option_box">
						<a href="javascript:;" class="sel_option" id="buyOpt"> 상품을
							선택해주세요 </a>
						<ul class="sel_option_list new" id="option_list"></ul>
					</div>
					<div class="option_add_area pkg_goods_n"></div>

					<div class="prd_total_price">
						<span class="tx_tit">상품금액 합계</span> <input type="hidden"
							id="totalCnt" value="0" name="totalCnt" /> <input type="hidden"
							id="totalPrc" value="0" name="totalPrc" /> <span class="tx_cont"><span
							class="tx_num" id="totalPrcTxt">0</span>원</span>
					</div>

					<!-- 20191213 s -->
					<!-- today_dvs s -->
					<div class="today_dv">
						<!-- //today_dvChk e -->

						<div class="today_dvArea">
							<div class="today_dvArea_inner">
								<a
									href="javascript:common.zipcodequick.pop.deliveryRegistFormOnlyRegist();"
									class="btn_noDv" style="display: none">+ 배송지 추가</a> <a href="#"
									class="btn_todayDV">
									<dl></dl>
								</a>
								<div class="todayDV_list">
									<ul></ul>
								</div>
								<!-- //todayDV_list e -->
							</div>
							<!-- //today_dvArea_inner e -->
						</div>
						<!-- //today_dvArea e -->

						<div class="today_dvChk" id="pikcupOnlyYn" style="display: none">
							<input type="checkbox" id="pickupDirectYn" name="pickupDirectYn"
								value="Y" data-attr="상품상세^매장픽업여부^매장픽업신청" /><label
								for="pickupDirectYn">매장에서 픽업 하시겠어요?</label>
							<dl>
								<dd>
									<a
										href="javascript:goods.detail.todayDelivery.openQuickPopMidle('pickup');"
										class="ico_info_view">매장픽업 안내 레이어열기</a>
								</dd>
							</dl>
							<div class="input_nudge" id="storePickNudge"
								style="display: none">
								<div class="nudge_txt">배송비 허들없는 픽업을 이용해 보세요!</div>
							</div>
						</div>
					</div>
					<!-- //today_dv e -->

					<!-- 20191213 e -->

					<div class="prd_btn_area new-style type1">
						<button class="btnBasket dupItem goods_cart"
							onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.cart');"
							data-attr="상품상세^주문유형^장바구니">장바구니</button>
						<!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->

						<button class="btnBuy goods_buy" id="cartBtn"
							onclick="javascript:common.popLayer.todayDelivery.openTodayDeliveryNotice('goodsdetail.order');"
							data-attr="상품상세^주문유형^바로구매">바로구매</button>

						<button class="btnSoldout dupItem goods_cart"
							style="display: none" onclick="javascript:;">일시품절</button>
						<button class="goods_buy btnReStock" style="display: none"
							onclick="javascript:;"
							data-attr="상품상세^재입고알림신청^브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)_클릭"
							data-trk="/Cat100000100010008_Small">재입고 알림신청</button>
						<button class="btnZzim goods_wish"
							data-ref-goodsno="A000000144535"
							data-attr="상품상세^상품좋아요^브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)_0">
							찜하기전</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 202005 상품상세 개선 : 증정품 마크업 수정 -->

		<!-- 증정품 오늘드림S  -->

		<!-- // 202005 상품상세 개선 : 증정품 마크업 수정 -->

		<!-- 큐레이션 2차 S -->

		<div class="curation_area_a002_lead"></div>
		<div id="recobell_area_a002" class="cura_pord">
			<h4 class="tit_h4">이런 토너/로션/올인원 상품은 어떠세요?</h4>
			<div class="loading_box">
				<span class="icon"><img
					src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
					alt="로딩중" /></span>
				<p class="txt">고객님을 위한 상품 추천중이에요</p>
			</div>
		</div>

		<!-- 큐레이션 2차 E -->

		<ul class="prd_detail_tab" id="tabList">
			<li class="on" id="productInfo"><a href="javascript:;"
				class="goods_detailinfo" data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a>
			</li>
			<li id="buyInfo"><a href="javascript:;" class="goods_buyinfo"
				data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
			<li id="reviewInfo"><a href="javascript:;"
				class="goods_reputation" data-attr="상품상세^상품상세_SortingTab^리뷰">리뷰<span>(1,888)</span></a>
			</li>
			<li id="qnaInfo"></li>
		</ul>

		<div class="tabConts prd_detail_cont show">
			<div class="detail_area">
				<!--
          * [3492841] 상품상세 'MD공지배너' 노출 우선순위 변경 요청
          - 노출 순서(AS IS) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리 > 협력사 > 온라인 브랜드 > 상품
          - 노출 순서(TO BE) : 전체 > 배송유형 > 표준 카테고리 > 전시 카테고리(남성>더모>기타 카테고리) > 협력사 > 온라인 브랜드 > 상품
          - 1 : 전체
          - 2 : 배송유형
          - 3 : 표준분류
          - 4 : 전시카테고리
          - 5 : 협력사
          - 6 : 온라인브랜드
          - 7 : 상품
          - 8 : 더모 (전시구분 DISP_SEQ (8) 삭제)
          1. 전시 카테고리 : 남성 카테고리 카운팅 - 10000010007
          2. 전시 카테고리 : 더모 카테고리 카운팅 - 10000010008
        -->

				<!-- 전체, 배송유형, 표준분류 카테고리 노출 -->

				<!-- 전시카테고리 남성 카테고리 노출 -->

				<!-- 전시카테고리 더모 카테고리 노출 -->

				<!-- 전시카테고리 그외 카테고리 노출 -->

				<a
					href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102360106&amp;trackingCd=Banner"
					data-attr="상품상세^MD공지배너^100000100010008,100000100010009,100000100010010_클릭"
					data-trk="/Cat100000100010008_Small"
					onclick="javascript:common.wlog('mdBanner');"> <img
					src="https://image.oliveyoung.co.kr/uploads/images/display/9000003/19/8993007353449249222.jpg"
					alt="100000100010008,100000100010009,100000100010010" />
				</a>

				<!-- 협력사, 온라인브랜드, 상품 카테고리 노출 -->

				<div class="contEditor">
					<script>
						$(window).load(function() {
							// 2017-02-18 : txs : 상품 상세 레이아웃 크기 재조정
							goods.detail.tagHandler.inittGoodsDetailObjects();
							$("#tempHtml").html("");
						});
					</script>

					<img alt=""
						src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/C15399/image/20221117143807/qc15_20221117143807.jpg" />
				</div>

				<div style="text-align: center; padding: 20px 0px 0px 0px">
					<p
						style="display: inline-block; font-size: 14px; border: 1px solid #ddd; padding: 10px 40px 10px 40px; text-align: center;">
						본 상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
				</div>
			</div>

			<p class="tit_cate_best mgT40 dispCatBest" style="display: none">
				스킨케어 카테고리 베스트 상품</p>
			<ul class="cate_prd_list dispCatBest" id="recommGoodsList"
				style="display: none"></ul>

			<div class="curation_area_a029_lead"></div>
			<div id="recobell_area_a029" class="cura_pord curation_area_029 btm"
				style="display: none">
				<h4 class="tit_h4">함께 보면 좋은 상품이에요</h4>
				<div class="loading_box">
					<span class="icon"><img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
						alt="로딩중" /></span>
					<p class="txt">고객님을 위한 상품 추천중이에요</p>
				</div>
			</div>
			<!-- 				<div class="curation_area_a003_lead"></div> -->
			<!-- 				<div id="recobell_area_a003" class="cura_pord curation_area_003 btm" style="display:none;"> -->
			<!-- 					<h4 class="tit_h4">함께 보면 좋은 상품이에요</h4> -->
			<!-- 					<div class="loading_box"> -->

			<!-- 						<p class="txt">고객님을 위한 상품 추천중이에요</p> -->
			<!-- 					</div> -->
			<!-- 				</div> -->

			<div id="relPlanShop_area" class="related_plan"></div>
		</div>

		<div class="tabConts prd_detail_cont">
			<h3 class="detail_tit mgT40">배송안내</h3>
			<dl class="detail_info_list" id="dlexAjaxInfo">
				<dt>배송비/배송가능일</dt>
				<dd>
					<div>
						<p>
							<strong>[일반 배송]</strong>
						</p>
						<p>
							<strong>배송지역 : </strong>전국
						</p>
						<p>
							<strong>배송비 : </strong>

							<!-- 그외 표기 -->
							<span>2,500원</span>
						</p>

						<p>
							올리브영 배송 상품의 총 결제금액 <span>20,000</span>원 이상일 경우 <span>무료배송</span>
							됩니다.
						</p>

						<p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>

						<p>
							<strong>배송가능일 : </strong><span>9</span>일
						</p>
						<p>배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및 공휴일은
							기간 계산시 제외하며 현금 주문일 경우 입금일 기준 입니다.</p>
						<p>예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 예약일 보다 일찍 배송될 수
							있습니다.</p>
					</div>
					<br />
					<div>
						<p>
							<strong>[오늘드림 배송]</strong>
						</p>
						<p>
							<strong>배송지역 : </strong>전국(일부지역 제외)
						</p>
						<p>
							<strong>배송비 : </strong><strong>빠름</strong>&nbsp;<span>5,000원</span>,
							<strong>3!4!/미드나잇</strong>&nbsp;<span>2,500원</span>
						</p>
						<p>
							오늘드림 배송 상품의 총 결제금액&nbsp;<span>30,000</span>원 이상일 경우&nbsp;<span>무료배송</span>&nbsp;됩니다.
						</p>
						<p>오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.</p>
						<div class="crlfix">
							<p style="float: left">
								<strong>배송가능시간 : </strong>
							</p>
							<div style="margin-left: 87px">
								<p>
									<strong>빠름/미드나잇 </strong>당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
								</p>
								<p>
									<strong>3!4! </strong>당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
								</p>
							</div>
						</div>
					</div>
				</dd>
			</dl>
		</div>
		<!--// 구매정보 컨텐츠 영역 -->

		<div class="tabConts prd_detail_cont" id="gdasContentsArea">
			<div class="review_wrap renew review-reward-notice">
				<!-- ## 리뷰 고도화 1차 : 영역 부모 div 추가 ## -->
			</div>
		</div>
	</div>
</div>

<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ("WebSocket" in window) {
		(function() {
			function refreshCSS() {
				var sheets = [].slice.call(document
						.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if ((elem.href && typeof rel != "string")
							|| rel.length == 0
							|| rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/,
								"");
						elem.href = url + (url.indexOf("?") >= 0 ? "&" : "?")
								+ "_cacheOverride=" + new Date().valueOf();
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === "http:" ? "ws://"
					: "wss://";
			var address = protocol + window.location.host
					+ window.location.pathname + "/ws";
			var socket = new WebSocket(address);
			socket.onmessage = function(msg) {
				if (msg.data == "reload")
					window.location.reload();
				else if (msg.data == "refreshcss")
					refreshCSS();
			};
			if (sessionStorage
					&& !sessionStorage
							.getItem("IsThisFirstTime_Log_From_LiveServer")) {
				console.log("Live reload enabled.");
				sessionStorage.setItem("IsThisFirstTime_Log_From_LiveServer",
						true);
			}
		})();
	} else {
		console
				.error("Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.");
	}
	// ]]>
</script>

<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ("WebSocket" in window) {
		(function() {
			function refreshCSS() {
				var sheets = [].slice.call(document
						.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if ((elem.href && typeof rel != "string")
							|| rel.length == 0
							|| rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/,
								"");
						elem.href = url + (url.indexOf("?") >= 0 ? "&" : "?")
								+ "_cacheOverride=" + new Date().valueOf();
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === "http:" ? "ws://"
					: "wss://";
			var address = protocol + window.location.host
					+ window.location.pathname + "/ws";
			var socket = new WebSocket(address);
			socket.onmessage = function(msg) {
				if (msg.data == "reload")
					window.location.reload();
				else if (msg.data == "refreshcss")
					refreshCSS();
			};
			if (sessionStorage
					&& !sessionStorage
							.getItem("IsThisFirstTime_Log_From_LiveServer")) {
				console.log("Live reload enabled.");
				sessionStorage.setItem("IsThisFirstTime_Log_From_LiveServer",
						true);
			}
		})();
	} else {
		console
				.error("Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.");
	}
	// ]]>
</script>

<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ("WebSocket" in window) {
		(function() {
			function refreshCSS() {
				var sheets = [].slice.call(document
						.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if ((elem.href && typeof rel != "string")
							|| rel.length == 0
							|| rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/,
								"");
						elem.href = url + (url.indexOf("?") >= 0 ? "&" : "?")
								+ "_cacheOverride=" + new Date().valueOf();
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === "http:" ? "ws://"
					: "wss://";
			var address = protocol + window.location.host
					+ window.location.pathname + "/ws";
			var socket = new WebSocket(address);
			socket.onmessage = function(msg) {
				if (msg.data == "reload")
					window.location.reload();
				else if (msg.data == "refreshcss")
					refreshCSS();
			};
			if (sessionStorage
					&& !sessionStorage
							.getItem("IsThisFirstTime_Log_From_LiveServer")) {
				console.log("Live reload enabled.");
				sessionStorage.setItem("IsThisFirstTime_Log_From_LiveServer",
						true);
			}
		})();
	} else {
		console
				.error("Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.");
	}
	// ]]>
</script>
<div class="popup-contents"
	style="top: 70%; width: 534px; margin: -365px 0 0 -268px;">
	<div class="pop-conts">
		<h1 class="ptit">선택완료</h1>

		<div class="popCont contPd01">
			<p class="txt_onbag">
			<p class="txt_onbag">장바구니에 추가되었습니다.</p>
			</p>
		</div>
		<!-- popCont -->

		<div class="area2sButton pdTz">
			<button class="btnlG01 pdzero w130"
				onclick="fnLayerSet('basketOption', 'close');common.wlog('goods_cart_curation_popup_continue');">
				<span>쇼핑계속하기</span>
			</button>
			<button class="btnG01 pdzero w130"
				onclick="location.href='/cart'">
				<span>장바구니 확인</span>
			</button>
		</div>





		<button type="button" class="ButtonClose"
			onclick="fnLayerSet('basketOption', 'close');common.wlog('goods_cart_curation_popup_close');">팝업창
			닫기</button>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
