<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../includes/header.jsp"%>

<script src="/resources/js/cartService.js" defer></script>
<script src="/resources/js/wishList.js" defer></script>
<script>
	$(document)
			.ready(function() {
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
						
						let count=0;
						
						$(".sel_option_list>li>a")
								.click(
										function() {
											
											let name = $(this).find(
													'.option_value').attr('id');
											let price = $(this).find('.tx_num')
													.attr('id').toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
											let id = $(this).data("opt-id");
											let productId = $(this).data("prod-id");
										// TODO : id 확인
											console.log(id);
											
											console.log("length : "+$('.option_add_area').find('#'+id).length );
											
											
											if ($('.option_add_area').find('#'+id).length  ){
											console.log('수량');
											let plus = $('#'+id +' .plus ').prev().val();
											plus++;
											if (plus > 99) {
												plus = 99;
												alert('최대 99개까지만 구매할 수 있습니다.');
											};

											$('#'+id +' .plus').prev().val(plus);
											
											}else{
										
											
											console.log('아이템 리스트에 추가');
											let text = `
													<div class="prd_cnt_box no_prom \${id}" id="\${id}"}><div class="tit_area"> 
											      <span>\${name}</span>
											      <span class="option_cnt_box" style="display: flex">  
											      <button type="button" class="btnCalc minus" onclick="">수량 1감소</button> 
											      <input type="text" id="cartCnt_\${id}" name="list[\${count}].qty" value="1" maxlength='2' class="tx_num" title="구매수량"> 
											      
											      <button type="button" class="btnCalc plus" onclick="">수량 1증가</button>
											      <input type="hidden" name="list[\${count}].oid" value="\${id}">
											      <input type="hidden" name="list[\${count}].pid" value="\${productId}">
											      </span>
											      </div><div class="cont_area">
											      <span class="option_price"><span class="tx_num">\${price}</span>원</span>
											      <a href="javascript:void(0)" class="btn_opt_del">선택한 옵션 삭제</a></div></div>
											      `;
											console.log(name);
											console.log(price);
											
											count++;
											$(".option_add_area ").append(text);
											$('.btn_opt_del').click(function(){
												$(this).closest('.prd_cnt_box').remove();
											})
											
											$('.prd_info').on("propertychange change keyup paste input click",function(){
												 let sum=0;
												 let lists = $(this).find('.prd_cnt_box ').each(function(){
													 let cnt = $(this).find('.tx_num').val();
													 let price = $(this).find('.tx_num').text().replace(',','');
													 sum += cnt*(price);
									
												 });
												 $('#totalPrcTxt').text(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',')).html();
												 
											 });
										}

											$("#buy_option_box").removeClass("open");
											
											
									
										});

						$('.option_add_area').on('click', '.minus', function() {
							let minus = $(this).next().val();
							minus--;
							if (minus < 1) {
								minus = 1;
								alert('1개 단위로 구매 가능한 상품입니다. 수량을 다시 선택해주세요.');
							}
							$(this).next().val(minus);

						});

						$('.option_add_area').on('click', '.plus', function() {
							let plus = $(this).prev().val();
							plus++;
							if (plus > 99) {
								plus = 99;
								alert('최대 99개까지만 구매할 수 있습니다.');
							}
							;
							$(this).prev().val(plus);

						});
						$('.btnZzim').click(function(e){
							if(userId == ''){
								alert("로그인이 필요한 서비스 입니다.");
								return;
							}
							let btn = $(this);
							let prodId = $(this).data('ref-goodsno');
					    	wishService.toggleWish({
					    		userId: userId, 
					    		prodId:prodId,
					    		},function(data){
					    			console.log("result : ",data);
					    			if(data == 1){
					    				btn.addClass('zzimOn');
					    				alert('찜하기 완료')
					    			}else if(data == 0){
					    				btn.removeClass('zzimOn');
					    				alert('찜하기 해제')
					    			}
					    		})
							
						})
						$('.btnBasket').click(function(){
							let t = $('#order-form .prd_cnt_box').length;
							if(t == 0){
								alert('상품 옵션을 선택해주세요');
								return ;
							}else if(userId == ''){
								alert('로그인이 필요한 서비스 입니다.')
								return;
							}
							$('#order-form .prd_cnt_box').each(function(idx,item){
								let qty = $(item).find('input[name="list['+idx+'].qty"]').val();
								let oid = $(item).find('input[name="list['+idx+'].oid"]').val();
								let pid = $(item).find('input[name="list['+idx+'].pid"]').val();
							
								cartService.updateCart(
										{userId:userId, prodId:pid, optId : oid, qty:qty, fromCart:false},
										function(data){
											console.log("update complete");
										}
									)
							})
							$('.layer_pop_wrap').show();
							
						});
				 	$('.btnlG01').click(function(){
							$('.layer_pop_wrap').hide();
							
							
						});
						$('.ButtonClose').click(function(){
							$('.layer_pop_wrap').hide();
							
						});
						
						$('.is-layer').click(function(){
							$('.is-layer').removeClass("on");
							$(this).addClass("on");
						});
					
						
					});
