<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<script type="text/javascript">
	function Price_Search() {

	}
</script>
<div id="Contents">
  <form name="actionForm" id="actionForm" action="/search" method="get">
    <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" />
    <input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
    <input type="hidden" name="sort" value="${pageMaker.cri.sort }" />
    <input type="hidden" name="cateId" value="${pageMaker.cri.cateId }" />
    <div class="searchResultArea">
      <p class="resultTxt">
        <strong>${pageMaker.cri.keyword }</strong>검색결과 (전체
        <span>${pageMaker.total }개</span>
        의 상품)
      </p>
    </div>
    <!-- 상품 속성 정보 검색 서비스 개선 -->
    <div class="detailSearch new">
      <!-- 가격대 -->
      <div class="search_box">
        <div class="inner">
          <h4 class="tit_th">가격대</h4>
          <div class="priceSearch">
            <input type="text" id="minPrice" name="minPrice" placeholder="최저가" value="${pageMaker.cri.minPrice}" title="">
            <span>~</span>
            <input type="text" id="maxPrice" name="maxPrice" placeholder="최고가" value="${pageMaker.cri.maxPrice}" title="">
            <input type="submit" value="가격대 적용">
          </div>
        </div>
      </div>
      <!-- //가격대 -->
    </div>
    <!-- // 상품 속성 정보 검색 서비스 개선 -->
  </form>
  <p class="cate_info_tx"></p>
  <!-- bFirstSearch -->
  <!-- 상품 정렬 조건 영역 -->
  <div class="cate_align_box">
    <div class="align_sort">
      <ul>
        <li class=<c:if test="${pageMaker.cri.sort eq '01'}">"on"</c:if>>
          <a href="javascript:;" data-prdsoting="01">최근등록순</a>
        </li>
        <li class=<c:if test="${pageMaker.cri.sort eq '02'}">"on"</c:if>>
          <a href="javascript:;" data-prdsoting="02">낮은 가격순</a>
        </li>
        <li class=<c:if test="${pageMaker.cri.sort eq '03'}">"on"</c:if>>
          <a href="javascript:;" data-prdsoting="03">높은 가격순</a>
        </li>
      </ul>
    </div>
    <div class="count_sort tx_num">
      <span class="tx_view">VIEW</span>
      <ul>
        <li class=<c:if test="${pageMaker.cri.amount eq 24}">"on"</c:if>>
          <a href="javascript:;" title="24개씩 보기" data-value="24">24</a>
        </li>
        <li class=<c:if test="${pageMaker.cri.amount eq 36}">"on"</c:if>>
          <a href="javascript:;" title="36개씩 보기" data-value="36">36</a>
        </li>
        <li class=<c:if test="${pageMaker.cri.amount eq 48}">"on"</c:if>>
          <a href="javascript:;" title="48개씩 보기" data-value="48">48</a>
        </li>
      </ul>
    </div>
    <div class="type_sort">
      <button class="btn_thumb active">컬럼형식으로 보기</button>
      <button class="btn_list">리스트형식으로 보기</button>
    </div>
  </div>
  <!--// 상품 정렬 조건 영역 -->
  <!-- 카테고리 상품 리스트 -->
  <!-- 컬럼형 리스트 -->
  <div id="ajaxList">
    <ul class="cate_prd_list gtm_search_list">
      <c:forEach var="item" items="${search_list}">
        <li class="flag li_result">
          <div class="prd_info">
            <a href="/product-detail?pid=${item.id }" name="Sale_Pop" class="prd_thumb goodsList">
              <span class="thumb_flag best">베스트</span>
              <img src="${item.thumb }" alt="${item.name}" onerror="common.errorImg(this);">
            </a>
            <!--// 이미지 영역 -->
            <!-- 상품명 -->
            <div class="prd_name">
              <a href="/product-detail?id=${item.id}">
                <span class="tx_brand">${item.brandName }</span>
                <p class="tx_name">${item.name}</p>
              </a>
            </div>
            <!--// 상품명  -->
            <!-- 찜버튼 -->
            <button class="btn_zzim jeem <c:if test="${item.wished eq 'true'}">on</c:if>">
              <span>찜하기전</span>
            </button>
            <!--// 찜버튼 -->
            <!-- 상품가격 영역 -->
            <p class="prd_price">
              <span class="tx_org">
                <span class="tx_num">
                  <fmt:formatNumber value="${item.originPrice }" />
                </span>
                <span class="tx_cur">
                  <span class="tx_num">
                    <fmt:formatNumber value="${item.marketPrice }" />
                  </span>
                  원
                </span>
            </p>
            <!--// 상품가격 영역 -->
            <!-- 상품 쿠폰 및 플러스 추가 영역 -->
            <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
            <p class="prd_flag">
              <c:if test="${item.marketPrice ne item.originPrice}">
                <span class="icon_flag sale">세일</span>
              </c:if>
              <c:if test="${item.marketPrice eq item.originPrice}">
                <span class="icon_flag"></span>
              </c:if>
            </p>
            <!--// 상품 쿠폰 및 플러스 추가 영역 -->
            <!--  상품평 및 장바구니버튼 -->
            <p class="prd_btn_area">
              <button class="btn_new_pop goodsList" onclick="window.open('/product-detail?pid=${item.id }')">새창보기</button>
            </p>
          </div>
          <!-- // 상품평 및 장바구니버튼 -->
        </li>
      </c:forEach>
    </ul>
  </div>
  <!--// -->
  <!-- pageing start -->
  <div class="pageing">
    <c:if test="${pageMaker.prev }">
      <a class="prev" href="${pageMaker.startPage-1 }">이전 10 페이지</a>
    </c:if>
    <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
      <c:if test="${num eq pageMaker.cri.pageNum }">
        <strong title="현재 페이지">${num }</strong>
      </c:if>
      <c:if test="${num ne pageMaker.cri.pageNum }">
        <a href="${num }">${num }</a>
      </c:if>
    </c:forEach>
    <c:if test="${pageMaker.next }">
      <a class="next" href="${pageMaker.endPage+1 }">다음 10 페이지</a>
    </c:if>
  </div>
  <!-- //pageing end -->
  <!-- </div> -->
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
				$('.align_sort>ul>li>a').click(
						function(e) {
							e.preventDefault();
							actionForm.find("input[name='sort']").val(
									$(this).data("prdsoting"));
							actionForm.submit();

						})
				$('.common-menu ul li > button').click(
						function(e) {
							e.preventDefault();
							actionForm.find("input[name='pageNum']").val(1);
							actionForm.find("input[name='cateId']").val(
									$(this).data("cid"));
							actionForm.submit();

						})
				$('.btn_list').click(function(e) {
					if ($(this).hasClass('active')) {
					} else {

						$(".btn_thumb").removeClass('active')
						$(this).addClass('active')

						$(".gtm_search_list").addClass('list_type')
					}
				})
				$('.btn_thumb').click(function(e) {
					if ($(this).hasClass('active')) {
					} else {
						$(".btn_list").removeClass('active')
						$(this).addClass('active')
						$(".gtm_search_list").removeClass('list_type')
					}
				})

			})
</script>
<%@ include file="../includes/footer.jsp"%>