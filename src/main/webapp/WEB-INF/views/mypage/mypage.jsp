<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>

  <div class="title-area mgT15">
    <h2 class="tit">좋아요</h2>
  </div>
  <div class="list-four">
    <!-- 상품 3개 list-three, 상품 4개 list-four -->
    <ul class="cate_prd_list" id="wishList" name="wishList">
      <!-- 상품 4개 일때 -->
      <c:forEach items="${list}" var="product">
	      <li data-goods-no="<c:out  value="${product.id}"/>">
	        <div class="prd_info">
	          <a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="<c:out  value="${product.id}"/>" data-ref-itemno="001">
	            <img src="<c:out value="${product.thumb}"/>">
	          </a>
	          <div class="prd_name">
	            <a href="javascript:;" class="goodsList" data-ref-goodsno="<c:out  value="${product.id}"/>" data-ref-itemno="001">
	              <span class="tx_brand"><c:out value="${product.brandName }"/></span>
	              <p class="tx_name"><c:out value="${product.name }"/></p>
	            </a>
	          </div>
	          <c:if test="${product.wished }">
	          	<button class="btn_zzim jeem on" data-ref-goodsno="<c:out  value="${product.id}"/>">
	            	<span>찜하기후</span>
	          	</button>
	          </c:if>
	          <c:if test="${!product.wished }">
	          	 <button class="btn_zzim jeem" data-ref-goodsno="<c:out  value="${product.id}"/>">
	            	<span>찜하기전</span>
	          	</button>
	          </c:if>
	          
	          <p class="prd_price">
	            <span class="tx_org">
	              <span class="tx_num"><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.originPrice }" /></span>
	              원 ~
	            </span>
	            <span class="tx_cur">
	              <span class="tx_num"><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.marketPrice }" /></span>
	              원 ~
	            </span>
	          </p>

	        </div>
	      </li>
      </c:forEach>
      
    </ul>
  </div>
  
  	<form id="actionForm" action="/mypage" method="get">
		<input type="hidden" name="a" value="${pageMaker.cri.pageNum }" />
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
	</form>
  
  	<div class="pageing">
  	<c:if test="${pageMaker.prev }">
  		<a class="prev" href="${pageMaker.startPage-1 }">이전 10 페이지</a>	
  	</c:if>
  	<c:forEach var="num" begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }">
		<a  href="${num }">${num }</a>
	</c:forEach>
	<c:if test="${pageMaker.next }">
		<a class="next" href="${pageMaker.endPage+1 }">다음 10 페이지</a>
	</c:if>
	</div>
	
</div>
</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		const actionForm = $('#actionForm');
		$('.pageing a').click(function(e){
			e.preventDefault();
			actionForm
				.find("input[name='pageNum']")
				.val($(this).attr("href"));
			actionForm.submit();
		})
		
		
	})
</script>
<%@ include file="../includes/footer.jsp"%>