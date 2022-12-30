<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../includes/header.jsp"%>
<script>
	$(document).ready(function() {

		$('.prd_detail_tab li').click(function() {
			var tab_id = $(this).attr('data-tab');
			$('.prd_detail_tab li').removeClass('on');
			$('.tabConts').removeClass('show');
			
			$(this).addClass('on');
			$("#" + tab_id).addClass('show');
		});

		$('.sel_option').click(function(e) {
			e.preventDefault();
			if ($(this).parent().hasClass('open')) {
				$(this).parent().removeClass('open')
			} else {
				$(this).parent().addClass('open')

			}
		

		})

	});
	
	function select_toggle(e){
		
	}

</script>


<div id="Container">
	<div id="Contents">
		<!-- 상단 카테고리 history -->
		<div class="prd_detail_box renew">
			<div class="left_area">
				<div class="prd_img">
					<span class="thumb_flag best">베스트</span> <img id="mainImg"
						src="<c:out value="${product_detail.pimg}" />" alt="상품명 이미지"
						onerror="common.errorImg(this);" /> <input type="hidden"
						id="mainImgSize" value="550" />
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
						<a href="#" id="moveBrandShop" class="pd_arrow_link"><c:out
								value="${product_detail.bname}" /></a>
					</p>
					<p class="prd_name">
						<c:out value="${product_detail.pname}" />
					</p>
					<!-- 202005 상품개선 : 추가 -->
					<!-- 					<p class="prd-txt1">1회 최대 구매수량 5개 입니다.</p> -->
					<div class="price">
						<span class="price-1"> <strike><fmt:formatNumber
									value="${product_detail.optionList[0].originPrice}" /></strike> <span>원</span>
						</span> <span class="price-2"> <strong><fmt:formatNumber
									value="${product_detail.optionList[0].marketPrice}" /> </strong> <span>원</span>
						</span>
					</div>
					<c:if
						test="${product_detail.optionList[0].originPrice ne product_detail.optionList[0].marketPrice}">
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span>
						</p>
					</c:if>
					<div class="prd_more_info">
						<div class="row">
							<ul class="bl_list">
								<li><span>일반배송</span>
									<div>
										2,500원 ( 20,000 원 이상 무료배송 ) <br /> <em>올리브영 배송 </em> <em>평균
											9일 이내 배송</em>

									</div></li>

							</ul>
						</div>
					</div>
					<input type="hidden" id="goodsItemYn" value="Y" />
					<div class="prd_option_box optionType1 type2"
						id="buy_option_box">
						<a href="javascript:;" class="sel_option" id="buyOpt"> 상품을
							선택해주세요 </a>
						<ul class="sel_option_list new" id="option_list">
							<c:forEach var="option" items="${product_detail.optionList}">
								<li class="">
									<!-- 혜택 아이콘 li 분기 끝 --> <!--//옵션 선택시 오늘드림 옵션 상품을 제어하기 위해서 오늘드림 여부 추가//-->

									<a style="cursor: pointer"
									onclick="javascript:goods.detail.cart.selectItem('002','아토덤립스틱 1+1 기획','A000000175267','', '','','N', '', '910', 'N', '10500', '1', '1', '999', 'N', '', '', '', '', '', '8809371193852','Y', '', '');">
										<c:if test="${not empty option.othumb}">
											<span class="color"> <img
												src="<c:out value='${option.othumb}'/>" alt=" "></span>
										</c:if>
										<div class="set">

											<span class="option_value"> <c:out
													value="${option.oname}" /> <span class="option_price">
													<span class="tx_num"> <fmt:formatNumber
															value="${option.marketPrice}" />원
												</span>
											</span>

											</span>
											<c:if
												test="${product_detail.optionList[0].originPrice ne product_detail.optionList[0].marketPrice}">
												<span class="icon_flag sale">세일</span>
											</c:if>

										</div> <!--[END 오늘드림 옵션상품 개선:jwkim]-->
								</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="option_add_area pkg_goods_n"></div>
					<div class="prd_total_price">
						<span class="tx_tit">상품금액 합계</span> <input type="hidden"
							id="totalCnt" value="0" name="totalCnt" /> <input type="hidden"
							id="totalPrc" value="0" name="totalPrc" /> <span class="tx_cont">
							<span class="tx_num" id="totalPrcTxt">0</span> 원
						</span>
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
								value="Y" data-attr="상품상세^매장픽업여부^매장픽업신청" /> <label
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
							data-attr="상품상세^상품좋아요^브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)_0">찜하기전</button>
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
			<h4 class="tit_h4">
				이런
				<c:out value="${product_detail.cname}" />
				상품은 어떠세요?
			</h4>
			<div class="loading_box">
				<span class="icon"> <img
					src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
					alt="로딩중" />
				</span>
				<p class="txt">고객님을 위한 상품 추천중이에요</p>
			</div>
		</div>
		<!-- 큐레이션 2차 E -->
		<ul class="prd_detail_tab" id="tabList">
			<li class="on" data-tab="productInfo"><a href="#tabList"
				class="goods_detailinfo" data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a>
			</li>
			<li data-tab="buyInfo"><a href="#tabList" class="goods_buyinfo"
				data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
			<li data-tab="reviewInfo"><a href="#tabList"
				class="goods_reputation" data-attr="상품상세^상품상세_SortingTab^리뷰"> 리뷰
					<span>(1,888)</span>
			</a></li>
			<li id="qnaInfo"></li>
		</ul>
		<div class="tabConts prd_detail_cont show" id="productInfo"
			dat-tab="productInfo">
			<div class="detail_area">
				<!-- 협력사, 온라인브랜드, 상품 카테고리 노출 -->
				<div class="contEditor">
					<script>
						$(window).load(function() {
							// 2017-02-18 : txs : 상품 상세 레이아웃 크기 재조정
							goods.detail.tagHandler.inittGoodsDetailObjects();
							$("#tempHtml").html("");
						});
					</script>
					<c:set var="pctnts" value="${fn:split(product_detail.pctnt,',')}" />



					<c:forEach var="pctnt" items="${pctnts}">



						<img alt="" src="<c:out value= " ${pctnt}"/>" />
					</c:forEach>
				</div>
				<div style="text-align: center; padding: 20px 0px 0px 0px">
					<p
						style="display: inline-block; font-size: 14px; border: 1px solid #ddd; padding: 10px 40px 10px 40px; text-align: center;">본
						상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
				</div>
			</div>
			<p class="tit_cate_best mgT40 dispCatBest" style="display: none">스킨케어
				카테고리 베스트 상품</p>
			<ul class="cate_prd_list dispCatBest" id="recommGoodsList"
				style="display: none"></ul>
			<div class="curation_area_a029_lead"></div>
			<div id="recobell_area_a029" class="cura_pord curation_area_029 btm"
				style="display: none">
				<h4 class="tit_h4">함께 보면 좋은 상품이에요</h4>
				<div class="loading_box">
					<span class="icon"> <img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
						alt="로딩중" />
					</span>
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
		<div class="tabConts prd_detail_cont" id="buyInfo" data-tab="buyInfo">
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
							올리브영 배송 상품의 총 결제금액 <span>20,000</span> 원 이상일 경우 <span>무료배송</span>
							됩니다.
						</p>
						<p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>
						<p>
							<strong>배송가능일 : </strong> <span>9</span> 일
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
							<strong>배송비 : </strong><strong>빠름</strong>&nbsp; <span>5,000원</span>
							, <strong>3!4!/미드나잇</strong>&nbsp; <span>2,500원</span>
						</p>
						<p>
							오늘드림 배송 상품의 총 결제금액&nbsp; <span>30,000</span> 원 이상일 경우&nbsp; <span>무료배송</span>
							&nbsp;됩니다.
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
		<div class="tabConts prd_detail_cont" id="reviewInfo"
			data-tab="reviewInfo">
			<div class="review_wrap renew review-reward-notice">
				<!-- ## 리뷰 고도화 1차 : 영역 부모 div 추가 ## -->

				<!-- 옵션start -->
				<input type="hidden" name="gdasItemNo" id="gdasItemNo"
					value="all_search"> <input type="hidden"
					name="gdasLgcGoodsNo" id="gdasLgcGoodsNo" value="all_search">
				<input type="hidden" name="selectedNum" id="selectedNum" value="">
				<!-- //## 리뷰 고도화 1차 ## 추가 -->
				<input type="hidden" name="itemCnt" id="itemCnt" value="1">

				<input type="hidden" id="dispImgUrl"
					value="https://image.oliveyoung.co.kr/uploads/images/display/">
				<input type="hidden" id="bnrImgUrl"
					value="900000100050003/131/1936525083404364428.jpg"> <input
					type="hidden" id="bnrImgTxtCont" value="올영체험단 PC 배너">

				<div class="product_rating_area review-write-delete">
					<div class="inner clrfix">

						<div class="star_area">
							<p class="total">
								총 <em>1,592 </em>건
							</p>
							<!-- ## 리뷰 고도화 2차 ## 리뷰 전체 건수(본상품+연관상품) -->
							<p class="num">
								<strong>4.7</strong><span>점</span>
							</p>
							<ul class="star_list">

								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>


								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating" style="width: 70%;"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

							</ul>
						</div>
						<div class="graph_area">
							<ul class="graph_list">




								<li><span class="per">77%</span>
									<div class="graph">
										<span style="height: 77%;"></span>
									</div> <span class="txt">5점</span></li>


								<li><span class="per">16%</span>
									<div class="graph">
										<span style="height: 16%;"></span>
									</div> <span class="txt">4점</span></li>


								<li><span class="per">6%</span>
									<div class="graph">
										<span style="height: 6%;"></span>
									</div> <span class="txt">3점</span></li>


								<li><span class="per">1%</span>
									<div class="graph">
										<span style="height: 1%;"></span>
									</div> <span class="txt">2점</span></li>


								<li><span class="per">1%</span>
									<div class="graph">
										<span style="height: 1%;"></span>
									</div> <span class="txt">1점</span></li>




							</ul>
						</div>

					</div>
				</div>


				<div class="cate_align_box prodLine review_N2" id="searchType">
					<div class="align_sort">
						<!-- 리뷰 고도화 1차 : 항목 변경 -->
						<ul id="gdasSort">
							<li class="is-layer on"><a href="javascript:;"
								data-value="05" data-attr="상품상세^리뷰정렬^유용한순">유용한순</a>
								<button type="button" class="btn-open-layer">
									<span>자세히 보기</span>
								</button>
								<div class="comment-layer">리뷰의 글자수, '도움이 돼요'수 , 등록된 사진, 최신
									작성일등을 점수화하여 올리브영이 추천하는 리뷰를 정렬합니다.</div></li>
							<li><a href="javascript:;" data-value="01"
								data-attr="상품상세^리뷰정렬^도움순">도움순</a></li>
							<li><a href="javascript:;" data-value="02"
								data-attr="상품상세^리뷰정렬^최신순">최신순</a></li>
						</ul>
						<!-- // 리뷰 고도화 1차 : 항목 변경 -->
					</div>



					<input type="hidden" name="showFilter" id="showFilter" value="Y">


				</div>


				<div class="review_list_wrap">
					<ul class="inner_list" id="gdasList">
						<li>
							<div class="info">
								<div class="user clrfix">
									<a href="javascript:;"
										onclick="goods.gdas.goReviewerProfile('eVZUZitnek53RHFHaTVMbFNETDM5dz09')"
										data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭"> <img
										src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2019/12/16/1576470324427.png"
										onerror="common.errorProfileImg(this);"
										onload="common.onLoadProfileImg(this, 60)"
										style="display: none;">
										<div class="thum">
											<span class="bg"></span> <img
												src="https://image.oliveyoung.co.kr/uploads/images/mbrProfile/2019/12/16/1576470324427.png?RS=97x60&amp;CS=60x60"
												class="profileThum_s"
												style="background: url(https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg) no-repeat 0 0; background-size: 60px">
										</div>
									</a>
									<!--## 리뷰 고도화 1차 ## : top, id 위치 변경 및 마크업 변경 -->
									<p class="info_user">
										<a href="javascript:;"
											onclick="goods.gdas.goReviewerProfile('eVZUZitnek53RHFHaTVMbFNETDM5dz09')"
											class="id" data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">러브굿</a>
										<!--## 리뷰 고도화 1차 ## :  탑리뷰어 라운지로 이동시킴 -->
									</p>
								</div>
							</div>
							<div class="review_cont">
								<div class="score_area">
									<span class="review_point"><span class="point"
										style="width: 100%">5점만점에 5점</span></span> <span class="date">2022.12.27</span>
								</div>
								<div class="txt_inner">
									솔직히&nbsp;관리&nbsp;자체가&nbsp;귀찮아서&nbsp;꾸준히&nbsp;쓰지는&nbsp;않았어요ㅠㅋㅋㅋ&nbsp;아이세럼스틱&nbsp;정말&nbsp;쓰기&nbsp;편하게&nbsp;생겨서&nbsp;좋거든요&nbsp;한번만&nbsp;딱&nbsp;짜서&nbsp;눈가에&nbsp;발라주면&nbsp;되고,&nbsp;롤러가&nbsp;시원해서&nbsp;느낌도&nbsp;좋고&nbsp;눈&nbsp;주위엔&nbsp;확실히&nbsp;영양이&nbsp;부족한지&nbsp;주름지기&nbsp;쉬우니까&nbsp;집중관리해주면&nbsp;촉촉해지는것도&nbsp;보이고&nbsp;좋은데&nbsp;꾸준히&nbsp;쓰기는&nbsp;쉽지않네요&nbsp;ㅋㅋ&nbsp;지금도&nbsp;리뷰&nbsp;쓴다고&nbsp;생각난김에&nbsp;발라줬어요&nbsp;<br>눈가에&nbsp;쓰면&nbsp;시릴수도&nbsp;있는데&nbsp;그렇지도&nbsp;않고&nbsp;피부가&nbsp;간지럽거나&nbsp;한것도&nbsp;없어요&nbsp;자극이&nbsp;없고&nbsp;사용감이&nbsp;좋습니다&nbsp;<br>
									<br>아이세럼&nbsp;필요하신분들에게&nbsp;강추해요&nbsp;아주&nbsp;편해요👍🏻
								</div>
								<!-- ## 리뷰 고도화 1차 ## : 태그 추가 -->
								<div class="review_thum type1">
									<ul class="inner clrfix">
										<li><a href="#" data-attr="상품상세^포토리뷰^포토 클릭^1"><span><img
													src="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2022/12/27/1672145255473.png?RS=165x165&amp;CS=165x165"
													onload="common.imgLoads(this,165);" data-value="16677214_1"
													class="thum" alt=""
													onerror="common.errorResizeImg(this,165)"></span></a></li>
									</ul>
								</div>
								<div class="rw-photo-slide" style="display: none">
									<div>
										<img
											src="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2022/12/27/1672145255473.png">
									</div>
								</div>
								<!--## 리뷰 고도화 2차 ## 연관상품 -->
								<!--## 리뷰 고도화 1차 ## 위치변경 및 삭제-->
								<!-- ## 리뷰 고도화 1차 ##  : 리뷰제한 카테고리 일경우 안보이게 -->
							</div>
						</li>
					</ul>
				</div>











				<!-- pageing start -->



				<div class="pageing" style="display: block;">





					<a href="javascript:void(0);" data-page-no="1">1</a> <strong
						title="현재 페이지">2</strong> <a href="javascript:void(0);"
						data-page-no="3">3</a> <a href="javascript:void(0);"
						data-page-no="4">4</a> <a href="javascript:void(0);"
						data-page-no="5">5</a> <a href="javascript:void(0);"
						data-page-no="6">6</a> <a href="javascript:void(0);"
						data-page-no="7">7</a> <a href="javascript:void(0);"
						data-page-no="8">8</a> <a href="javascript:void(0);"
						data-page-no="9">9</a> <a href="javascript:void(0);"
						data-page-no="10">10</a> <a class="next"
						href="javascript:void(0);" data-page-no="11">다음 10 페이지</a>

				</div>

				<!-- //pageing end -->

				<script type="text/javascript">
					$(document).ready(function() {
						$('.pageing').hide();

					});
				</script>

				<!-- pageing start -->

				<!-- //pageing end -->

				<script type="text/javascript">
					$(document).ready(function() {
						$('.pageing').hide();

					});
				</script>


				<!-- 상품평 리스트 end -->






			</div>
		</div>
	</div>
</div>

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
			<button class="btnG01 pdzero w130" onclick="location.href='/cart'">
				<span>장바구니 확인</span>
			</button>
		</div>
		<button type="button" class="ButtonClose"
			onclick="fnLayerSet('basketOption', 'close');common.wlog('goods_cart_curation_popup_close');">팝업창
			닫기</button>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>