</script>
<script>
	$(document).ready(function() {
		$('.prd_detail_tab li').click(function() {
			var tab_id = $(this).attr('data-tab');
			console.log(tab_id);
			$('.prd_detail_tab li').removeClass('on');
			$('.tabConts').removeClass('show');

			$(this).addClass('on');
			$("#" + tab_id).addClass('show');
		});

		$('.sel_option').click(function(e) {
			e.preventDefault();
			if ($(this).parent().hasClass('open')) {
				$(this).parent().removeClass('open')
			} else {
				$(this).parent().addClass('open')

			}

		})

	});

	function itemDelete(e) {
		let id = e[0].id;
		console.log(id);
		let item = document.querySelector('#'+id);
		$(this).parents().parents().remove();
	 } 
	function popUpClose(){
        
        $(".layer_pop_wrap").hide();
        $('.dimm').remove();
    }
	function popUpOpen(){
        
        $(".layer_pop_wrap").hide();
        $('.dimm').remove();
    }
</script>


<script type="text/javascript">
const reviewService = (function () {
	  function getReview(param, callback, error) {
	    let page = param.page || 1;
	    let cri = {
	      pageNum:param.page,
	      pid: param.pid,
	      amount:3,
	    };

	    $.ajax({
	      type: "get",
	      url: "/review",
	      data: cri,
	      contentType: "application/json; charset=utf-8",
	      success: function (data, status, xhr) {
	        if (callback) callback(data.pageMaker.total, data.reviews);
	      },
	      error: function (xhr, status, err) {
	        if (err) error();
	      },
	    });
	  }
	  
	  return {
	    getReview: getReview,
	    };
	})();

