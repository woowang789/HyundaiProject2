<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
	<!-- #Contents -->
		<div id="Contents">
			<!-- title_box -->
			<div class="title_box">
				<h1>
					장바구니 <span class="tx_num"><span class="list_count">3</span></span>
				</h1>
				<ul class="step_list">
					<li class="on"><span class="hide">현재단계</span> <span
						class="step_num tx_num">1</span> 장바구니</li>
					<li><span class="step_num tx_num">2</span> 주문/결제</li>
					<li class="last"><span class="step_num tx_num">3 </span> 주문완료
					</li>
				</ul>
			</div>

			<ul class="comm5sTabs" id="ulDelivGb">
				<li quickyn="N" class="on">
					<button type="button" data-attr="장바구니^Tab^일반 배송" title="선택됨">
						일반 배송 (<span class="list_count">3</span>)
					</button>
				</li>
			</ul>

			<h2 class="sub-title2">올리브영 배송상품</h2>
			<table class="tbl_prd_list tableFix">
				<caption>상품정보, 판매가, 수량, 구매가, 배송정보, 선택으로 이루어진 올리브영 배송상품
					장바구니 목록 표</caption>
				<colgroup>
					<col style="width: 40px" />
					<col style="width: *" />
					<col style="width: 110px" />
					<col style="width: 100px" />
					<col style="width: 110px" />
					<col style="width: 120px" />
					<col style="width: 150px" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col"><input type="checkbox" checked=""
							id="inp_allRe1" name="" value="" title="올리브영 배송상품 전체 선택" /></th>
						<th scope="col">상품정보</th>
						<th scope="col">판매가</th>
						<th scope="col">수량</th>
						<th scope="col">구매가</th>
						<th scope="col">배송정보</th>
						<th scope="col">선택</th>
					</tr>
				</thead>
				<tbody>
					<!-- ajax 통신 -->
				</tbody>
			</table>
			<div class="basket_price_info">
				<div class="btn_area">
					<button type="button" class="btnSmall wGray type2" id="partDelBtn1"
						name="partDelBtn">
						<span>선택상품 삭제</span>
					</button>
				</div>
				<div class="sum_price">
					총 판매가 <span class="tx_num total_market"></span> 원 <span
						class="tx_sign minus">-</span> 총 할인금액 <span
						class="tx_num total_minus"></span> 원 <span
						class="tx_sign plus">+</span> 배송비 <span class="tx_num">0</span> 원
					<span class="tx_sign equal">=</span> <span class="tx_total_price">
						총 결제금액 <span class="tx_price"> <span
							class="tx_num total_result"></span> 원
					</span>
					</span>
				</div>
			</div>

			<div class="total_price_info">
				<div class="detail_price">
					<p>
						총 판매가 <span> <span class="tx_num total_market">221,000</span>
							원
						</span>
					</p>
					<span class="tx_sign2 minus">-</span>
					<p class="tx_sale">
						총 할인금액 <span> <span class="tx_num total_minus">59,460</span>
							원
						</span>
					</p>
					<span class="tx_sign2 plus">+</span>
					<p>
						배송비 <span> <span class="tx_num">0</span> 원
						</span>
					</p>
				</div>
				<div class="sum_price">
					<span class="tx_text">배송비는 쿠폰할인금액에 따라 변경될 수 있습니다.</span> 총 결제예상금액 <span
						class="span_quickDeliCharge" style="display: none">최소</span> <span
						class="tx_price"> <span class="tx_num total_result">161,540</span>
						원
					</span>
				</div>
			</div>
			<div class="order_btn_area order_cart">
				<button type="button" class="btnOrange order_btn" name="allOrderBtn"
					data-attr="장바구니^주문유형^전체주문">주문</button>
			</div>

			<!-- 2018-07-09 문구추가 -->
			<div class="cart_comment">
				<p>장바구니 상품은 90일동안, 판매종료 된 상품은 10일동안 보관됩니다.</p>
			</div>
		</div>
	<!-- //#Contents -->
</div>

<form id='cartForm' action="/order-form" method="get">
	
