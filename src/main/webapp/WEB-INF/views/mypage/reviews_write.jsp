<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="my_top.jsp"%>
    <div class="title-area linezero">
      <h2 class="tit">리뷰</h2>
    </div>

    <ul class="comm1sTabs mgzero">
      <li class="on" title="선택됨"><a href="javascript:void(0);" data-attr="리뷰^리뷰_SortingTab^리뷰 작성">리뷰 작성</a></li>
      <li><a href="/mypage/reviews-completion">나의 리뷰</a></li>
    </ul>
    <ul class="dot_list">
      <li>리뷰는 배송 완료 후 90 일 이내 작성 가능합니다. (매장구매는 결제완료 시)</li>
      <li></li>
      <li>올리브영 리뷰 정책에 반하는 리뷰의 경우, 사전 고지 없이 블라인드 처리 될 수 있습니다.
      </li>

    </ul>
    <input type="hidden" id="gdasSort" name="gdasSort" value="recent">
    <div class="reviewN2_list_title">
      <div class="list_title">
        <p>작성 가능 리뷰 건수 <span>11</span>건</p>
      </div>
    </div>
    <table class="board-list-2s mgT20 new">
      <caption>상품, 작성기간, 리뷰 작성으로 이루어진 리뷰 목록 표</caption>
      <colgroup>
        <col style="width:62%;">
        <col style="width:21%;">
        <col style="width:17%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">상품</th>
          <th scope="col">작성기간</th>
          <th scope="col">리뷰 작성</th>
        </tr>
      </thead>
      <tbody id="tbGdast">
		<c:forEach items="${reviews }" var="review">
	        <tr>
	          <td class="subject">
	            <div class="area">
	              <a class="thum" href="<c:out value="${review.productId }"/>"
	                data-attr="리뷰^리뷰상품^상품클릭">
	                <img src="<c:out value="${review.productThumb }"/>">
	              </a>
	              <div class="textus">
	                <dl class="data review-data">
	                  <dt>주문일자</dt>
	                  <dd>
	                  <fmt:formatDate value="${review.orderDate}" pattern="yyyy.MM.dd" />
	                  </dd>
	                </dl>
	                <a class="" href="<c:out value="${review.productId }"/>">
	                  <span class="tit"><c:out value="${review.brandName }"/></span>
	                  <span class="txt oneline"><c:out value="${review.productName }"/></span>
	                  <p class="txt_option"><em>옵션</em><c:out value="${review.optionName}"/></p>
	                </a>
	              </div>
	            </div>
	          </td>
	          <td class="col777"><strong>~ 2022.12.30</strong></td>
	          <td 
	          	data-goods-no="<c:out value="${review.productId }"/>"
	          	data-option-no="<c:out value="${review.optionId }"/>"
	          >
	            <button type="button" class="btn-review--small">리뷰 작성</button>
	          </td>
	        </tr>
		</c:forEach>

      </tbody>
    </table>
    
  </div>
  </div>
  </div>
  </div>

<script type="text/javascript" src="/resources/js/productService.js" defer> </script>
<script type="text/javascript" src="/resources/js/review.js" defer> </script>
<script type="text/javascript">
	$(document).ready(function(){
// 		console.log(writeBase);
		$('.btn-review--small').click(function(){
			let td = $(this).closest('td');
			let prodId = td.data('goods-no');
			let optId = td.data('option-no')
			productService.get({
				productId : prodId, optionId: optId 
			},function(data){
				console.log(data);
			})
			
		})
	})
</script>
<%@ include file="../includes/footer.jsp"%>