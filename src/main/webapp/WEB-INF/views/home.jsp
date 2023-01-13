<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="includes/header.jsp"%>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<script src="/resources/js/wishList.js" defer></script>
<script>
	$(document).ready(function() {
		console.clear();
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

		// 기존 버튼형 슬라이더
		$('.slider-1 > .page-btns > div').click(function() {
			var $this = $(this);
			var index = $this.index();

			$this.addClass('active');
			$this.siblings('.active').removeClass('active');

			var $slider = $this.parent().parent();

			var $current = $slider.find(' > .slides > div.active');

			var $post = $slider.find(' > .slides > div').eq(index);

			$current.removeClass('active');
			$post.addClass('active');
		});

		// 좌/우 버튼 추가 슬라이더
		$('.slider-1 > .side-btns > div').click(function() {
			var $this = $(this);
			var $slider = $this.closest('.slider-1');

			var index = $this.index();
			var isLeft = index == 0;

			var $current = $slider.find(' > .page-btns > div.active');
			var $post;

			if (isLeft) {
				$post = $current.prev();
			} else {
				$post = $current.next();
			}
			;

			if ($post.length == 0) {
				if (isLeft) {
					$post = $slider.find(' > .page-btns > div:last-child');
				} else {
					$post = $slider.find(' > .page-btns > div:first-child');
				}
			}
			;

			$post.click();
		});
		$('.btn_zzim').click(function(e) {
			if (userId == '') {
				alert("로그인이 필요한 서비스 입니다.");
				return;
			}
			let btn = $(this);
			let prodId = $(this).data('ref-goodsno');
			console.log(prodId);
			wishService.toggleWish({
				userId : userId,
				prodId : prodId,
			}, function(data) {
				console.log("result : ", data);
				if (data == 1) {
					btn.addClass('on');
					alert('찜하기 완료')
				} else if (data == 0) {
					btn.removeClass('on');
					alert('찜하기 해제')
				}
			})

		})

		setInterval(function() {
			$('.slider-1 > .side-btns > div').eq(1).click();
		}, 3000);

	})
</script>
<div class="slider-1">
  <div class="slides">
    <div>
      <div class="active">
        <div class="text">
          <p class="banner_desc">
            <span class="tit">올영P!CK</span>
            <strong>해가 바뀌어도<br>여전히 <br>촉촉해요
            </strong>
            <span>더모 보습 아이템 최대 1+1 기획</span>
          </p>
        </div>
        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/6419098095519496347.jpg">
      </div>
    </div>
    <div>
      <div class="text">
        <p class="banner_desc">
          <span class="tit">올영P!CK</span>
          <strong>확실한<br>보습 루틴으로<br>피부 새로고침
          </strong>
          <span>스킨케어 최대 30%할인 </span>
        </p>
      </div>
      <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/487649137781084531.jpg">
    </div>
    <div>
      <div class="text">
        <p class="banner_desc">
          <span class="tit">올영P!CK</span>
          <strong>쌓인 각질<br>걷어내고<br>탄력으로 채워요
          </strong>
          <span>클렌징&amp;마스크팩 최대 50% 할인 </span>
        </p>
      </div>
      <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4934753765766063984.jpg">
    </div>
    <div>
      <div class="text">
        <p class="banner_desc">
          <span class="tit">올영P!CK</span>
          <strong>빛나는<br>글로우룩과 함께<br>해피 뉴이어!
          </strong>
          <span>색조 NEW&amp;BEST 최대 35%할인</span>
        </p>
      </div>
      <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/4508961080067715886.jpg">
    </div>
  </div>
  <div class="page-btns">
    <div class="active"></div>
    <div></div>
    <div></div>
    <div></div>
  </div>
  <div class="side-btns">
    <div>
      <span>
        <i class="fas fa-angle-left"></i>
      </span>
    </div>
    <div>
      <span>
        <i class="fas fa-angle-right"></i>
      </span>
    </div>
  </div>
