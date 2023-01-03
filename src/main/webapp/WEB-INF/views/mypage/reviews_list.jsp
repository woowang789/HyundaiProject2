<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>
  <div class="mypage-conts">
    <div class="title-area linezero">
      <h2 class="tit">리뷰</h2>
    </div>
    <ul class="comm1sTabs mgzero">
      <li><a href="/mypage/reviews">리뷰 작성</a></li>
      <li class="on" title="선택됨"><a href="javascript:void(0);" data-attr="리뷰^리뷰_SortingTab^나의 리뷰">나의 리뷰</a></li>
    </ul>
    <ul class="dot_list">
      <li>리뷰 정책 위반으로 블라인드된 리뷰는 상품상세페이지 리뷰목록에 노출되지 않습니다.<br>
        블라인드 리뷰 운영정책을 확인해주세요.</li>
    </ul>
    <div class="con_txt">
      <h3 class="tit">누적 리뷰 건수<span>2</span>건</h3>
    </div>
    <table class="board-list-2s mgT20 new board-list-2s_myreview">
      <caption>상품, 리뷰로 이루어진 리뷰 목록 표</caption>
      <colgroup>
        <col style="width:359px;">
        <col style="width:310px;">
        <col style="width:auto">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">상품</th>
          <th scope="col" colspan="2">리뷰</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${reviews }" var="review">
	        <tr>
	          <td class="subject">
	            <div class="area">
	              <div class="area">
	                <a class="thum" href="<c:out value="${review.productId }"/>">
	                  <img src="<c:out value="${review.productThumb}"/>">
	                </a>
	                <div class="textus">
	                  <dl class="data review-data">
	                    <dt>구매일자</dt>
	                    <dd><fmt:formatDate value="${review.orderDate}" pattern="yyyy.MM.dd" />
	                      <span>매장</span>
	                    </dd>
	                  </dl>
	                  <a class="" href="<c:out value="${review.productId }"/>">
	                    <span class="tit"><c:out value="${review.brandName }"/></span>
	                    <span class="txt oneline"><c:out value="${review.productName }"/></span>
	                  </a>
	                </div>
	              </div>
	            </div>
	          </td>
	          <td class="subject">
	            <div class="area">
	              <div class="textus" style="width:90%;">
	                <dl class="data review-data">
	                  <dt>작성일자</dt>
	                  <dd><fmt:formatDate value="${review.reivewDate}" pattern="yyyy.MM.dd" /></dd>
	                </dl>
	                <div class="rating">
	                  <span class="txt">
	                  </span>
	                  <span class="point pt<c:out value="${reivew.reviewScore}"/>"></span>
	                </div>
	                <div class="review-flag-wrap">
	                </div>
	                <span class="link " data-gdas-seq="16654086" data-ord-no="12022121413110306100200056"
	                  data-goods-no="A000000176104" data-gdas-tp-cd="20" data-gdas-sct-cd="60">
	                  <c:out value="${review.reviewContent}"/>
	                </span>
	              </div>
	            </div>
	          </td>
	          <td>
	            <button type="button" class="btn-review--small">리뷰수정</button><br>
	            <br>
	          </td>
	        </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  
</div>
</div>
</div>

<%@ include file="../includes/footer.jsp"%>
