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
    <!-- 판매 베스트 필터-->
    <div class="common-menu">
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
    <!-- //판매 베스트 필터-->
    <!-- 판매 베스트 -->
    <!-- 카테고리 베스트 상품 목록 -->
    <div class="TabsConts on">
      <ul class="cate_prd_list">
        <c:forEach var="item" items="${ best_list}" varStatus="idx">
          <li class="flag">
            <div class="prd_info ">
              <a href="/product-detail?pid=${item.id }" name="Sale_Pop" class="prd_thumb goodsList">
                <span class="thumb_flag best">${idx.count}</span>
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
              <button class="btn_zzim jeem <c:if test="${item.wished eq 'true'}">on</c:if>" data-ref-goodsno="${item.id }">
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
                <c:if test="${item.marketPrice eq item.originPrice}">
                  <span class="icon_flag"></span>
                </c:if>
              </p>
            </div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <form id="actionForm" action="/best" method="get">
      <input type="hidden" name="cateId" value="${pageMaker.cri.cateId }" />
    </form>
  </div>
</div>
<script src="/resources/js/wishList.js" defer></script>
<script type="text/javascript">
	$(document).ready(function() {
		const userId =
			<sec:authorize access="isAnonymous()">
				"";
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				"<sec:authentication property="principal.user.user_id"/>";
			</sec:authorize>
		const actionForm = $('#actionForm');
		$('.common-menu ul li > button').click(function(e) {
			e.preventDefault();
			actionForm.find("input[name='cateId']").val($(this).data("cid"));
			actionForm.submit();

		})
		$('.btn_zzim').click(function(e){
			if(userId == ''){
				alert("로그인이 필요한 서비스 입니다.");
				return;
			}
			let btn = $(this);
			let prodId = $(this).data('ref-goodsno');
			console.log(prodId);
			wishService.toggleWish({
			    userId: userId, 
			    prodId:prodId,
			   },function(data){
			    console.log("result : ",data);
			   	if(data == 1){
			    	btn.addClass('on');
			    	alert('찜하기 완료')
			    }else if(data == 0){
			    	btn.removeClass('on');
			    	alert('찜하기 해제')
			    }
			 })
					
		})
	})
</script>
<%@ include file="../includes/footer.jsp"%>