</form>
<script src="/resources/js/cartService.js" defer></script>
<script>
	$(document).ready(function(){
		$.ajaxSetup({
			  beforeSend: function(xhr) {
			      xhr.setRequestHeader("AJAX", true);
			      var csrfToken = '${_csrf.token}';
			      xhr.setRequestHeader("X-CSRF-TOKEN", csrfToken);
			  }
		});
		
		
		const userId = "<sec:authentication property="principal.user.user_id"/>";
		const tBody = $('tbody');
		let baseTr = `
			<tr goodsno="{prodId}" itemno="{optId}" >
            <td colspan="7">
              <div class="tbl_cont_area">
                <div class="tbl_cell w40">
                  <input type="checkbox" originPrice="{originPrice}" marketPrice="{marketPrice}" ordqty="{qty}" stock="{stock}" checked="checked" name="s_checkbox1" soldoutyn="N" class="chkSmall"
                    title="{prodName}"
                  />
                </div>
                <div class="tbl_cell w390">
                  <div class="prd_info">
                    <a class="prd_img" href="{prodId}">
                      <img class="completed-seq-lazyload" alt="상품이미지" src="{prodThumb}"
                      />
                    </a>
                    <a class="prd_name" href="{prodId}">
                      <span class="tx_sale_info"> </span>
                      <!-- 브랜드명 및 할인정보 -->
                      <span id="brandNm">{brandName} </span>
                      <p id="goodsNm">{prodName}</p>
                    </a>
                    <p class="prd_opt">
						<i class="tit">옵션</i><span>{optName}</span>
					</p>
                  </div>
                </div>
                <div class="tbl_cell w110">
					<span class="cur_price">
						<span class="tx_num">{originPriceLocale}</span>원
					</span>
				</div>
                <div class="tbl_cell w100">
					<div class="prd_cnt">
						<input type="text" name="s_amount" prdtp="1" prdcnt="0" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="3" title="수량입력"
						 value='{qty}'>					
					</div>						
				<button type="button" class="btnSmall wGray" style="" name="btnQtyMod"><span>변경</span></button>
				</div>
                <div class="tbl_cell w110">
                `
                 
                let a = `<span class="org_price">
                    <span class="tx_num">{totalOriginLocale}</span>
                    원
                  </span>
                 `
                let b=  `
                  <span class="pur_price">
                    <span class="tx_num">{totalMarketLocale}</span>
                    원
                  </span>
                </div>
                <!-- 2017-01-13 수정 -->
                <div class="tbl_cell w120">
                  <!-- 합배송, 배송 예정 class / sum   delay추가 하기 -->
                  <p class="prd_delivery">
                    <strong id="deliStrongText">무료배송<span class="ex">도서·산간 제외</span></strong>
                  </p>
                </div>
                <!--// 2017-01-13 수정 -->
                <!-- 쇼핑찜 설정 -->
                <div class="tbl_cell w150">
                  <div class="btn_group">
                    <!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 - obj인계 불가능에 따른 고유 ID 선언(즉시 구매 시, find로 찾기 위함) -->
                    <button type="button" class="btnSmall wGray delete" name="btnDelete" data-attr="장바구니^장바구니상품삭제^삭제">
                      <span data-attr="장바구니^장바구니상품삭제^삭제">삭제</span>
                    </button>
                    <!-- 버튼 공간(스페이스바)없이 붙여주세요. -->
                  </div>
                </div>
              </div>
            </td>
          </tr>
		`;
		
		getList();
		
		/*
			전체 선택
		*/
		$('#inp_allRe1').change(function(){
			if($(this).is(':checked')){
				$('.chkSmall').prop('checked',true);
			}else{
				$('.chkSmall').prop('checked',false);
			}
			calTotal();
		})
		
		/*
			부분 삭제
		*/
		$('#partDelBtn1').click(function(e){
			$('.chkSmall:checked').each(function(idx, item){
				let tr = $(this).closest('tr');
				let prodId = tr.attr('goodsno');
				let optId = tr.attr('itemno');
				
				cartService.deleteCart(
						{
							userId : userId, prodId:prodId, optId : optId},
					function(data){
						console.log("delete complete");
						if ($('.chkSmall:checked').length === idx+1) {
							getList();
						}
					})
			})
		})
		/*
			주문버튼
		*/
		$('.order_btn').click(function(e){
			let base = `
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<input type='hidden' name='list[{idx}].pid' value='{prodId}'>
				<input type='hidden' name='list[{idx}].oid' value='{optId}'>
				<input type='hidden' name='list[{idx}].qty' value='{qty}'>
			`;
			e.preventDefault();
			console.log('test');
			let cartForm = $('#cartForm');
			let str = '';
			$('.chkSmall:checked').each(function(idx, item){
				let tr = $(this).closest('tr');
				let prodId = tr.attr('goodsno');
				let optId = tr.attr('itemno');
				let qty = tr.find('.prd_cnt input').val();
				
				str += base.replaceAll('{idx}',idx)
						.replace('{prodId}', prodId)
						.replace('{optId}', optId)
						.replace('{qty}', qty)
			})
			str += `<input type='hidden' name='isCart' value="true">`
			cartForm.html(str);
			
			
			
			cartForm.submit();
		})
		
		/*
			서버에서 카트 데이터 요청
		*/
		function getList(){
			let str = '';
			cartService.getList({		
userId:userId},function (list){
				$('.list_count').text(list.length ||0);
				
				list.forEach((el)=>{
					let t = baseTr;
					if(el.originPrice != el.marketPrice)
						t += a;
					t+=b;
					
					str += t
					.replaceAll('{prodId}', el.id)
						.replaceAll('{optId}', el.oid)
						.replaceAll('{prodName}', el.name)
						.replace('{optName}', el.optionName)
						.replace('{brandName}', el.brandName)
						.replace('{prodThumb}', el.thumb)
						.replaceAll('{qty}', el.qty)
						.replaceAll('{originPrice}', el.originPrice)
						.replaceAll('{marketPrice}',el.marketPrice)
						.replace('{stock}',el.stock)
						.replace('{totalOrigin}', el.qty * el.originPrice)
						.replace('{totalMarket}', el.qty * el.marketPrice)
						
						.replace('{originPriceLocale}', (el.originPrice).toLocaleString() )
						.replace('{totalOriginLocale}', (el.qty * el.originPrice).toLocaleString() )
						.replace('{totalMarketLocale}', ( el.qty * el.marketPrice).toLocaleString() )
						
				})
				tBody.html(str);
				
				calTotal();
				
				/*
					개별 체크박스 이벤트 틍록
				*/
				$('.chkSmall').change(function(){
					if( ! ($(this).is(':checked')) ){
						$('#inp_allRe1').prop('checked',false);
					}
					calTotal();
				})
				
				$('.delete').click(function(e){
					let tr = $(this).closest('tr');
					let prodId = tr.attr('goodsno');
					let optionId = tr.attr('itemno');
					cartService.deleteCart(
							{userId : userId, prodId:prodId, optId : optionId},
						function(data){
							console.log("delete complete");
							getList();
						})
				})
				
				$('tr').on('click','button[name="btnQtyMod"]',function(e){
					e.preventDefault();
					let tr = $(this).closest('tr');
					let prodId = tr.attr('goodsno');
					let optionId = tr.attr('itemno');
					let qty = tr.find('.prd_cnt input').val();
					console.log(qty);
					cartService.updateCart(
						{userId:userId, prodId:prodId, optId : optionId, qty:qty, fromCart:true},
						function(data){
							console.log("update complete");
							getList();
						}
					)
				})
			})
		}
		/*
			체크된 상품 합계
		*/
		function calTotal(){
			let totalMarket = 0;
			let totalMinus = 0;
			$('.chkSmall:checked').each(function(idx,item){
					totalMarket += $(item).attr('originprice') * $(item).attr('ordqty');
					totalMinus += ($(item).attr('originprice') - $(item).attr('marketPrice')) * $(item).attr('ordqty');
			})
			$('.total_market').text(totalMarket.toLocaleString());
			$('.total_minus').text(totalMinus.toLocaleString());
			$('.total_result').text((totalMarket - totalMinus).toLocaleString() );
		}
		
	})
</script>
<%@ include file="../includes/footer.jsp"%>