$(document).ready(function () {
/*   $.ajaxSetup({
    beforeSend: function (xhr) {
      xhr.setRequestHeader("AJAX", true);
      var csrfToken = "${_csrf.token}";
      xhr.setRequestHeader("X-CSRF-TOKEN", csrfToken);
    },
  }); */

  let pageNum = 1;
  const pid = $("#pid").val();
  const reviewUL = $(".inner_list");
  const pageingUL = $(".pageing");
  const text = `<li>
						<div class="info">
						<div class="user clrfix">
							<a href="javascript:;"
								onclick="goods.gdas.goReviewerProfile('ckZkQzZWQW5PbkRBSzRFa0dESXE1QT09')"
								data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">
								<div class="thum">
									<span class="bg"></span> <img
										src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg"
										alt="">
								</div>
							</a>
							<p class="info_user">
								<a href="javascript:;"
									onclick="goods.gdas.goReviewerProfile('ckZkQzZWQW5PbkRBSzRFa0dESXE1QT09')"
									class="id" data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">{review.userId}</a>
							</p>
							<div class="badge"></div>
						</div>
					</div>
					<div class="review_cont">
						<div class="score_area">
							<span class="review_point"><span class="point"
								style="width: {20*review.reviewScore}%">5점만점에 5점</span></span> <span
								class="date">{review.reviewDate}</span>
						</div>
						<div class="txt_inner">{review.reviewContent}</div>
						<div class="review_thum type1">
							<ul class="inner clrfix">
								<li><a href="#" data-attr="상품상세^포토리뷰^포토 클릭^1"><span><img
											src="/api/image/display?fileName={review.reviewImg}"
											onload="common.imgLoads(this,165);"
											data-value="16668530_1" class="thum" alt=""
											onerror="common.errorResizeImg(this,165)"></span></a></li>
							</ul>
						</div>
						<div class="rw-photo-slide" style="display: none">
							<div>
								<img
									src="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2022/12/27/1672109633131.png">
							</div>
						</div>
	 					</div>
				</li>`;

  // const pageing = `<form id="review_form" action="/product-detail method="get">
  // 			<input type="hidden" name="pageNum"
  // 			value="\${result.pageMaker.cri.pageNum }" /> <input type="hidden"
  // 			name="amount" value="\${result.pageMaker.cri.amount }" /> <input
  // 			type="hidden" name="sort" value="\${result.pageMaker.cri.sort }" /> <input
  // 			type="hidden" name="pid" value="\${result.pageMaker.cri.pid }" /></form>
  // 			<div class="pageing">`;

  // //페이징 버튼
  // if (result.pageMaker.prev) {
  //   pageing += `<a class="prev" href="\${result.pageMaker.startPage-1 }">이전 10 페이지</a>`;
  // }
  // for (let i = 1; i <= result.pageMaker.endPage; i++) {
  //   if (i == result.pageMaker.cri.pageNum) {
  //     pageing += `<strong title="현재 페이지">\${i}</strong>`;
  //   } else {
  //     pageing += `<a href="\${i}">\${i} </a>`;
  //   }
  // }

  // if (result.pageMaker.next) {
  //   pageing += `<a class="next" href="\${result.pageMaker.endPage+1 }">다음 10 페이지</a>`;
  // }
  // pageing += `</div>`;

  //===========
  //====================================================================================
  //===============================================================================================
  showList(pageNum);

  pageingUL.on("click", "a", function (e) {
    e.preventDefault();

    let targetPageNum = $(this).attr("href");
    pageNum = targetPageNum;
    showList(pageNum);
  });

  function showList(page) {
    let str = "";

    reviewService.getReview(
      { page: page || 1, pid: pid},
      function (count, list) {
    	  console.log(count);
    	  console.log(list);
        for (let i = 0, len = list.length||0; i<len; i++) {
        	
          str += text
            .replaceAll("{review.userId}", list[i].userId)
            .replace("{20*review.reviewScore}%", 20 * list[i].reviewScore)
            .replace("{review.reviewDate}", list[i].reviewDate)
            .replace("{review.reviewContent}", list[i].reviewContent)
            .replace("{review.reviewImg}", list[i].reviewImg);
        }
     	reviewUL.html(str);
        showPaging(count);
      }
    );
  }

  function showPaging(count) {
    let endNum = Math.ceil(pageNum / 3.0) * 3;
    let startNum = endNum - 2;

    let prev = startNum != 1;
    let next = false;

    if (endNum * 3 >= count) {
      endNum = Math.ceil(count / 3.0);
    }
    if (endNum * 3 < count) {
      next = true;
    }
    let str = `<div class="pageing">`;
    if (prev)
      str += `<a class="prev" href="{prev}">이전 10 페이지</a>`.replace(
        "{prev}",
        startNum - 1
      );
    for (let i = startNum; i <= endNum; i++) {
      let tmp = "";
      if (pageNum == i) tmp = `<strong title="현재 페이지">{num}</strong>`;
      else tmp = `<a href="{num}">{num}</a>`;
      str += tmp.replaceAll("{num}", i);
    }
    if (next)
      str += `<a class="next" href="{end}">다음 10 페이지</a>`.replace(
        "{end}",
        endNum + 1
      );
    str += "</div>";


    pageingUL.html(str);
  }
});
</script>



