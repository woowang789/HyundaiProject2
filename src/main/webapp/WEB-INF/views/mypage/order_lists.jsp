<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ include file="my_top.jsp"%>

			<div class="title-area2">
				<h2 class="tit">주문/배송 조회</h2>
			</div>
			<div class="layer_pop_wrap" id="service_survey" style=""></div>

			<fieldset class="search-period mgT30">
				<legend></legend>
				<!-- 2019.10.20 오프라인리뷰관련 추가 -->

				<div class="select_con">
					<p>구매기간</p>
					<ul class="select-month">
						<!-- 			[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 -->
						
						<li class="
							<c:if test="${pageMaker.cri.type == '-1'}" >
								<c:out value="on"/>
							</c:if>
						">
							<button type="button" data-month="-1">1개월</button>
						</li>
						<li class="
							<c:if test="${pageMaker.cri.type == '-3'}" >
								<c:out value="on"/>
							</c:if>
						"><button type="button" data-month="-3">3개월</button></li>
						<li class="
							<c:if test="${pageMaker.cri.type == '-6'}" >
								<c:out value="on"/>
							</c:if>
						"><button type="button" data-month="-6">6개월</button></li>
						<li class="
							<c:if test="${pageMaker.cri.type == '-12'}" >
								<c:out value="on"/>
							</c:if>
						"><button type="button" data-month="-12">12개월</button>
						</li>
					</ul>
				</div>
				<!-- //오프라인 리뷰 -->
				<!-- 2016-12-23 수정 -->
				<button type="button" class="btnLookup" id="do-search-period">
					조회</button>
			</fieldset>
			<table class="board-list-2s mgT20">
				<caption>주문일자, 상품, 수량, 주문금액, 상태로 이루어진 주문/배송/내역 목록 표</caption>
				<colgroup>
					<col style="width: 17%" />
					<col style="width: %" />
					<col style="width: 8%" />
					<col style="width: 130px" />
					<col style="width: 110px" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col">주문일자</th>
						<th scope="col">상품</th>
						<th scope="col">수량</th>
						<th scope="col">주문금액</th>
						<th scope="col">상태</th>
					</tr>
				</thead>

				<tbody class="history">
				<c:forEach items="${list }" var="orderItem">
					<tr>
						<td rowspan="<c:out value="${fn:length(orderItem.list)}"/>">
							<ul class="mypage-flag-apply">
								<li class="order-date"><fmt:formatDate value="${orderItem.orderDate }" pattern="yyyy.MM.dd"/></li>

								<li class="color1s"><c:out value="${orderItem.orderId }"/></li>

								<li></li>
							</ul>
						</td>
						<td class="subject">
							<div class="area">
								<a class="thum"
									href="javascript:common.link.moveGoodsDetail('A000000175772','', 'Order');">
									<img
									src="<c:out value="${orderItem.list[0].thumb }"/>"
									alt="[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)"
									onerror="common.errorImg(this);" />
								</a>
								<div class="textus">
									<a class=""
										href="javascript:common.link.moveGoodsDetail('A000000175772','', 'Order');">
										<span class="tit"><c:out value="${orderItem.list[0].brandName }"/> </span> 
										<span class="txt"><c:out value="${orderItem.list[0].name }"/></span>
									</a>
								</div>
							</div>
						</td>
						<td class=""><c:out value="${orderItem.list[0].qty }"/></td>
						<td class="colorOrange">
							<!--  오프라인구매용 금액 --> <strong>
							<fmt:formatNumber type="number" maxFractionDigits="3" value="${orderItem.list[0].marketPrice * orderItem.list[0].qty}" />
							</strong> 원
						</td>

						<td><strong>배송완료</strong> <!-- 2019.10.18 오프라인리뷰관련 추가 온라인구매인 경우에만 배송조회가 버튼 노출 -->
						</td>
					</tr>
					<c:forEach items="${orderItem.list }" var="product" begin="1" >
						<tr>
							<td class="subject lineLeft">
								<div class="area">
									<a class="thum"
										href="javascript:common.link.moveGoodsDetail('A000000175617','', 'Order');">
										<img
										src="<c:out value="${product.thumb }"/>"
										alt="[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)"
										onerror="common.errorImg(this);" />
									</a>
									<div class="textus">
										<a class=""
											href="javascript:common.link.moveGoodsDetail('A000000175617','', 'Order');">
											<span class="tit"><c:out value="${product.brandName }"/> </span> 
											<span class="txt"><c:out value="${product.name }"/> </span>
										</a>
										
										<span class="color1sSize">
										<i class="tit">옵션</i><c:out value="${product.optionName }"/></span>
									</div>
								</div>
							</td>
							<td class=""><c:out value="${product.qty }"/> </td>
							<td class="colorOrange">
								<strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.marketPrice * product.qty}" /> </strong> 원
							</td>
	
							<td><strong>배송완료</strong> <!-- 2019.10.18 오프라인리뷰관련 추가 온라인구매인 경우에만 배송조회가 버튼 노출 -->
							</td>
						</tr>
					</c:forEach>
				</c:forEach>
					
				</tbody>
			</table>

	<div class="pageing">
		<c:if test="${pageMaker.prev }">
			<a class="prev" href="<c:out value="${pageMaker.startPage-1}"/>">
			이전 10 페이지</a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
			<c:if test="${pageMaker.cri.pageNum == num }" >
				<strong title="현재 페이지">
				<c:out value="${pageMaker.cri.pageNum }" /></strong>
			</c:if>
			<c:if test="${pageMaker.cri.pageNum != num }" >
				<a href='<c:out value="${num }" />' ><c:out value="${num }" /></a>
			</c:if>
		</c:forEach>
		<c:if test="${pageMaker.next }">
			<a class="next" href="<c:out value="${pageMaker.endPage+1}"/>">
				다음 10 페이지</a>
		</c:if>
	</div>
			
			<form id="actionForm" method="get" action="/mypage/order-lists">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" />
				<input type="hidden" name="amount" value="${pageMaker.cri.amount }" />
				<input type="hidden" name="type" value="${pageMaker.cri.type }" />
			</form>
</div>

</div>
</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		const actionForm = $('#actionForm');
		$('.pageing a').click(function(e){
			e.preventDefault();
			console.log($(this).attr('href'));
			$('#actionForm input[name="pageNum"]').val($(this).attr('href'));
			actionForm.submit();
		});
		
		$('.select-month li button').click(function(e){
			$('#actionForm input[name="pageNum"]').val(1);
			$('#actionForm input[name="type"]').val($(this).data('month'));
			actionForm.submit();
		})
	});
</script>
<%@ include file="../includes/footer.jsp"%>
