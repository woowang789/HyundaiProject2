<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
  <div class="title-sale">
    <h1>
      세일
      <span>핫 세일! 이건 꼭 사야 해!</span>
    </h1>
  </div>
  <div class="sale-area">
    <ul class="comm5sTabs">
      <li data-ref-dispcatno="900000100090001" id="hot" class="on">
        <button type="button">핫인기세일</button>
      </li>
    </ul>
    <div class="common-menu">
      <ul>
        <li class="on">
          <button type="button" data-ref-dispcatno="" data-attr="세일^세일카테고리_핫인기세일^전체">전체</button>
        </li>
        <!-- 그 외 -->
        <li>
          <button type="button" data-ref-dispcatno="10000010001" data-attr="세일^세일카테고리_핫인기세일^스킨케어">스킨케어</button>
        </li>
        <!-- 그 외 -->
        <!-- [3411773] '20년상반기 웹앱접근성 개선필요항목(PC-국문 웹) 빈태그일때 빈박스 삭제 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
        <li class="disabled"></li>
        <!-- 2017-02-02 빈 태그일때 class=disabled 추가 -->
      </ul>
    </div>
    <!-- 서브카테고리 상단 안내화면 -->
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
    <div class="TabsConts on">
      <p class="cate_info_tx"></p>
      <div class="cate_align_box">
        <div class="align_sort">
          <ul>
            <li>
              <a href="javascript:;" data-prdsoting="02">최근등록순</a>
            </li>
            <li>
              <a href="javascript:;" data-prdsoting="05">낮은 가격순</a>
            </li>
            <li>
              <a href="javascript:;" data-prdsoting="06">높은 가격순</a>
            </li>
          </ul>
        </div>
        <div class="count_sort tx_num">
          <span class="tx_view">VIEW</span>
          <ul>
            <li class="on">
              <a href="javascript:;" title="24개씩 보기">24</a>
            </li>
            <li>
              <a href="javascript:;" title="36개씩 보기">36</a>
            </li>
            <li>
              <a href="javascript:;" title="48개씩 보기">48</a>
            </li>
          </ul>
        </div>
        <div class="type_sort">
          <button class="btn_thumb  active">컬럼형식으로 보기</button>
          <button class="btn_list">리스트형식으로 보기</button>
        </div>
      </div>
      <ul class="cate_prd_list gtm_sale_list">
        <c:forEach var="item" items="${sale_list}">
          <li class="flag">
            <div class="prd_info ">
              <a href="/product-detail?id=${item.id }" name="Sale_Pop" class="prd_thumb goodsList">
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
                <img src="${item.thumb }" alt="${item.name}" onerror="common.errorImg(this);">
              </a>
              <div class="prd_name">
                <a href="/product-detail?id=${item.id}">
                  <span class="tx_brand">${item.brandName }</span>
                  <p class="tx_name">${item.name }</p>
                </a>
              </div>
              <button class="btn_zzim jeem" data-ref-goodsno="A000000174974">
                <span>찜하기전</span>
              </button>
              <p class="prd_price">
                <span class="tx_org">
                  <span class="tx_num">
                    <fmt:formatNumber value="${item.originPrice }" />
                  </span>
                  원
                </span>
                <span class="tx_cur">
                  <span class="tx_num">
                    <fmt:formatNumber value="${item.marketPrice }" />
                  </span>
                  원
                </span>
              </p>
              <p class="prd_flag">
                <c:if test="${item.marketPrice ne item.originPrice}">
                  <span class="icon_flag sale">세일</span>
                </c:if>
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
        </c:forEach>
      </ul>
    </div>
    <div class="pageing">
      <strong title="현재 페이지">1</strong>
      <a href="javascript:void(0);" data-page-no="2">2</a>
      <a href="javascript:void(0);" data-page-no="3">3</a>
      <a href="javascript:void(0);" data-page-no="4">4</a>
      <a href="javascript:void(0);" data-page-no="5">5</a>
      <a href="javascript:void(0);" data-page-no="6">6</a>
      <a href="javascript:void(0);" data-page-no="7">7</a>
      <a href="javascript:void(0);" data-page-no="8">8</a>
      <a href="javascript:void(0);" data-page-no="9">9</a>
      <a href="javascript:void(0);" data-page-no="10">10</a>
      <a class="next" href="javascript:void(0);" data-page-no="11">다음 10 페이지</a>
    </div>
  </div>
</div>
<%@ include file="../includes/footer.jsp"%>
