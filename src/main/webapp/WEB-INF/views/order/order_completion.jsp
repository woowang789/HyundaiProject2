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
				<div id="goods_curation_a008">
					<h4 class="tit_h4">
						<span id="recomm_title_a008">최근 본 상품</span>
						<button class="moreBtn" id="crt_more_a008">
							<span data-attr="세일^주목할만한상품_더보기^더보기">더보기</span>
						</button>
					</h4>
					<div class="inner_cont" role="toolbar">
						<ul
							class="curation_basket slide_list slick_slider slick-initialized slick-slider slick-dotted"
							id="curation_ulList_a008">
							<button type="button" data-role="none"
								class="slick-prev slick-arrow" aria-label="Previous"
								role="button" style="display: block;">Previous</button>

							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track"
									style="opacity: 1; width: 5832px; transform: translate3d(-972px, 0px, 0px);"
									role="listbox">
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="-3" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000137679"
											data-egrank="10" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매^10"
											data-trk="/Ordercom_Curation"
											data-impression="A000000137679^세일_주목할만한상품^10"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013767909ko.jpg?l=ko"
												alt="닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매^10"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000137679&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;10&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000137679" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000137679" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000137679&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=10"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000137679" data-egrank="10"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매^10"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000137679&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;10&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매</dt>
													<dd class="price">
														<del>28,000원</del>
														<strong>19,900원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="-2" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000145728"
											data-egrank="11" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)^11"
											data-trk="/Ordercom_Curation"
											data-impression="A000000145728^세일_주목할만한상품^11"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014572815ko.jpg?l=ko"
												alt="[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)^11"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000145728&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;11&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000145728" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000145728" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145728&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=11"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000145728" data-egrank="11"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)^11"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000145728&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;11&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획
														(본품150ml+75ml 추가 증정)</dt>
													<dd class="price">
														<del>20,000원</del>
														<strong>16,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="-1" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000170033"
											data-egrank="12" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)^12"
											data-trk="/Ordercom_Curation"
											data-impression="A000000170033^세일_주목할만한상품^12"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017003301ko.jpg?l=ko"
												alt="닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)^12"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000170033&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;12&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000170033" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000170033" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170033&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=12"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000170033" data-egrank="12"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)^12"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000170033&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;12&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)</dt>
													<dd class="price">
														<del>29,000원</del>
														<strong>25,270원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-current slick-active"
										data-slick-index="0" aria-hidden="false" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide00">
										<div class="thum" data-ref-goodsno="A000000135930"
											data-egrank="1" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)^1"
											data-trk="/Ordercom_Curation"
											data-impression="A000000135930^세일_주목할만한상품^1"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013593011ko.jpg?l=ko"
												alt="닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)^1"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000135930&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;1&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000135930" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000135930" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000135930&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=1"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000135930" data-egrank="1"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)^1"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="0"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000135930&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;1&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)</dt>
													<dd class="price">
														<del>31,000원</del>
														<strong>24,800원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-active"
										data-slick-index="1" aria-hidden="false" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide01">
										<div class="thum" data-ref-goodsno="A000000175402"
											data-egrank="2" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)^2"
											data-trk="/Ordercom_Curation"
											data-impression="A000000175402^세일_주목할만한상품^2"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017540206ko.jpg?l=ko"
												alt="[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)^2"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000175402&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;2&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000175402" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000175402" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175402&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=2"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000175402" data-egrank="2"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)^2"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="0"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175402&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;2&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[어워즈 한정 1+1]
														닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml
														어워즈&nbsp;한정&nbsp;기획(1+1)</dt>
													<dd class="price">
														<del>29,000원</del>
														<strong>27,500원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-active"
										data-slick-index="2" aria-hidden="false" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide02">
										<div class="thum" data-ref-goodsno="A000000175398"
											data-egrank="3" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)^3"
											data-trk="/Ordercom_Curation"
											data-impression="A000000175398^세일_주목할만한상품^3"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017539802ko.jpg?l=ko"
												alt="[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)^3"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000175398&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;3&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000175398" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="0">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000175398" tabindex="0">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175398&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=3"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000175398" data-egrank="3"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)^3"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="0"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175398&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;3&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[어워즈 한정 1+1]닥터지 브라이트닝 필링젤
														어워즈&nbsp;한정&nbsp;기획(1+1)</dt>
													<dd class="price">
														<del>21,000원</del>
														<strong>19,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="3" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide03">
										<div class="thum" data-ref-goodsno="A000000145578"
											data-egrank="4" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 포 맨 올인원 플루이드 (본품150ml+30ml 추가 증정)^4"
											data-trk="/Ordercom_Curation"
											data-impression="A000000145578^세일_주목할만한상품^4"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014557811ko.jpg?l=ko"
												alt="닥터지 레드 블레미쉬 포 맨 올인원 플루이드 (본품150ml+30ml 추가 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 포 맨 올인원 플루이드 (본품150ml+30ml 추가 증정)^4"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000145578&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;4&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000145578" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000145578" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145578&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=4"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000145578" data-egrank="4"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 포 맨 올인원 플루이드 (본품150ml+30ml 추가 증정)^4"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000145578&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;4&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드 블레미쉬 포 맨 올인원 플루이드 (본품150ml+30ml
														추가 증정)</dt>
													<dd class="price">
														<del>32,000원</del>
														<strong>19,900원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="4" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide04">
										<div class="thum" data-ref-goodsno="A000000148023"
											data-egrank="5" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[증량] 닥터지 약산성 클렌징 젤 폼 기획 (본품200ml+100ml 추가 증정)^5"
											data-trk="/Ordercom_Curation"
											data-impression="A000000148023^세일_주목할만한상품^5"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014802316ko.jpg?l=ko"
												alt="[증량] 닥터지 약산성 클렌징 젤 폼 기획 (본품200ml+100ml 추가 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[증량] 닥터지 약산성 클렌징 젤 폼 기획 (본품200ml+100ml 추가 증정)^5"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000148023&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;5&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000148023" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000148023" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148023&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=5"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000148023" data-egrank="5"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[증량] 닥터지 약산성 클렌징 젤 폼 기획 (본품200ml+100ml 추가 증정)^5"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000148023&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;5&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[증량] 닥터지 약산성 클렌징 젤 폼 기획 (본품200ml+100ml
														추가 증정)</dt>
													<dd class="price">
														<del>25,000원</del>
														<strong>18,700원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="5" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide05">
										<div class="thum" data-ref-goodsno="A000000165623"
											data-egrank="6" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 포 맨 토너/플루이드 2종세트 (+미니어처 2종 증정)^6"
											data-trk="/Ordercom_Curation"
											data-impression="A000000165623^세일_주목할만한상품^6"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016562303ko.jpg?l=ko"
												alt="닥터지 레드 블레미쉬 포 맨 토너/플루이드 2종세트 (+미니어처 2종 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 포 맨 토너/플루이드 2종세트 (+미니어처 2종 증정)^6"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000165623&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;6&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000165623" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000165623" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165623&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=6"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000165623" data-egrank="6"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 포 맨 토너/플루이드 2종세트 (+미니어처 2종 증정)^6"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000165623&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;6&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드 블레미쉬 포 맨 토너/플루이드 2종세트 (+미니어처 2종
														증정)</dt>
													<dd class="price">
														<del>61,000원</del>
														<strong>43,300원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="6" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide06">
										<div class="thum" data-ref-goodsno="A000000151512"
											data-egrank="7" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 액티브 에센스 80ml ^7"
											data-trk="/Ordercom_Curation"
											data-impression="A000000151512^세일_주목할만한상품^7"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015151206ko.jpg?l=ko"
												alt="닥터지 레드블레미쉬 클리어 수딩 액티브 에센스 80ml "
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 액티브 에센스 80ml ^7"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000151512&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;7&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000151512" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000151512" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000151512&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=7"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000151512" data-egrank="7"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 액티브 에센스 80ml ^7"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000151512&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;7&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드블레미쉬 클리어 수딩 액티브 에센스 80ml</dt>
													<dd class="price">
														<del>40,000원</del>
														<strong>28,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="7" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide07">
										<div class="thum" data-ref-goodsno="A000000149838"
											data-egrank="8" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 플러스 50ml 기획(10ml+배리어d 로션 10ml 증정)^8"
											data-trk="/Ordercom_Curation"
											data-impression="A000000149838^세일_주목할만한상품^8"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014983807ko.jpg?l=ko"
												alt="닥터지 브라이트닝 업 선 플러스 50ml 기획(10ml+배리어d 로션 10ml 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 플러스 50ml 기획(10ml+배리어d 로션 10ml 증정)^8"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000149838&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;8&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000149838" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000149838" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000149838&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=8"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000149838" data-egrank="8"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 플러스 50ml 기획(10ml+배리어d 로션 10ml 증정)^8"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000149838&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;8&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 브라이트닝 업 선 플러스 50ml 기획(10ml+배리어d 로션
														10ml 증정)</dt>
													<dd class="price">
														<del>32,000원</del>
														<strong>21,510원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="8" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide08">
										<div class="thum" data-ref-goodsno="A000000130487"
											data-egrank="9" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 로얄 블랙스네일 크림마스크 16g^9"
											data-trk="/Ordercom_Curation"
											data-impression="A000000130487^세일_주목할만한상품^9"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013048701ko.jpg?l=ko"
												alt="닥터지 로얄 블랙스네일 크림마스크 16g"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 로얄 블랙스네일 크림마스크 16g^9"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000130487&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;9&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000130487" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000130487" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130487&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=9"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000130487" data-egrank="9"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 로얄 블랙스네일 크림마스크 16g^9"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000130487&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;9&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 로얄 블랙스네일 크림마스크 16g</dt>
													<dd class="price">
														<del>6,000원</del>
														<strong>2,500원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="9" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide09">
										<div class="thum" data-ref-goodsno="A000000137679"
											data-egrank="10" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매^10"
											data-trk="/Ordercom_Curation"
											data-impression="A000000137679^세일_주목할만한상품^10"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013767909ko.jpg?l=ko"
												alt="닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매^10"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000137679&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;10&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000137679" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000137679" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000137679&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=10"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000137679" data-egrank="10"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매^10"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000137679&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;10&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드 블레미쉬 클리어 퀵 수딩 패드 70매</dt>
													<dd class="price">
														<del>28,000원</del>
														<strong>19,900원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="10" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide010">
										<div class="thum" data-ref-goodsno="A000000145728"
											data-egrank="11" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)^11"
											data-trk="/Ordercom_Curation"
											data-impression="A000000145728^세일_주목할만한상품^11"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014572815ko.jpg?l=ko"
												alt="[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)^11"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000145728&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;11&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000145728" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000145728" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000145728&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=11"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000145728" data-egrank="11"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획 (본품150ml+75ml 추가 증정)^11"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000145728&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;11&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[증량]닥터지 약산성 레드 블레미쉬 클리어 수딩 폼 기획
														(본품150ml+75ml 추가 증정)</dt>
													<dd class="price">
														<del>20,000원</del>
														<strong>16,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008" class="gtm_sale_lk_list slick-slide"
										data-slick-index="11" aria-hidden="true" style="width: 324px;"
										tabindex="-1" role="option" aria-describedby="slick-slide011">
										<div class="thum" data-ref-goodsno="A000000170033"
											data-egrank="12" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)^12"
											data-trk="/Ordercom_Curation"
											data-impression="A000000170033^세일_주목할만한상품^12"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017003301ko.jpg?l=ko"
												alt="닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)^12"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000170033&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;12&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000170033" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000170033" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170033&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=12"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000170033" data-egrank="12"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)^12"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000170033&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;12&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 브라이트닝 업 선 쿠션 15g 리필 증정기획(1+1 한정)</dt>
													<dd class="price">
														<del>29,000원</del>
														<strong>25,270원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag coupon">쿠폰</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="12" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000135930"
											data-egrank="1" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)^1"
											data-trk="/Ordercom_Curation"
											data-impression="A000000135930^세일_주목할만한상품^1"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013593011ko.jpg?l=ko"
												alt="닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)^1"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000135930&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;1&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000135930" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000135930" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000135930&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=1"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000135930" data-egrank="1"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)^1"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000135930&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;1&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">닥터지 레드블레미쉬 클리어 수딩 토너 300ml 기획 (화장솜 증정)</dt>
													<dd class="price">
														<del>31,000원</del>
														<strong>24,800원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="13" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000175402"
											data-egrank="2" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)^2"
											data-trk="/Ordercom_Curation"
											data-impression="A000000175402^세일_주목할만한상품^2"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<span class="thumb_flag best">베스트</span><img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017540206ko.jpg?l=ko"
												alt="[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)^2"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000175402&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;2&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000175402" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000175402" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175402&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=2"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000175402" data-egrank="2"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1] 닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml 어워즈&nbsp;한정&nbsp;기획(1+1)^2"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175402&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;2&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[어워즈 한정 1+1]
														닥터지&nbsp;그린&nbsp;마일드&nbsp;업&nbsp;선&nbsp;플러스&nbsp;50ml
														어워즈&nbsp;한정&nbsp;기획(1+1)</dt>
													<dd class="price">
														<del>29,000원</del>
														<strong>27,500원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
									<li data-wlog_type="a008"
										class="gtm_sale_lk_list slick-slide slick-cloned"
										data-slick-index="14" aria-hidden="true" style="width: 324px;"
										tabindex="-1">
										<div class="thum" data-ref-goodsno="A000000175398"
											data-egrank="3" data-egcode="a008_a008"
											data-attr="세일^주목할만한상품^[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)^3"
											data-trk="/Ordercom_Curation"
											data-impression="A000000175398^세일_주목할만한상품^3"
											data-ref-dispcatno="" data-ref-itemno="001"
											data-impression-visibility="1">
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017539802ko.jpg?l=ko"
												alt="[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)"
												onerror="common.errorImg(this);"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)^3"
												onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000175398&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;세일_주목할만한상품&quot;, &quot;3&quot;);">
											<div class="my">
												<button type="button" class="myCart cartBtnRecoBell"
													data-ref-goodsno="A000000175398" name=""
													data-ref-dispcatno="" data-ref-itemno="001" tabindex="-1">
													<span>장바구니</span>
												</button>
												<button type="button" class="mySee btn_zzim"
													data-ref-goodsno="A000000175398" tabindex="-1">
													<span>찜하기전</span>
												</button>
											</div>
										</div>
										<div class="info">
											<a
												href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175398&amp;dispCatNo&amp;trackingCd=Ordercom_Curation&amp;curation=ordercompl_curation_prod&amp;egcode=a008_a008&amp;rccode=pc_cart_order_a&amp;egrankcode=3"
												class="a_detail" name="Ordercom_Curation"
												data-ref-goodsno="A000000175398" data-egrank="3"
												data-egcode="a008_a008"
												data-attr="세일^주목할만한상품^[어워즈 한정 1+1]닥터지 브라이트닝 필링젤 어워즈&nbsp;한정&nbsp;기획(1+1)^3"
												data-trk="/Ordercom_Curation" data-ref-dispcatno=""
												data-ref-itemno="001" tabindex="-1"
												onclick="javascript:common.wlog(&quot;ordercompl_curation_prod&quot;);common.wlog(&quot;undefined&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175398&quot;, &quot;&quot;,&quot;ordercompl_curation_prod&quot; , &quot;pc_cart_order_a&quot;,&quot;a008_a008&quot; ,&quot;3&quot; ,&quot;Ordercom_Curation&quot;); return false;"><dl>
													<dt class="tit">[어워즈 한정 1+1]닥터지 브라이트닝 필링젤
														어워즈&nbsp;한정&nbsp;기획(1+1)</dt>
													<dd class="price">
														<del>21,000원</del>
														<strong>19,000원</strong>
													</dd>
													<dd class="icon">
														<span class="icon_flag sale">세일</span><span
															class="icon_flag delivery">오늘드림</span>
													</dd>
												</dl></a>
										</div>

									</li>
								</div>
							</div>
							<button type="button" data-role="none"
								class="slick-next slick-arrow" aria-label="Next" role="button"
								style="display: block;">Next</button>
							<ul class="slick-dots" style="display: block;" role="tablist">
								<li class="slick-active" aria-hidden="false" role="presentation"
									aria-selected="true" aria-controls="navigation00"
									id="slick-slide00"><button type="button" data-role="none"
										role="button" tabindex="0">1</button></li>
								<li aria-hidden="true" role="presentation" aria-selected="false"
									aria-controls="navigation01" id="slick-slide01"><button
										type="button" data-role="none" role="button" tabindex="0">2</button></li>
								<li aria-hidden="true" role="presentation" aria-selected="false"
									aria-controls="navigation02" id="slick-slide02"><button
										type="button" data-role="none" role="button" tabindex="0">3</button></li>
								<li aria-hidden="true" role="presentation" aria-selected="false"
									aria-controls="navigation03" id="slick-slide03"><button
										type="button" data-role="none" role="button" tabindex="0">4</button></li>
							</ul>
						</ul>
					</div>

					<input type="hidden" id="recoGoodsYn" value="Y">
				</div>
			</div>
		</div>
	</div>
	<!-- //#Contents -->
</div>
<%@ include file="../includes/footer.jsp"%>