</div>
<div id="Container">
  <div id="Contents">
    <!--   메인 베너 -->
    <!--   고객님을 위한 추천 상품(세일 랜덤) -->
    <div class="curation_wrap">
      <div class="curation_area two" style="">
        <div class="inner">
          <div class="curation_slide type03" id="recobell_area1">
            <div class="tit_type03">
              고객님을 위한 추천 세일 상품
              <button class="moreBtn" id="crt_more_p002" onclick="javascript:location.href='/sale'">
                <span>더보기</span>
              </button>
            </div>
            <div class="curation_slide type03">
              <ul id="main_curation02_01" class="slide_list slick_slider slick-initialized slick-slider" name="section1">
                <div aria-live="polite" class="slick-list">
                  <div class="slick-track" style="opacity: 1; width: 2550px;" role="listbox">
                    <li data-page-no="1" class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 100%; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" tabindex="-1"
                      role="option" aria-describedby="slick-slide70"
                    >
                      <ul class="curation_list">
                        <c:forEach var="item" items="${for_user}" varStatus="idx">
                          <li class="curation_item" data-idx="${idx.count}" onclick="javascript:location.href='/product-detail?pid=${item.id}';">
                            <a href="javascript:void(0);" name="Home_Curation1_1" class="item a_detail" data-ref-goodsno="${item.id}" data-egrank="5" data-egcode="a016_a016" data-attr="홈^큐레이션1^[민니 Pick] 3CE 무드레시피 페이스 블러쉬^1"
                              data-impression="A000000109650^홈_큐레이션1^1" data-ref-dispcatno="90000010001" data-ref-itemno="005" tabindex="0" onclick="" data-impression-visibility="1"
                            >
                              <span class="thumImg">
                                <img src="${item.thumb }" alt="[민니 Pick] 3CE 무드레시피 페이스 블러쉬" onerror="common.errorImg(this);">
                              </span>
                              <div class="prd_name">
                                <p class="tx_name">${item.name }</p>
                              </div>
                              <p class="prd_price">
                                <c:if test="${item.originPrice ne item.marketPrice}">
                                  <span class="tx_org">
                                    <span class="tx_num">
                                      <fmt:formatNumber>${item.originPrice}</fmt:formatNumber>
                                    </span>
                                    원
                                  </span>
                                </c:if>
                                <span class="tx_cur">
                                  <span class="tx_num">
                                    <fmt:formatNumber> ${item.marketPrice }</fmt:formatNumber>
                                  </span>
                                  원
                                </span>
                              </p>
                              <p class="prd_flag">
                                <span class="icon_flag sale">세일</span>
                              </p>
                            </a>
                          </li>
                        </c:forEach>
                      </ul>
                    </li>
                  </div>
                </div>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--   catch keyword -->
    <div class="catch_keyword_wrap">
      <h3 class="main_sub_tit">
        <strong>Catch Keyword</strong>
      </h3>
      <div class="catch_keyword_slide">
        <ul class="slide_list slick_slider slick-initialized slick-slider" id="catch_keyword" style="">
          <div aria-live="polite" class="slick-list">
            <div class="slick-track" style="opacity: 1; width: 5100px;" role="listbox">
              <li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" tabindex="-1" role="option"
                aria-describedby="slick-slide50"
              >
                <ul class="keyword_banner">
                  <li class="keyword_items" onclick="javascript:location.href='/search?keyword=눈썹';">
                    <a href="/search?keyword=눈썹" data-attr="홈^catchkeyword^캐치 눈썹" data-trk="/" tabindex="0">
                      <div class="keyword_thumb">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/9031307662414279192.jpg" alt="캐치 눈썹">
                      </div>
                      <div class="keyword_title">
                        <strong>하루 2,000번 검색되는 눈썹 </strong>
                      </div>
                      <div class="keyword_sub_title">없던 눈썹도 살리는 아이템 모아봤어요</div>
                    </a>
                  </li>
                  <li class="keyword_items" onclick="javascript:location.href='/search?keyword=보습';">
                    <a href="/search?keyword=보습" data-attr="홈^catchkeyword^캐치 윤광" data-trk="/" tabindex="0">
                      <div class="keyword_thumb">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/8556014920504815984.jpg" alt="캐치 윤광">
                      </div>
                      <div class="keyword_title">
                        <strong>겨울철 급상승 검색어, 보습 </strong>
                      </div>
                      <div class="keyword_sub_title">건조하고 들뜬 피부결이 고민이라면</div>
                    </a>
                  </li>
                </ul>
              </li>
            </div>
          </div>
        </ul>
      </div>
    </div>
    <!--   오직 올리브영에서만 -->
    <div class="main_onlyone_wrap">
      <h3 class="main_sub_tit">오직 올리브영에서만</h3>
      <div class="banner_wrap slick_slider slick-initialized slick-slider slick-dotted" id="OnlyoneSlider" role="toolbar">
        <div aria-live="polite" class="slick-list draggable">
          <div class="slick-track" style="opacity: 1; width: 4116px; transform: translate3d(-1029px, 0px, 0px);" role="listbox">
            <div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide31">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102930001&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^11-5006_윤영선^2" data-trk="/" tabindex="0">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4000012807611450103.jpg" alt="11-5006_윤영선">
                <div class="txt" style="color: #000000">
                  <strong class="title">새해시작, </strong> <strong class="title">스킨케어 시작! </strong>
                  <span class="desc">토너패드&amp;화장솜</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide32">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102820001&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^0101-3105_최지현^3" data-trk="/"
                tabindex="0"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/7618194236885968428.jpg" alt="0101-3105_최지현">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">센스만점 </strong> <strong class="title">가성비 선물 추천</strong>
                  <span class="desc">#명절#생일Gift</span>
                </div>
              </a>
            </div>
            <div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide33">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000103050001&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^11-5020_김슬기^4" data-trk="/"
                tabindex="-1"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3343811847814138273.jpg" alt="11-5020_김슬기">
                <div class="txt" style="color: #000000">
                  <strong class="title">컬러그램</strong> <strong class="title">하나마켓OPEN</strong>
                  <span class="desc">정품 선착순증정 </span>
                </div>
              </a>
            </div>
            <div class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide34">
              <a href="/search?keyword=바디" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^11-5009_박성은^5" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/2804427916159720568.jpg" alt="11-5009_박성은">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">2023 새해 첫 </strong> <strong class="title">얼리'바디' 특가!</strong>
                  <span class="desc">최대 ~31% SALE</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="6" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="/search?keyword=스킨" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^11-5001_임용성^1" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/7728328404343906593.jpg" alt="11-5001_임용성">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">새해 스킨케어</strong> <strong class="title">1번에 해결!</strong>
                  <span class="desc">#더블기획, 대용량 </span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="/search?keyword=토너" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^11-5006_윤영선^2" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4000012807611450103.jpg" alt="11-5006_윤영선">
                <div class="txt" style="color: #000000">
                  <strong class="title">새해시작, </strong> <strong class="title">스킨케어 시작! </strong>
                  <span class="desc">토너패드&amp;화장솜</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="8" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102820001&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^0101-3105_최지현^3" data-trk="/"
                tabindex="-1"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/7618194236885968428.jpg" alt="0101-3105_최지현">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">센스만점 </strong> <strong class="title">가성비 선물 추천</strong>
                  <span class="desc">#명절#생일Gift</span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--   이 상품 어때요(베스트) -->
    <h3 class="main_sub_tit">
      <strong>이 상품 어때요?</strong>
    </h3>
    <div class="main_recomm_wrap slick-initialized slick-slider slick-dotted" id="mainReComSlider" role="toolbar">
      <div aria-live="polite" class="slick-list draggable">
        <div class="slick-track" style="opacity: 1; width: 5100px; transform: translate3d(-1020px, 0px, 0px);" role="listbox">
          <div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 1020px;" tabindex="-1"></div>
          <div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide40">
            <ul class="cate_prd_list no_line">
              <c:forEach var="item" items="${random}">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="/product-detail?pid=${item.id }" name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000177759" data-attr="홈^이상품어때요^클리오 킬커버 메쉬글로우 쿠션^1" data-ref-dispcatno="90000010001"
                      data-ref-itemno="008" data-trk="null" data-impression="A000000177759^홈_이상품어때요^1" data-impression-visibility="1" tabindex="0"
                    >
                      <img src="${item.thumb }" alt="클리오 킬커버 메쉬글로우 쿠션" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000177759" data-attr="홈^이상품어때요^클리오 킬커버 메쉬글로우 쿠션^1" data-ref-dispcatno="90000010001" data-ref-itemno="008" data-trk="null"
                        tabindex="0"
                      >
                        <span class="tx_brand">${item.brandName }</span>
                        <p class="tx_name">${item.name }</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem 
                    	<c:if test="${ item.wished}">
                    	on
                    	</c:if>
                    " data-ref-goodsno="${item.id}" tabindex="0">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <c:if test="${item.originPrice ne item.marketPrice}">
                        <span class="tx_org">
                          <span class="tx_num">
                            <fmt:formatNumber>${item.originPrice}</fmt:formatNumber>
                          </span>
                          원
                        </span>
                      </c:if>
                      <span class="tx_cur">
                        <span class="tx_num">
                          <fmt:formatNumber>${item.marketPrice}</fmt:formatNumber>
                        </span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <c:if test="${item.originPrice ne item.marketPrice}">
                        <span class="icon_flag sale">세일</span>
                      </c:if>
                    </p>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
          <div class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide41"></div>
        </div>
      </div>
    </div>
    <!--   주목해야할 브랜드 상품 -->
    <div name="movepage"></div>
    <h3 class="main_sub_tit">
      <strong>주목해야 할 브랜드</strong>
    </h3>
    <div class="main_brand_wrap">
      <div class="brand_wrapper">
        <div class="inner_unit">
          <div>
            <ul class="comm3sTabs sixSet" id="tabList">
              <li class="<c:if test="${brand[0].brandName eq '록시땅' }">on</c:if>" data-ref-brndno="A003496">
                <a href="home?brandName=록시땅#tabList" data-attr="">록시땅</a>
              </li>
              <li class="<c:if test="${brand[0].brandName eq '베네피트' }">on</c:if>" data-ref-brndno="A003368">
                <a href="home?brandName=베네피트#tabList" data-attr="">베네피트 </a>
              </li>
              <li class="<c:if test="${brand[0].brandName eq '보다나' }">on</c:if>" data-ref-brndno="A001316">
                <a href="home?brandName=보다나#tabList" data-attr="">보다나 </a>
              </li>
              <li class="<c:if test="${brand[0].brandName eq '바비브라운' }">on</c:if>" data-ref-brndno="A005671">
                <a href="home?brandName=바비브라운#tabList" data-attr="">바비브라운 </a>
              </li>
              <li class="<c:if test="${brand[0].brandName eq '맥' }">on</c:if>" data-ref-brndno="A002992">
                <a href="home?brandName=맥#tabList" data-attr="">맥 </a>
              </li>
              <li class="<c:if test="${brand[0].brandName eq '톤28' }">on</c:if>" data-ref-brndno="A001619">
                <a href="home?brandName=톤28#tabList" data-attr="">톤28 </a>
              </li>
            </ul>
            <div class="main_brand_tab main_brand brndList show" data-ref-brndno="A003496">
              <ul class="cate_prd_list">
                <c:forEach var="item" items="${brand}">
                  <li class="flag">
                    <div class="prd_info ">
                      <a href="/product-detail?pid=${item.id }" name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000177759" data-attr="홈^이상품어때요^클리오 킬커버 메쉬글로우 쿠션^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="008" data-trk="null" data-impression="A000000177759^홈_이상품어때요^1" data-impression-visibility="1" tabindex="0"
                      >
                        <img src="${item.thumb }" alt="${item.name }" onerror="common.errorImg(this);">
                      </a>
                      <div class="prd_name">
                        <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000177759" data-attr="홈^이상품어때요^클리오 킬커버 메쉬글로우 쿠션^1" data-ref-dispcatno="90000010001" data-ref-itemno="008" data-trk="null"
                          tabindex="0"
                        >
                          <span class="tx_brand">${item.brandName }</span>
                          <p class="tx_name">${item.name }</p>
                        </a>
                      </div>
                      <button class="btn_zzim jeem
                       	<c:if test="${ item.wished}">
                    		on
                    	</c:if>
                      " data-ref-goodsno="${item.id}" tabindex="0">
                        <span>찜하기전</span>
                      </button>
                      <p class="prd_price">
                        <c:if test="${item.originPrice ne item.marketPrice}">
                          <span class="tx_org">
                            <span class="tx_num">
                              <fmt:formatNumber>${item.originPrice}</fmt:formatNumber>
                            </span>
                            원
                          </span>
                        </c:if>
                        <span class="tx_cur">
                          <span class="tx_num">
                            <fmt:formatNumber>${item.marketPrice}</fmt:formatNumber>
                          </span>
                          원
                        </span>
                      </p>
                      <p class="prd_flag">
                        <c:if test="${item.originPrice ne item.marketPrice}">
                          <span class="icon_flag sale">세일</span>
                        </c:if>
                      </p>
                    </div>
                  </li>
                </c:forEach>
              </ul>
              <div class="brand_more">
                <a href="/search?keyword=${brand[0].brandName}">
                  <span> ${brand[0].brandName}</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%@ include file="includes/footer.jsp"%>