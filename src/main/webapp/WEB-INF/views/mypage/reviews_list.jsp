<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>
    <div class="title-area linezero">
      <h2 class="tit">리뷰</h2>
    </div>
    <ul class="comm1sTabs mgzero">
      <li><a href="/mypage/reviews-write">리뷰 작성</a></li>
      <li class="on" title="선택됨"><a href="javascript:void(0);" data-attr="리뷰^리뷰_SortingTab^나의 리뷰">나의 리뷰</a></li>
    </ul>
    <ul class="dot_list">
      <li>리뷰 정책 위반으로 블라인드된 리뷰는 상품상세페이지 리뷰목록에 노출되지 않습니다.<br>
        블라인드 리뷰 운영정책을 확인해주세요.</li>
    </ul>
    <div class="con_txt">
      <h3 class="tit">누적 리뷰 건수<span><c:out value="${pageMaker.total }"/></span>건</h3>
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
	                  <dd><fmt:formatDate value="${review.reviewDate}" pattern="yyyy.MM.dd" /></dd>
	                </dl>
	                <div class="rating">
	                  <span class="txt">
	                  </span>
	                  <span class="point pt<c:out value="${review.reviewScore}"/>"></span>
	                </div>
	                <div class="review-flag-wrap">
	                </div>
	                <span class="link " data-ord-no="<c:out value="${review.orderId }"/>"
	                  data-goods-no="<c:out value="${review.productId }"/>"  data-option-no="<c:out value="${review.optionId }"/>">
	                  <c:out value="${review.reviewContent}"/>
	                </span>
	              </div>
	            </div>
	          </td>
	          <td>
	            <button type="button" class="btn-review--small"
	            data-goods-no="<c:out value="${review.productId }"/>"  
	            data-option-no="<c:out value="${review.optionId }"/>"
	            data-ord-no="<c:out value="${review.orderId }"/>"
	            data-content="<c:out value="${review.reviewContent}"/>"
	            data-img="<c:out value="${review.reviewImg}"/>"
	            data-score="<c:out value="${review.reviewScore}"/>"
	            >리뷰수정</button><br>
	            <br>
	          </td>
	        </tr>
        </c:forEach>
      </tbody>
    </table>
    	
<div class="pageing">
			<c:if test="${pageMaker.prev }">
				<a class="prev" href="<c:out value="${pageMaker.startPage-1}"/>">다음 10 페이지</a>
			</c:if>
			<c:forEach var="num" begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }">
				<c:if test="${num == pageMaker.cri.pageNum }">
				 	<strong title="현재 페이지"><c:out value="${num }"/></strong>
				</c:if>
				<c:if test="${num != pageMaker.cri.pageNum }">
				 	<a href="<c:out value="${num}"/>"><c:out value="${num}"/></a>
				</c:if>
			</c:forEach>
			<c:if test="${pageMaker.next }">
				<a class="next" href="<c:out value="${pageMaker.endPage+1}"/>">다음 10 페이지</a>
			</c:if>
	
	</div>
    
  </div>
</div>
</div>
</div>
  <form id="actionForm" action="/mypage/reviews-completion" method="get">
  	 	<input type="hidden" name="pageNum">
  </form>

  <form id="reviewForm" action="/mypage/reviews-write" method="post">
  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  	<input type="hidden" name="orderId">
  	<input type="hidden" name="productId">
  	<input type="hidden" name="optionId">
  	<input type="hidden" name="reviewContent">
  	<input type="hidden" name="reviewScore">
  	<input type="hidden" name="reviewImg">
  	<input type="hidden" name="redirect" value="/mypage/reviews-completion">
  </form>
