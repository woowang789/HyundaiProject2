<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	</ul>
</div>

<div class="pageing">
</div>

</div>
</div>
</div>
<script src="/resources/js/wishList.js" defer></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajaxSetup({
			  beforeSend: function(xhr) {
			      xhr.setRequestHeader("AJAX", true);
			      var csrfToken = '${_csrf.token}';
			      xhr.setRequestHeader("X-CSRF-TOKEN", csrfToken);
			  }
		});
		
		
		const userId = "<sec:authentication property="principal.user.user_id"/>";
		let pageNum = 1;
		const wishUL = $('.cate_prd_list');
		const pageingUL = $('.pageing');
		const baseWish = `
		      <li data-goods-no="{prodId}">
	        <div class="prd_info">
	          <a href="javascript:;" class="prd_thumb goodsList" data-ref-goodsno="{prodId}" data-ref-itemno="001">
	            <img src="{prodThumb}">
	          </a>
	          <div class="prd_name">
	            <a href="javascript:;" class="goodsList" data-ref-goodsno="{prodId}" data-ref-itemno="001">
	              <span class="tx_brand">{prodBrandName}</span>
	              <p class="tx_name">{prodName}</p>
	            </a>
	          </div>
	          <button class="btn_zzim jeem {prodWished}" data-ref-goodsno="{prodId}">
            	<span>찜하기후</span>
          	  </button>
	          
	          <p class="prd_price">
	            <span class="tx_org">
	              <span class="tx_num">{prodOriginPrice}</span>
	              원 ~
	            </span>
	            <span class="tx_cur">
	              <span class="tx_num">{prodMarketPrice}</span>
	              원 ~
	            </span>
	          </p>
	        </div>
	      </li>
	      `;
	      
	    showList(pageNum);
	    
	    pageingUL.on('click', 'a',function(e){
	    	e.preventDefault();
	    	
	    	let targetPageNum = $(this).attr('href');
	    	pageNum = targetPageNum;
	    	showList(pageNum);
	    });
		
		function showList(page){
			let str = '';
			
			wishService.getList({page:page||1, userId: userId }, function(count,list){
				console.log(count);
				console.log(list);
				
				for(let i = 0, len = list.length||0; i<len; i++){
					str += baseWish
							.replaceAll('{prodId}',list[i].id)
							.replace('{prodThumb}', list[i].thumb)
							.replace('{prodBrandName}',list[i].brandName)
							.replace('{prodName}',list[i].name)
							.replace('{prodWished}',list[i].wished? 'on':'')
							.replace('{prodOriginPrice}', list[i].originPrice)
							.replace('{prodMarketPrice}', list[i].marketPrice);
				}
				wishUL.html(str);
				showPaging(count);
				
				$('.goodsList').click(function(e){
					e.preventDefault();
					location.href= '/product-detail?pid='+$(this).data('ref-goodsno');
				});
				
			    $('.prd_info .btn_zzim').click(function(e){
			    	e.preventDefault();
			    	
			    	wishService.toggleWish({
			    		userId: userId, 
			    		prodId:$(this).data('ref-goodsno')
			    		},function(data){
			    			console.log("result : ",data);
			    			showList(pageNum);
			    		})
			    })
			})
		}
		
		function showPaging(count){
			let endNum = Math.ceil(pageNum / 8.0) * 8;
			let startNum = endNum - 7;
			
			let prev = startNum != 1;
			let next = false;
			
			if(endNum * 8 >= count){
				endNum = Math.ceil(count/8.0);
			}
			if(endNum * 8 < count){
				next = true;
			}
			let str = `<div class="pageing">`;
			if(prev) 
				str += `<a class="prev" href="{prev}">이전 10 페이지</a>`
						.replace('{prev}', startNum-1);
			for(let i = startNum; i<= endNum; i++){
				let tmp = "";
				if(pageNum == i)
					tmp = `<strong title="현재 페이지">{num}</strong>`;
				else
					tmp = `<a href="{num}">{num}</a>`;
				str += tmp.replaceAll("{num}", i);
			}
			if(next)
				str += `<a class="next" href="{end}">다음 10 페이지</a>`
						.replace('{end}',endNum+1);
			str+= '</div>';
			
			console.log(str);
			
			pageingUL.html(str);
		}
		
		
	})
</script>
<%@ include file="../includes/footer.jsp"%>