<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
  <!-- #Contents -->
  <div class="title-best">
    <h1>
      랭킹
      <span>오늘의 랭킹! 요즘 가장 핫한 상품</span>
    </h1>
  </div>
  <div class="best-area">
    <ul class="comm5sTabs tabN3" data-ref-selected="">
      <li data-ref-dispcatno="900000100100001" class="on">
        <button type="button" title="선택됨">판매 랭킹</button>
      </li>
    </ul>
    <!-- 판매 베스트 -->
    <div class="common-menu">
      <%
      String cateId = request.getParameter("cateId");
      %>
      <ul>
        <li class="<c:if test="${pageMaker.cri.cateId eq ''}">on</c:if>">
          <button type="button" data-ref-dispcatno="1000001" data-attr="세일^세일카테고리_핫인기세일^전체">전체</button>
        </li>
        <!-- 그 외 -->
        <c:forEach var="cate" items="${categ}">
          <li class="<c:if test="${pageMaker.cri.cateId eq cate.cateId }">on</c:if> ">
            <button type="button" data-cid="${cate.cateId}" data-attr="">
              <c:out value="${cate.cateName }" />
            </button>
          </li>
        </c:forEach>
        <!-- 그 외 -->
        <!-- [3411773] '20년상반기 웹앱접근성 개선필요항목(PC-국문 웹) 빈태그일때 빈박스 삭제 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
      </ul>
    </div>
    <!-- 서브카테고리 상단 안내화면 -->
    <!--        <div class="bestGuideLayer"> -->
    <!--          <div class="guideBtn">선정 기준</div> -->
    <!--          <div class="guidePopup" style="display:none;"> -->
    <!--          </div> -->
    <!--        </div> -->
    <!-- //서브카테고리 상단 안내화면 -->
    <script type="text/javascript">
					$(document).ready(function() {
						$(".guideBtn").mouseover(function() {
							$(".guidePopup").show();
						});
						$(".guideBtn").mouseout(function() {
							if ($('.guidePopup:hover').length <= 0) {
								$(".guidePopup").hide();
							}
						});
						$(".guidePopup").mouseover(function() {
							$(".guidePopup").show();
						});
						$(".guidePopup").mouseout(function() {
							if ($('.guideBtn:hover').length <= 0) {
								$(".guidePopup").hide();
							}
						});
					});
				</script>
    <!-- 판매 베스트 -->
    <!-- 카테고리 베스트 상품 목록 -->
    <div class="TabsConts on">
      <ul class="cate_prd_list ">
        <!-- 1단형일 경우 클래스 list_type 추가 -->
        <li class="flag">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174974&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000174974" data-attr="랭킹^판매랭킹리스트_전체^[2022어워즈] 스킨푸드 캐롯 카로틴 카밍 워터 패드 기획 (60매+10매+패드케이스)^1" data-ref-dispcatno="90000010009"
              data-ref-itemno="001" data-trk="/" data-impression="A000000174974^랭킹_판매랭킹리스트_전체^1" data-impression-visibility="1"
            >
              <span class="newOyflag today">
                <em>오특</em>
              </span>
              <span class="newOyflag time" style="display: none;">
                <div class="main-today">
                  <div class="timer ready">
                    <span class="nums h">
                      <span class="num" data-timer-val="0">0</span>
                      <span class="num" data-timer-val="0">0</span>
                    </span>
                    <span class="nums m">
                      <span class="num" data-timer-val="0">0</span>
                      <span class="num" data-timer-val="0">0</span>
                    </span>
                  </div>
                </div>
              </span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017497404ko.jpg?l=ko" alt="[2022어워즈] 스킨푸드 캐롯 카로틴 카밍 워터 패드 기획 (60매+10매+패드케이스)" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000174974" data-attr="랭킹^판매랭킹리스트_전체^[2022어워즈] 스킨푸드 캐롯 카로틴 카밍 워터 패드 기획 (60매+10매+패드케이스)^1" data-ref-dispcatno="90000010009"
                data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">스킨푸드</span>
                <p class="tx_name">[2022어워즈] 스킨푸드 캐롯 카로틴 카밍 워터 패드 기획 (60매+10매+패드케이스)</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000174974">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">26,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">16,900</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag coupon">쿠폰</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000174974" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
        <li class="">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175772&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000175772" data-attr="랭킹^판매랭킹리스트_전체^[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)^2" data-ref-dispcatno="90000010009"
              data-ref-itemno="001" data-trk="/" data-impression="A000000175772^랭킹_판매랭킹리스트_전체^2" data-impression-visibility="1"
            >
              <span class="newOyflag today">
                <em>오특</em>
              </span>
              <span class="newOyflag time" style="display: none;">
                <div class="main-today">
                  <div class="timer ready">
                    <span class="nums h">
                      <span class="num" data-timer-val="0">0</span>
                      <span class="num" data-timer-val="0">0</span>
                    </span>
                    <span class="nums m">
                      <span class="num" data-timer-val="0">0</span>
                      <span class="num" data-timer-val="0">0</span>
                    </span>
                  </div>
                </div>
              </span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017577213ko.jpg?l=ko" alt="[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000175772" data-attr="랭킹^판매랭킹리스트_전체^[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)^2"
                data-ref-dispcatno="90000010009" data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">닥터지</span>
                <p class="tx_name">[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000175772">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">38,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">21,000</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag coupon">쿠폰</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000175772" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
        <li class="">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175408&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000175408" data-attr="랭킹^판매랭킹리스트_전체^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^3" data-ref-dispcatno="90000010009"
              data-ref-itemno="001" data-trk="/" data-impression="A000000175408^랭킹_판매랭킹리스트_전체^3" data-impression-visibility="1"
            >
              <span class="thumb_flag best">03</span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017540806ko.jpg?l=ko" alt="[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000175408" data-attr="랭킹^판매랭킹리스트_전체^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^3" data-ref-dispcatno="90000010009"
                data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">피카소</span>
                <p class="tx_name">[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000175408">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">19,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">14,900</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000175408" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
        <li class="">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000177759&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000177759" data-attr="랭킹^판매랭킹리스트_전체^클리오 킬커버 메쉬글로우 쿠션^4" data-ref-dispcatno="90000010009" data-ref-itemno="008" data-trk="/"
              data-impression="A000000177759^랭킹_판매랭킹리스트_전체^4" data-impression-visibility="1"
            >
              <span class="thumb_flag best">04</span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017775906ko.jpg?l=ko" alt="클리오 킬커버 메쉬글로우 쿠션" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000177759" data-attr="랭킹^판매랭킹리스트_전체^클리오 킬커버 메쉬글로우 쿠션^4" data-ref-dispcatno="90000010009" data-ref-itemno="008" data-trk="/">
                <span class="tx_brand">클리오</span>
                <p class="tx_name">클리오 킬커버 메쉬글로우 쿠션</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000177759">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">36,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">24,120</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag coupon">쿠폰</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 86.0%">10점만점에 5.5점</span>
              </span>
              (74)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000177759" data-ref-dispcatno="90000010009" data-ref-itemno="008">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
      </ul>
      <ul class="cate_prd_list  mgLine">
        <!-- 1단형일 경우 클래스 list_type 추가 -->
        <li class="flag">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175544&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000175544" data-attr="랭킹^판매랭킹리스트_전체^[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획^5" data-ref-dispcatno="90000010009" data-ref-itemno="001"
              data-trk="/" data-impression="A000000175544^랭킹_판매랭킹리스트_전체^5" data-impression-visibility="1"
            >
              <span class="thumb_flag best">05</span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017554402ko.jpg?l=ko" alt="[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000175544" data-attr="랭킹^판매랭킹리스트_전체^[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획^5" data-ref-dispcatno="90000010009"
                data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">마녀공장</span>
                <p class="tx_name">[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000175544">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">49,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">29,900</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000175544" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
        <li class="">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174991&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000174991" data-attr="랭킹^판매랭킹리스트_전체^[2022어워즈]에스트라 아토베리어365 크림 80ml 기획(+시카세럼10ml+패드6매)^6" data-ref-dispcatno="90000010009"
              data-ref-itemno="001" data-trk="/" data-impression="A000000174991^랭킹_판매랭킹리스트_전체^6" data-impression-visibility="1"
            >
              <span class="thumb_flag best">06</span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017499103ko.jpg?l=ko" alt="[2022어워즈]에스트라 아토베리어365 크림 80ml 기획(+시카세럼10ml+패드6매)" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000174991" data-attr="랭킹^판매랭킹리스트_전체^[2022어워즈]에스트라 아토베리어365 크림 80ml 기획(+시카세럼10ml+패드6매)^6" data-ref-dispcatno="90000010009"
                data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">에스트라</span>
                <p class="tx_name">[2022어워즈]에스트라 아토베리어365 크림 80ml 기획(+시카세럼10ml+패드6매)</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000174991">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">31,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">23,560</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag coupon">쿠폰</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000174991" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
        <li class="">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175701&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000175701" data-attr="랭킹^판매랭킹리스트_전체^[어워즈한정][45%할인구성] 아이소이 1등 잡티세럼 45ml+20ml 대용량 기획^7" data-ref-dispcatno="90000010009" data-ref-itemno="001"
              data-trk="/" data-impression="A000000175701^랭킹_판매랭킹리스트_전체^7" data-impression-visibility="1"
            >
              <span class="thumb_flag best">07</span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017570106ko.jpg?l=ko" alt="[어워즈한정][45%할인구성] 아이소이 1등 잡티세럼 45ml+20ml 대용량 기획" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000175701" data-attr="랭킹^판매랭킹리스트_전체^[어워즈한정][45%할인구성] 아이소이 1등 잡티세럼 45ml+20ml 대용량 기획^7" data-ref-dispcatno="90000010009"
                data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">아이소이</span>
                <p class="tx_name">[어워즈한정][45%할인구성] 아이소이 1등 잡티세럼 45ml+20ml 대용량 기획</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000175701">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">59,000</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">48,900</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000175701" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
        <li class="">
          <div class="prd_info ">
            <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175266&amp;dispCatNo=90000010009&amp;trackingCd=Best_Sellingbest&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
              name="Best_Sellingbest" class="prd_thumb goodsList" data-ref-goodsno="A000000175266" data-attr="랭킹^판매랭킹리스트_전체^[2022어워즈 한정기획]바이오더마 센시비오 H2O 500ml+500ml^8" data-ref-dispcatno="90000010009" data-ref-itemno="001"
              data-trk="/" data-impression="A000000175266^랭킹_판매랭킹리스트_전체^8" data-impression-visibility="1"
            >
              <span class="thumb_flag best">08</span>
              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017526650ko.jpg?l=ko" alt="[2022어워즈 한정기획]바이오더마 센시비오 H2O 500ml+500ml" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="javascript:;" name="Best_Sellingbest" class="goodsList" data-ref-goodsno="A000000175266" data-attr="랭킹^판매랭킹리스트_전체^[2022어워즈 한정기획]바이오더마 센시비오 H2O 500ml+500ml^8" data-ref-dispcatno="90000010009"
                data-ref-itemno="001" data-trk="/"
              >
                <span class="tx_brand">바이오더마</span>
                <p class="tx_name">[2022어워즈 한정기획]바이오더마 센시비오 H2O 500ml+500ml</p>
              </a>
            </div>
            <button class="btn_zzim jeem" data-ref-goodsno="A000000175266">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">39,500</span>
                원
              </span>
              <span class="tx_cur">
                <span class="tx_num">31,600</span>
                원
              </span>
            </p>
            <p class="prd_flag">
              <span class="icon_flag sale">세일</span>
              <span class="icon_flag delivery">오늘드림</span>
            </p>
            <p class="prd_point_area tx_num">
              <span class="review_point">
                <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
              </span>
              (999+)
            </p>
            <p class="prd_btn_area">
              <button class="cartBtn" data-ref-goodsno="A000000175266" data-ref-dispcatno="90000010009" data-ref-itemno="001">장바구니</button>
              <button class="btn_new_pop goodsList">새창보기</button>
            </p>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<%@ include file="../includes/footer.jsp"%>