<script type="text/javascript" src="/resources/js/productService.js" defer> </script>
<script type="text/javascript" src="/resources/js/review.js" defer> </script>
<script>
$(document).ready(function(){
	
	$.ajaxSetup({
		  beforeSend: function(xhr) {
		      xhr.setRequestHeader("AJAX", true);
		      var csrfToken = '${_csrf.token}';
		      xhr.setRequestHeader("X-CSRF-TOKEN", csrfToken);
		  }
	});
	
	$('.thum').click(function(e){
		e.preventDefault();
		location.href='/product-detail?pid='+$(this).attr('href');
	})
	
	$('.pageing a').click(function(e){
		e.preventDefault();
		let n = $(this).attr('href');
		$('#actionForm input[name="pageNum"]').val(n);
		$('#actionForm').submit();
	})
	
	
	const reviewForm = $('#reviewForm');
	$('.btn-review--small').click(function(e){
		let prodId = $(this).data('goods-no');
		let optId = $(this).data('option-no');
		let ordId = $(this).data('ord-no');
		
		let content = $(this).data('content');
		let img = $(this).data('img');
		let score = $(this).data('score'); 
		
		console.log(prodId, optId, ordId);
		productService.get({
			productId : prodId, optionId: optId 
		},function(data){
			console.log(data);
			let tmp = writeBase
				.replaceAll('{prodId}',data.id)
				.replaceAll('{prodThumb}',data.thumb)
				.replaceAll('{brandName}', data.brandName)
				.replaceAll('{prodName}',data.name)
				.replaceAll('{optionName}',data.oname);
			
			$('body').prepend(tmp);
			// content 붙이기
			$('#txtGdasCont').val(content);
			// star 세팅
			$('.star').each(function(idx,item){
				$(this).closest("ul").find('li').each(function(i,t){
					if(i < score)
						$(t).addClass('on');
				})
			})
			//이미지 세팅
			if(img != ''){
				let path = '/api/image/display?fileName='+img;
				let imgTag = '<img src="'+path+'"/>'
				let removeBtn = `<button class="btn-del">삭제</button>`
				
				$('.imgArea1').append(imgTag);
				$('.imgArea1').append(removeBtn);
				$('.btn_img_add').css('display','none');
				reviewForm.find('input[name="reviewImg"]').val(img);
				
				//사진 삭제 버튼을 누르면
				$('.btn-del').click(function(){
					$(this).siblings('img').remove();
					$(this).siblings('button').css('display','block');
					$('#tmpFile1').val(null);
					img = null;
					$(this).remove();
				})
			}
			
			
			
			$('.gdasWriteLayer').click(function(){
				$(this).closest('.popup-contents').remove();
			})
			// 별 눌렀을 때
			$('.star').each(function(idx,item){
				$(item).val(idx+1);
				
				$(item).click(function(e){
					score = $(item).val();
					$(this).closest("ul").find('li').each(function(i,t){
						$(t).removeClass('on');
						if(i <= idx)
							$(t).addClass('on');
					})
				});
			})
			
			// 리뷰 등록
			$('#btnGdasReg').click(function(e){
					console.log('submit review');
					console.log("img : "+img);
					
					if($('#txtGdasCont').val() == ''){
						alert("내용을 입력해주세요");
						return;
					}
					reviewForm.find('input[name="productId"]').val(data.id);
					reviewForm.find('input[name="optionId"]').val(data.oid);
					reviewForm.find('input[name="orderId"]').val(ordId);
					reviewForm.find('input[name="reviewContent"]').val($('#txtGdasCont').val());
					reviewForm.find('input[name="reviewImg"]').val(img);
					reviewForm.find('input[name="reviewScore"]').val(score);
					
					reviewForm.submit();
			})
			//사진 선택
			$('.btn_img_add').click(function(){
				console.log('add img');
				$('#tmpFile1').click();
			})
			
			//사진이 선택 되면
			$('#tmpFile1').change(function(data){
				if(data != null){
					console.log(this.files[0]);
						
					let formData = new FormData();
					formData.append("uploadFile", this.files[0]);
					$.ajax({
						url: '/api/image/upload',
						processData : false,
						contentType : false,
						data: formData,
						type:'POST',
						success: function(result){
							let path = '/api/image/display?fileName='+result;
							let imgTag = '<img src="'+path+'"/>'
							let removeBtn = `<button class="btn-del">삭제</button>`
								
							$('.imgArea1').append(imgTag);
							$('.imgArea1').append(removeBtn);
							$('.btn_img_add').css('display','none');
							img = result;
							
							//사진 삭제 버튼을 누르면
							$('.btn-del').click(function(){
								$(this).siblings('img').remove();
								$(this).siblings('button').css('display','block');
								$('#tmpFile1').val(null);
								img = null;
								$(this).remove();
							})
						}
					})
				}
					
			})
			
		})
	})
})
</script>

<%@ include file="../includes/footer.jsp"%>
