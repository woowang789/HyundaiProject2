<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id=" Container">
  <div id="Contents">
    <div class="titBox">
      <h1>
        <c:out value="${p_categ[0].catePname}" />
      </h1>
    </div>
    <ul class="cate_list_box">
      <li class="<c:if test="${p_categ[0].catePid eq pageMaker.cri.cateId}" >
			<c:set var="title" value="${p_categ[0].catePname}" />on</c:if>">
        <a href="javascript:;" data-cid="<c:out value="${p_categ[0].catePid}"/>">전체</a>
      </li>
      <c:forEach var="item" items="${p_categ}">
        <li class="<c:if test="${item.cateId eq pageMaker.cri.cateId}" ><c:set var="title" value="${item.cateName}" />on</c:if>">
          <a href="javascript:;" data-cid="<c:out value="${item.cateId}"/>">
            <c:out value="${item.cateName}" />
          </a>
        </li>
      </c:forEach>
    </ul>
    <p class="cate_info_tx">
      ${title } 카테고리에
      <span> ${pageMaker.total} </span>
      개의 상품이 등록되어 있습니다.
    </p>
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
        <button class="btn_thumb  active" data-view-cnt="4">컬럼형식으로 보기</button>
        <button class="btn_list" data-view-cnt="1">리스트형식으로 보기</button>
      </div>
    </div>
    <ul class="cate_prd_list gtm_cate_list">
      <c:forEach var="ctgy" items="${categories}" varStatus="status">
        <li criteo-goods="<c:out value="${ctgy.id}" />" class="flag" data-index="0">
          <div class="prd_info ">
            <a href="/product-detail?pid=<c:out value="${ctgy.id}"  />" name="Cat100000100010008_MID" class="prd_thumb goodsList" data-ref-goodsno="A000000117541" data-attr="카테고리상세^검색결과상품_인기순^우르오스 올인원 200ml 2종 택 1^1"
              data-ref-dispcatno="100000100010008" data-ref-itemno="001" data-trk="Drawer/Cat100000100010008_MID" data-impression="A000000117541^카테고리상세_검색결과상품_인기순^1"
              onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000117541&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;카테고리상세_검색결과상품&quot;, &quot;1&quot;);" data-impression-visibility="1"
            >
              <img src="<c:out value="${ctgy.thumb}" />
                     alt=" 우르오스 올인원 200ml 2종 택 1" onerror="common.errorImg(this);">
            </a>
            <div class="prd_name">
              <a href="/product-detail?pid=<c:out value="${ctgy.id}"  /> name="Cat100000100010008_MID" class="goodsList" data-ref-goodsno="A000000117541" data-attr="카테고리상세^검색결과상품_인기순^우르오스 올인원 200ml 2종 택 1^1" data-ref-dispcatno="100000100010008" data-ref-itemno="001"
                data-trk="Drawer/Cat100000100010008_MID" onclick="javascript: gtm.goods.callGoodsGtmInfo(&quot;A000000117541&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;카테고리상세_검색결과상품&quot;, &quot;1&quot;);"
              >
                <span class="tx_brand">
                  <c:out value="${ctgy.brandName}" />
                </span>
                <p class="tx_name">
                  <c:out value="${ctgy.name}" />
                </p>
              </a>
            </div>
            <button class="btn_zzim jeem <c:if test="${ctgy.wished eq true }"> on</c:if>" data-ref-goodsno="<c:out value="${ctgy.id}" />">
              <span>찜하기전</span>
            </button>
            <p class="prd_price">
              <c:if test="${ctgy.originPrice ne ctgy.marketPrice}">
                <span class="tx_org">
                  <span class="tx_num">
                    <fmt:formatNumber value="${ctgy.originPrice}" />
                  </span>
                  원
                </span>
              </c:if>
              <span class="tx_cur">
                <span class="tx_num">
                  <fmt:formatNumber value="${ctgy.marketPrice}" />
                </span>
                원
              </span>
            </p>
            <p class="prd_flag" style="height: 20.31px">
              <c:if test="${ctgy.originPrice ne ctgy.marketPrice}">
                <span class="icon_flag sale" >세일</span>
              </c:if>
              <c:if test="${ctgy.originPrice eq ctgy.marketPrice}">
                <span style="height: 20.31px"></span>
              </c:if>
            </p>
            <p class="prd_btn_area">
              <button class="btn_new_pop goodsList" onclick="window.open('/product-detail/?pid=${ctgy.id} ')" name="Cat100000100010008_Small">새창보기</button>
            </p>
        </li>
      </c:forEach>
    </ul>
  </div>
  <form id="actionForm" action="/category" method="get">
    <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" />
    <input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
    <input type="hidden" name="sort" value="${pageMaker.cri.sort }" />
    <input type="hidden" name="catePid" value="${pageMaker.cri.catePid }" />
    <input type="hidden" name="cateId" value="${pageMaker.cri.cateId }" />
  </form>
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
</div>
<script src="/resources/js/wishList.js" defer></script>
<script type="text/javascript">
	$(document).ready(function() {
		$.ajaxSetup({
			  beforeSend: function(xhr) {
			      xhr.setRequestHeader("AJAX", true);
			      var csrfToken = '${_csrf.token}';
			      xhr.setRequestHeader("X-CSRF-TOKEN", csrfToken);
			  }
		});
		
				const userId =
					<sec:authorize access="isAnonymous()">
						"";
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						"<sec:authentication property="principal.user.user_id"/>";
					</sec:authorize>
				const actionForm = $('#actionForm');
				$('.pageing a').click(
						function(e) {
							e.preventDefault();
							actionForm.find("input[name='pageNum']").val($(this).attr("href"));
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

						$(".gtm_cate_list").addClass('list_type')
					}
				})
				$('.btn_thumb').click(function(e) {
					if ($(this).hasClass('active')) {
					} else {
						$(".btn_list").removeClass('active')
						$(this).addClass('active')
						$(".gtm_cate_list").removeClass('list_type')
					}
				})
				$('.align_sort>ul>li>a').click(function(e){
					e.preventDefault();
					actionForm.find("input[name='sort']").val(
							$(this).attr("data-prdsoting"));
					actionForm.submit();

				})
				$('.cate_list_box>li>a').click(function(e){
					e.preventDefault();
					actionForm.find("input[name='cateId']").val(
							$(this).data("cid"));
					actionForm.find("input[name='pageNum']").val(1);
					
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