<div id="Container">
	<div id="Contents">
		<!-- 상단 카테고리 history -->
		<div class="prd_detail_box renew">
			<div class="left_area">
				<div class="prd_img">
					<img id="mainImg" src="<c:out value="${product_detail.pimg}" />"
						alt="상품명 이미지" onerror="common.errorImg(this);" /> <input
						type="hidden" id="mainImgSize" value="550" />
					<!-- 20200526 상품개선 : 추가 / 발색비교 옵션 선택 시 옵션명 변경 및 관련 썸네일로 변경 -->
					<div class="prd-option-name">
						<!-- 노출 시 is-active class 추가 -->
						<span class="txt" id="goodstxt">03. 얼모스트 핑크</span>
					</div>
				</div>
				<!-- 202005 상품개선 : 위치 변경 및 마크업 변경 -->
				<!-- 고객 만족도 및 공유, 재고확인 -->
				<div class="prd_social_info">
					<!-- 평점 및 리뷰 건수 추가 -->
					<!-- 위치 변경 <p><a href="#" class="btn_off_store" data-rel="layer" data-target="offlineStore">올리브영 오프라인 매장 재고확인</a></p>-->
				</div>
				<!--// 고객 만족도 및 공유, 재고확인 -->
			</div>
			<div class="right_area">
				<div class="prd_info">
					<p class="prd_brand">
						<a href="#" id="moveBrandShop" class="pd_arrow_link"><c:out
								value="${product_detail.bname}" /></a> <input type="hidden"
							id="pid" value="${product_detail.pid}">
					</p>
					<p class="prd_name">
						<c:out value="${product_detail.pname}" />
					</p>
					<!-- 202005 상품개선 : 추가 -->
					<!-- 					<p class="prd-txt1">1회 최대 구매수량 5개 입니다.</p> -->
					<div class="price">
						<c:if
							test="${product_detail.optionList[0].originPrice ne product_detail.optionList[0].marketPrice}">
							<span class="price-1"> <strike><fmt:formatNumber
										value="${product_detail.optionList[0].originPrice}" /></strike> <span>원</span>
							</span>
						</c:if>
						<span class="price-2"> <strong><fmt:formatNumber
									value="${product_detail.optionList[0].marketPrice}" /> </strong> <span>원</span>
						</span>
					</div>
					<c:if
						test="${product_detail.optionList[0].originPrice ne product_detail.optionList[0].marketPrice}">
						<p class="prd_flag">
							<span class="icon_flag sale">세일</span>
						</p>
					</c:if>
					<div class="prd_more_info">
						<div class="row">
							<ul class="bl_list">
								<li><span>일반배송</span>
									<div>
										2,500원 ( 20,000 원 이상 무료배송 ) <br /> <em>올리브영 배송 </em> <em>평균
											9일 이내 배송</em>

									</div></li>

							</ul>
						</div>
					</div>
					<input type="hidden" id="goodsItemYn" value="Y" />
					<div class="prd_option_box optionType1 type2" id="buy_option_box">
						<a href="javascript:;" class="sel_option" id="buyOpt"> 상품을
							선택해주세요 </a>
						<ul class="sel_option_list new" id="option_list">
							<c:forEach var="option" items="${product_detail.optionList}">
								<li id="${option.oid}" class="option_id">
									<!-- 혜택 아이콘 li 분기 끝 --> <!--//옵션 선택시 오늘드림 옵션 상품을 제어하기 위해서 오늘드림 여부 추가//-->
									<a style="cursor: pointer" onclick=""
									data-opt-id="<c:out value="${option.oid}" />"
									data-prod-id="<c:out value="${product_detail.pid}" />"> <c:if
											test="${not empty option.othumb}">
											<span class="color"> <img
												src="<c:out value='${option.othumb}'/>" alt=" "></span>
										</c:if>
										<div class="set">

											<span class="option_value" id="${option.oname}"> <c:out
													value="${option.oname}" /> <span class="option_price">
													<span class="tx_num" id="${option.marketPrice}"> <fmt:formatNumber
															value="${option.marketPrice}" />원
												</span>
											</span>

											</span>
											<c:if
												test="${product_detail.optionList[0].originPrice ne product_detail.optionList[0].marketPrice}">
												<span class="icon_flag sale">세일</span>
											</c:if>

										</div> <!--[END 오늘드림 옵션상품 개선:jwkim]-->
								</a>
								</li>
							</c:forEach>
						</ul>
					</div>
					<form action="/order-form" id="order-form">
						<div class="option_add_area pkg_goods_n"></div>
					</form>
					<div class="prd_total_price">
						<span class="tx_tit">상품금액 합계</span> <input type="hidden"
							id="totalCnt" value="0" name="totalCnt" /> <input type="hidden"
							id="totalPrc" value="0" name="totalPrc" /> <span class="tx_cont">
							<span class="tx_num" id="totalPrcTxt">0</span> 원
						</span>
					</div>
					<!-- 20191213 s -->
					<!-- today_dvs s -->
					<div class="today_dv">
						<!-- //today_dvChk e -->
						<div class="today_dvArea">
							<div class="today_dvArea_inner">
								<a
									href="javascript:common.zipcodequick.pop.deliveryRegistFormOnlyRegist();"
									class="btn_noDv" style="display: none">+ 배송지 추가</a> <a href="#"
									class="btn_todayDV">
									<dl></dl>
								</a>
								<div class="todayDV_list">
									<ul></ul>
								</div>
								<!-- //todayDV_list e -->
							</div>
							<!-- //today_dvArea_inner e -->
						</div>
						<!-- //today_dvArea e -->
						<div class="today_dvChk" id="pikcupOnlyYn" style="display: none">
							<input type="checkbox" id="pickupDirectYn" name="pickupDirectYn"
								value="Y" data-attr="상품상세^매장픽업여부^매장픽업신청" /> <label
								for="pickupDirectYn">매장에서 픽업 하시겠어요?</label>
							<dl>
								<dd>
									<a
										href="javascript:goods.detail.todayDelivery.openQuickPopMidle('pickup');"
										class="ico_info_view">매장픽업 안내 레이어열기</a>
								</dd>
							</dl>
							<div class="input_nudge" id="storePickNudge"
								style="display: none">
								<div class="nudge_txt">배송비 허들없는 픽업을 이용해 보세요!</div>
							</div>
						</div>
					</div>
					<!-- //today_dv e -->
					<!-- 20191213 e -->
					<div class="prd_btn_area new-style type1">
						<button class="btnBasket dupItem goods_cart"
							onclick="javascript:fnLayerTopCustomSet('basketOption', 'open');;"
							data-attr="상품상세^주문유형^장바구니">장바구니</button>

						<!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->
						<button class="btnBuy goods_buy" id="cartBtn" type="submit"
							form="order-form" data-attr="상품상세^주문유형^바로구매">바로구매</button>

						<button class="btnSoldout dupItem goods_cart"
							style="display: none" onclick="javascript:;">일시품절</button>
						<button class="goods_buy btnReStock" style="display: none"
							onclick="javascript:;"
							data-attr="상품상세^재입고알림신청^브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)_클릭"
							data-trk="/Cat100000100010008_Small">재입고 알림신청</button>
						<button class="btnZzim goods_wish"
							data-ref-goodsno="A000000144535"
							data-attr="상품상세^상품좋아요^브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)_0">찜하기전</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 202005 상품상세 개선 : 증정품 마크업 수정 -->
		<!-- 증정품 오늘드림S  -->
		<!-- // 202005 상품상세 개선 : 증정품 마크업 수정 -->
		<!-- 큐레이션 2차 S -->
		<div class="curation_area_a002_lead"></div>
		<div id="recobell_area_a002" class="cura_pord">
			<h4 class="tit_h4">
				이런
				<c:out value="${product_detail.cname}" />
				상품은 어떠세요?
			</h4>
			<div class="loading_box">
				<span class="icon"> <img
					src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
					alt="로딩중" />
				</span>
				<p class="txt">고객님을 위한 상품 추천중이에요</p>
			</div>
		</div>
		<!-- 큐레이션 2차 E -->
		<ul class="prd_detail_tab" id="tabList">
			<li class="on" data-tab="productInfo"><a href="#tabList"
				class="goods_detailinfo" data-attr="상품상세^상품상세_SortingTab^상품설명">상품설명</a>
			</li>
			<li data-tab="buyInfo"><a href="#tabList" class="goods_buyinfo"
				data-attr="상품상세^상품상세_SortingTab^구매정보">구매정보</a></li>
			<li data-tab="reviewInfo" id="reviewInfo1"><a href="#tabList'"
				class="goods_reputation" data-attr="상품상세^상품상세_SortingTab^리뷰"> 리뷰
					<span>${pageMaker.total}</span>
			</a></li>
			<li id="qnaInfo"></li>
		</ul>
		<div class="tabConts prd_detail_cont show" id="productInfo"
			dat-tab="productInfo">
			<div class="detail_area">
				<!-- 협력사, 온라인브랜드, 상품 카테고리 노출 -->
				<div class="contEditor">
					<script>
						$(window).load(function() {
							// 2017-02-18 : txs : 상품 상세 레이아웃 크기 재조정
							goods.detail.tagHandler.inittGoodsDetailObjects();
							$("#tempHtml").html("");
						});
					</script>
					<c:set var="pctnts" value="${fn:split(product_detail.pctnt,',')}" />



					<c:forEach var="pctnt" items="${pctnts}">



						<img alt="" src="<c:out value= " ${pctnt}"/>" />
					</c:forEach>
				</div>
				<div style="text-align: center; padding: 20px 0px 0px 0px">
					<p
						style="display: inline-block; font-size: 14px; border: 1px solid #ddd; padding: 10px 40px 10px 40px; text-align: center;">본
						상품 정보(상품 상세, 상품 설명 등)의 내용은 협력사가 직접 등록한 것 입니다.</p>
				</div>
			</div>
			<p class="tit_cate_best mgT40 dispCatBest" style="display: none">스킨케어
				카테고리 베스트 상품</p>
			<ul class="cate_prd_list dispCatBest" id="recommGoodsList"
				style="display: none"></ul>
			<div class="curation_area_a029_lead"></div>
			<div id="recobell_area_a029" class="cura_pord curation_area_029 btm"
				style="display: none">
				<h4 class="tit_h4">함께 보면 좋은 상품이에요</h4>
				<div class="loading_box">
					<span class="icon"> <img
						src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif"
						alt="로딩중" />
					</span>
					<p class="txt">고객님을 위한 상품 추천중이에요</p>
				</div>
			</div>
			<!-- 				<div class="curation_area_a003_lead"></div> -->
			<!-- 				<div id="recobell_area_a003" class="cura_pord curation_area_003 btm" style="display:none;"> -->
			<!-- 					<h4 class="tit_h4">함께 보면 좋은 상품이에요</h4> -->
			<!-- 					<div class="loading_box"> -->
			<!-- 						<p class="txt">고객님을 위한 상품 추천중이에요</p> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<div id="relPlanShop_area" class="related_plan"></div>
		</div>
		<div class="tabConts prd_detail_cont" id="buyInfo" data-tab="buyInfo">
			<h3 class="detail_tit mgT40">배송안내</h3>
			<dl class="detail_info_list" id="dlexAjaxInfo">
				<dt>배송비/배송가능일</dt>
				<dd>
					<div>
						<p>
							<strong>[일반 배송]</strong>
						</p>
						<p>
							<strong>배송지역 : </strong>전국
						</p>
						<p>
							<strong>배송비 : </strong>
							<!-- 그외 표기 -->
							<span>2,500원</span>
						</p>
						<p>
							올리브영 배송 상품의 총 결제금액 <span>20,000</span> 원 이상일 경우 <span>무료배송</span>
							됩니다.
						</p>
						<p>도서, 산간, 오지 일부 지역은 배송비가 추가될 수 있습니다.</p>
						<p>
							<strong>배송가능일 : </strong> <span>9</span> 일
						</p>
						<p>배송가능일이란 본 상품을 주문하신 고객님들께 상품 배송이 가능한 기간을 의미합니다. 단, 연휴 및 공휴일은
							기간 계산시 제외하며 현금 주문일 경우 입금일 기준 입니다.</p>
						<p>예약 상품의 경우 예약된 날짜에 출고되며, 상품의 입고가 빠르게 진행된 경우 예약일 보다 일찍 배송될 수
							있습니다.</p>
					</div>
					<br />
					<div>
						<p>
							<strong>[오늘드림 배송]</strong>
						</p>
						<p>
							<strong>배송지역 : </strong>전국(일부지역 제외)
						</p>
						<p>
							<strong>배송비 : </strong><strong>빠름</strong>&nbsp; <span>5,000원</span>
							, <strong>3!4!/미드나잇</strong>&nbsp; <span>2,500원</span>
						</p>
						<p>
							오늘드림 배송 상품의 총 결제금액&nbsp; <span>30,000</span> 원 이상일 경우&nbsp; <span>무료배송</span>
							&nbsp;됩니다.
						</p>
						<p>오늘드림 배송비는 도서, 산간지역에 관련없이 배송비가 동일합니다.</p>
						<div class="crlfix">
							<p style="float: left">
								<strong>배송가능시간 : </strong>
							</p>
							<div style="margin-left: 87px">
								<p>
									<strong>빠름/미드나잇 </strong>당일 20시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
								</p>
								<p>
									<strong>3!4! </strong>당일13시까지 주문 시 당일 도착, 이후 주문 건 익일 도착
								</p>
							</div>
						</div>
					</div>
				</dd>
			</dl>
		</div>
		<!--// 구매정보 컨텐츠 영역 -->
		<div class="tabConts prd_detail_cont" id="reviewInfo"
			data-tab="reviewInfo">

			<div class="review_wrap renew review-reward-notice">
				<!-- ## 리뷰 고도화 1차 : 영역 부모 div 추가 ## -->



				<!--평균별점집계 start-->


				<!-- [D] 리뷰작성 영역 제거 review-write-delete 클래스 추가 -->
				<div class="product_rating_area review-write-delete">
					<div class="inner clrfix">
						<div class="grade_img">
							<p class="img_face">


								<span class="grade grade${(averageInt)+1}"></span><em>최고</em>
							</p>
							<!-- grade5 : 최고, grade4 : 좋음, grade3 : 보통, grade2 : 별로, grade1 : 나쁨  -->
						</div>
						<div class="star_area">
							<p class="total">
								총 <em>${pageMaker.total} </em>건
							</p>
							<!-- ## 리뷰 고도화 2차 ## 리뷰 전체 건수(본상품+연관상품) -->
							<p class="num">
								<strong>${average }</strong><span>점</span>
							</p>
							<ul class="star_list">



								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>

								<li><span class="rating" style="width: 80%;"></span><img
									src="https://static.oliveyoung.co.kr/pc-static-root/image//product/bg_rating_star.png"></li>




							</ul>
						</div>
						<div class="graph_area">
							<ul class="graph_list">




								<li><span class="per">83%</span>
									<div class="graph">
										<span style="height: 83%;"></span>
									</div> <span class="txt">5점</span></li>


								<li><span class="per">13%</span>
									<div class="graph">
										<span style="height: 13%;"></span>
									</div> <span class="txt">4점</span></li>


								<li><span class="per">0%</span>
									<div class="graph">
										<span style="height: 0%;"></span>
									</div> <span class="txt">3점</span></li>


								<li><span class="per">4%</span>
									<div class="graph">
										<span style="height: 4%;"></span>
									</div> <span class="txt">2점</span></li>


								<li><span class="per">0%</span>
									<div class="graph">
										<span style="height: 0%;"></span>
									</div> <span class="txt">1점</span></li>




							</ul>
						</div>

					</div>
				</div>


				<div class="cate_align_box prodLine review_N2" id="searchType">
					<!-- ## 리뷰고도화 2차 ## 클래스 "
							review_N2" 추가-->
					<div class="align_sort">
						<!-- 리뷰 고도화 1차 : 항목 변경 -->
						<ul id="gdasSort">
							<li class="is-layer on"><a href="javascript:;"
								data-value="01" data-attr="상품상세^리뷰정렬^유용한순">평점 높은순</a>

								<div class="comment-layer">리뷰의 글자수, '도움이 돼요'수 , 등록된 사진, 최신
									작성일등을 점수화하여 올리브영이 추천하는 리뷰를 정렬합니다.</div></li>
							<li class="is-layer"><a href="javascript:;" data-value="02"
								data-attr="상품상세^리뷰정렬^유용한순">평점 낮은순</a>

								<div class="comment-layer">리뷰의 글자수, '도움이 돼요'수 , 등록된 사진, 최신
									작성일등을 점수화하여 올리브영이 추천하는 리뷰를 정렬합니다.</div></li>

							<li class="is-layer"><a href="javascript:;" data-value="03"
								data-attr="상품상세^리뷰정렬^최신순">최신순</a></li>
						</ul>
						<!-- // 리뷰 고도화 1차 : 항목 변경 -->
					</div>

				</div>

				<!-- 상품평 등록제한 카테고리 안내 문구 -->





				<!-- 상품평 리스트 start -->
				<div class="review_list_wrap">
					<ul class="inner_list" id="gdasList">

						<%-- <c:forEach var="review" items="${reviews}">
							<li>
								<div class="info">
									<div class="user clrfix">
										<a href="javascript:;"
											onclick="goods.gdas.goReviewerProfile('ckZkQzZWQW5PbkRBSzRFa0dESXE1QT09')"
											data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">
											<div class="thum">
												<span class="bg"></span> <img
													src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg"
													alt="">
											</div>
										</a>
										<!--## 리뷰 고도화 1차 ## : top, id 위치 변경 및 마크업 변경 -->
										<p class="info_user">
											<a href="javascript:;"
												onclick="goods.gdas.goReviewerProfile('ckZkQzZWQW5PbkRBSzRFa0dESXE1QT09')"
												class="id" data-attr="상품상세^리뷰어프로필^프로필이미지 또는 닉네임 클릭">${review.userId}</a>
										</p>
										<!--## 리뷰 고도화 2차 ## : 명성리뷰어 -->
										<!--## 리뷰 고도화 1차 ## : 재구매/한달사용 리뷰 -->
										<div class="badge"></div>
									</div>
								</div>
								<div class="review_cont">
									<div class="score_area">
										<span class="review_point"><span class="point"
											style="width: ${20*review.reviewScore}%">5점만점에 5점</span></span> <span
											class="date"><fmt:formatDate
												value="${ review.reviewDate}" /></span>
									</div>
									<!--## 리뷰 고도화 1차 ## 위치변경 -->
									<!--## 리뷰 고도화 1차 ## 위치변경 -->
									<!--## 리뷰 고도화 1차 ## 위치변경 -->
									<!--## 리뷰 고도화 1차 ## 위치변경 -->
									<div class="txt_inner">${review.reviewContent}</div>
									<!-- ## 리뷰 고도화 1차 ## : 태그 추가 -->
									<div class="review_thum type1">
										<ul class="inner clrfix">
											<li><a href="#" data-attr="상품상세^포토리뷰^포토 클릭^1"><span><img
														src="/api/image/display?fileName=${review.reviewImg}"
														onload="common.imgLoads(this,165);"
														data-value="16668530_1" class="thum" alt=""
														onerror="common.errorResizeImg(this,165)"></span></a></li>
										</ul>
									</div>
									<div class="rw-photo-slide" style="display: none">
										<div>
											<img
												src="https://image.oliveyoung.co.kr/uploads/images/gdasEditor/2022/12/27/1672109633131.png">
										</div>
									</div>
									<!--## 리뷰 고도화 2차 ## 연관상품 -->
									<!--## 리뷰 고도화 1차 ## 위치변경 및 삭제-->
									<!-- ## 리뷰 고도화 1차 ##  : 리뷰제한 카테고리 일경우 안보이게 -->
								</div>
							</li>
						</c:forEach> --%>

					</ul>
				</div>
				<div class="pageing"></div>
				<%-- <form id="review_form" action="/product-detail method="get">
					<input type="hidden" name="pageNum"
						value="${pageMaker.cri.pageNum }" /> <input type="hidden"
						name="amount" value="${pageMaker.cri.amount }" /> <input
						type="hidden" name="sort" value="${pageMaker.cri.sort }" /> <input
						type="hidden" name="pid" value="${pageMaker.cri.pid }" />

				</form>

				<div class="pageing">
					<c:if test="${pageMaker.prev }">
						<a class="prev" href="${pageMaker.startPage-1 }">이전 10 페이지</a>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }">
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
				</div> --%>


			</div>
		</div>


	</div>
</div>


<%@ include file="../includes/footer.jsp"%>