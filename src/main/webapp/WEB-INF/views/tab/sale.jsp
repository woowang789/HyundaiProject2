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
            <c:if test="${pageMaker.cri.amount eq 24}">
              <li class="on">
                <a href="javascript:;" title="24개씩 보기" data-value="24">24</a>
              </li>
              <li>
                <a href="javascript:;" title="36개씩 보기" data-value="36">36</a>
              </li>
              <li>
                <a href="javascript:;" title="48개씩 보기" data-value="48">48</a>
              </li>
            </c:if>
            <c:if test="${pageMaker.cri.amount eq 36}">
              <li>
                <a href="javascript:;" title="24개씩 보기" data-value="24">24</a>
              </li>
              <li class="on">
                <a href="javascript:;" title="36개씩 보기" data-value="36">36</a>
              </li>
              <li>
                <a href="javascript:;" title="48개씩 보기" data-value="48">48</a>
              </li>
            </c:if>
            <c:if test="${pageMaker.cri.amount eq 48}">
              <li>
                <a href="javascript:;" title="24개씩 보기" data-value="24">24</a>
              </li>
              <li>
                <a href="javascript:;" title="36개씩 보기" data-value="36">36</a>
              </li>
              <li class="on">
                <a href="javascript:;" title="48개씩 보기" data-value="48">48</a>
              </li>
            </c:if>
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
              <p class="prd_btn_area">
                <button class="btn_new_pop goodsList">새창보기</button>
              </p>
            </div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <form id="actionForm" action="/sale" method="get">
      <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" />
      <input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
    </form>
    <div class="pageing">
      <c:if test="${pageMaker.prev }">
        <a class="prev" href="${pageMaker.startPage-1 }">이전 10 페이지</a>
      </c:if>
      <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
        <a href="${num }">${num }</a>
      </c:forEach>
      <c:if test="${pageMaker.next }">
        <a class="next" href="${pageMaker.endPage+1 }">다음 10 페이지</a>
      </c:if>
    </div>
  </div>
</div>
<script type="text/javascript">
	$(document).ready(
			function() {
				const actionForm = $('#actionForm');
				$('.pageing a').click(
						function(e) {
							e.preventDefault();
							actionForm.find("input[name='pageNum']").val(
									$(this).attr("href"));
							actionForm.submit();
						})

				$('.count_sort>ul>li>a').click(
						function(e) {
							e.preventDefault();
							actionForm.find("input[name='amount']").val(
									$(this).attr("data-value"));
							actionForm.submit();
						})
				$('.btn_list').click(function(e) {
					if ($(this).hasClass('active')) {
					} else {

						$(".btn_thumb").removeClass('active')
						$(this).addClass('active')

						$(".gtm_sale_list").addClass('list_type')
					}
				})
				$('.btn_thumb').click(function(e) {
					if ($(this).hasClass('active')) {
					} else {
						$(".btn_list").removeClass('active')
						$(this).addClass('active')
						$(".gtm_sale_list").removeClass('list_type')
					}
				})

			})
</script>
<%@ include file="../includes/footer.jsp"%>
