<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="includes/header.jsp"%>
<script type="text/javascript">
$(document).ready(function(){
    var recoGoodsList2Length = "29";
  if(recoGoodsList2Length > 0){
      // 로딩바 제거 및 레코벨 상품 영역 show
      $(".loading_box").hide();
      $(".curation_area").show();
  }
  var clickCnt = 1;
    var isLogin = "false";
    var mbrAgrYn = $("#mktAgrYn").val();
    var recall = false;
    var rccode = "pc_main_02_c";

    if($("#recobell_area2").hasClass("type01")){
        slidesToShowVal=4;
        slidesToScrollVal=4;
        arrows=true;
    }
  
  $('#main_curation03_01').slick({
    dots: false,
    arrows: false,
    fade: true,
    infinite: true,
    speed: 100,
    slidesToShow: 1,
    slidesToScroll: 1,
    draggable: false
  });

  $('#main_curation03_01 a.item').each(function(i){
    var _item = $(this);      
    var _data_goodsno = _item.attr('data-ref-goodsno');
    var _data_dispCatNo = _item.attr('data-ref-dispCatNo');
    var egcode = _item.attr("data-egcode");
      var egrank = _item.attr("data-egrank");
      var trackingCd = _item.attr("name");
    _item.attr('onclick','javascript:gtm.goods.callGoodsGtmInfo("'+_data_goodsno+'", "", "ee-productClick", "홈_큐레이션2", "' + $(this).attr('data-attr').split('^')[3] + '"); common.wlog("home_curation2_prod'+trackingCd.substr(trackingCd.length-1, 1)+'");common.link.moveGoodsDetailCuration("'+_data_goodsno+'", "'+_data_dispCatNo+'","recent","'+rccode+'", "'+egcode+'", "'+egrank+'", "'+trackingCd+'");');
   });
  
  $('#main_curation03_01').find(".btnbag").each(function(){
    $(this).attr("data-rccode", rccode);
  });

  $('#refBtn2').on('click', function () {
    var $this = $(this);

    var totalPage = Number($this.data('total-page'));
    var currentPage = Number($this.data('current-page'));

    $('#main_curation03_01').slick('slickNext');

    if (currentPage < totalPage) {
      currentPage++;
    } else {
      currentPage = 1;
    }

    $this.data('current-page', currentPage);
    $this.find('.current').html(currentPage);

  });
  
  var param = {
    size : 30, //큐레이션 api 호출용
    viewType : 'VertPop', // 가로형
    popupYn : "Y",
    titlRp : "", // 타이틀 replace 텍스트
    viewArea : 'home_curation2_more_prod',
    recType : "p001",
    loginRecType : "p201",
    dispCatNo : '90000010001',
    rccode : rccode,
    trackingCd: 'Home_Curation2_More'
  };
  
  if("p001" != "m002") {
    param.cps = true;
    param.cpt = "m002";
  }
  
  // 기존 영역이기 때문에 이벤트 추가만 한다.
  curation.btnMoreEvent(param);

  // GTM Product Impression 공통 적용
  gtm.goods.initProductImpression();

  //오특 플래그
  common.gnb.todaySpecial.setTodaySpecialFlag('.a_detail .newOyflag');

});

</script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
      $('#slider-div').slick("unslick")
      $('.main_full_banner').slick({
    	  slidesToShow: 1,
    	  slidesToScroll: 1,
    	  arrows: false,
    	  fade: true,
    	  asNavFor: '.slider-nav'
      });
    });
  </script>
<div id="Container">
  <div id="Contents">
    <div class="main_full_banner">
      <div class="banner_wrap slick_slider slick-initialized slick-slider" id="mainFullSlider">
        <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">이전 슬라이드</button>
        <div aria-live="polite" class="slick-list draggable">
          <div class="slick-track" style="opacity: 1; width: 19968px;" role="listbox">
            <div class="slick-slide" data-slick-index="0" aria-hidden="true" style="width: 1536px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;" tabindex="-1" role="option"
              aria-describedby="slick-slide00"
            >
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102240119&amp;trackingCd=Home_Planshop1_1_PROD" class="banner_link" data-attr="홈^메인롤링배너^12월&nbsp;올영픽_노도연^1" data-trk="/"
                tabindex="-1"
              >
                <p class="banner_desc">
                  <span class="tit" style="color: #fff;">올영 P!CK </span>
                  <strong style="color: #fff;">올리브영이 <br>P!CK한 <br>이 달의 브랜드
                  </strong>
                  <span style="color: #fff;">어워즈 수상상품 최대 40%</span>
                </p>
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/7314143738967947759.jpg" alt="12월&nbsp;올영픽_노도연">
              </a>
            </div>
            <div class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1536px; position: relative; left: -1536px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;" tabindex="-1"
              role="option" aria-describedby="slick-slide01"
            >
              <a href="https://www.oliveyoung.co.kr/store/amusement/festa.do?festaTab=myAwards&amp;trackingCd=Home_Planshop1_2_PROD" class="banner_link" data-attr="홈^메인롤링배너^어워즈&amp;페스타&nbsp;개인화&nbsp;영역_임예원^2" data-trk="/"
                tabindex="-1"
              >
                <p class="banner_desc">
                  <span class="tit">어워즈&amp;페스타 </span>
                  <strong>올영과 함께한 <br>연말결산 <br>나만의어워즈
                  </strong>
                  <span>쿠폰 100%당첨혜택도 챙기세요!</span>
                </p>
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/83696479536803680.jpg" alt="어워즈&amp;페스타&nbsp;개인화&nbsp;영역_임예원">
              </a>
            </div>
            <div class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 1536px; position: relative; left: -3072px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;" tabindex="-1"
              role="option" aria-describedby="slick-slide02"
            >
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101780285&amp;trackingCd=Home_Planshop1_3_PROD" class="banner_link" data-attr="홈^메인롤링배너^124-2302_황하영^3" data-trk="/"
                tabindex="-1"
              >
                <p class="banner_desc">
                  <span class="tit">그라펜&amp;줄라이미</span>
                  <strong>또다른 나를 <br>깨우는 <br>향기
                  </strong>
                  <span>겨울 맞춤 퍼퓸 최대 18%할인</span>
                </p>
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/6102272332491576584.jpg" alt="124-2302_황하영">
              </a>
            </div>
            <div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 1536px; position: relative; left: -4608px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;" tabindex="-1"
              role="option" aria-describedby="slick-slide03"
            >
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102390148&amp;trackingCd=Home_Planshop1_4_PROD" class="banner_link" data-attr="홈^메인롤링배너^124-1001_권세희^4" data-trk="/"
                tabindex="-1"
              >
                <p class="banner_desc">
                  <span class="tit">클리오</span>
                  <strong>메쉬를 입어<br>더 촘촘히<br>빛나요
                  </strong>
                  <span>매쉬글로우 선런칭 기념 33%할인</span>
                </p>
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/1570821513159820486.jpg" alt="124-1001_권세희">
              </a>
            </div>
            <div class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 1536px; position: relative; left: -6144px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;" tabindex="-1"
              role="option" aria-describedby="slick-slide04"
            >
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102370058&amp;trackingCd=Home_Planshop1_5_PROD" class="banner_link" data-attr="홈^메인롤링배너^124-0201_신현지^5" data-trk="/"
                tabindex="0"
              >
                <p class="banner_desc">
                  <span class="tit">아누아</span>
                  <strong>어성초의<br>진정효과로<br>지워봐요
                  </strong>
                  <span>어성초 클렌징/기초 최대 39%할인</span>
                </p>
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/3265718050018782226.jpg" alt="124-0201_신현지">
              </a>
            </div>
            <div class="slick-slide slick-current slick-active" data-slick-index="5" aria-hidden="false"
              style="width: 1536px; position: relative; left: -7680px; top: 0px; z-index: 1000; opacity: 1; transition: opacity 500ms ease 0s;" tabindex="-1" role="option" aria-describedby="slick-slide05"
            >
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102160158&amp;trackingCd=Home_Planshop1_6_PROD" class="banner_link" data-attr="홈^메인롤링배너^124-4101_도고운^6" data-trk="/"
                tabindex="-1"
              >
                <p class="banner_desc">
                  <span class="tit">좋은느낌</span>
                  <strong>여린 피부가<br>직접 닿아도<br>안심해요
                  </strong>
                  <span>무표백 생리대 최대 60%할인</span>
                </p>
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/1/607927090278401965.jpg" alt="124-4101_도고운">
              </a>
            </div>
          </div>
        </div>
        <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">다음 슬라이드</button>
        <button id="mainSliderBtn">멈춤</button>
        <p class="slick-paging">
          <span class="cur_no">6</span>
          /13
        </p>
      </div>
    </div>
    <input type="hidden" id="chkNo" name="chkNo" value="1">
    <!-- 큐레이션 S 옴니채널 개선으로 마케팅 수신동의 / 로그인버튼 삭제 -->
    <div class="curation_wrap">
      <div class="loading_box main" style="display: none;">
        <span class="icon">
          <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif" alt="로딩중">
        </span>
        <p class="txt">고객님을 위한 상품 추천중이에요</p>
      </div>
      <div class="curation_area two" style="">
        <div class="inner">
          <div class="curation_slide type03" id="recobell_area2">
            <div class="tit_type03">
              <span id="rectypeTitle">고객님을 위한 추천 상품(랜덤)</span>
              <button class="moreBtn" id="crt_more_p001" onclick="javascript:common.wlog('home_curation2_more_btn');">
                <span>더보기</span>
              </button>
            </div>
            <div class="curation_slide type03">
              <ul id="main_curation03_01" class="slide_list slick_slider slick-initialized slick-slider" name="section1">
                <div aria-live="polite" class="slick-list">
                  <div class="slick-track" style="opacity: 1; width: 2550px;" role="listbox">
                    <li data-page-no="1" class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1; width: 2550px;"
                      tabindex="-1" role="option" aria-describedby="slick-slide70"
                    >
                      <ul class="curation_list">
                        <li class="curation_item" data-idx="0">
                          <a
                            href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000147809&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_1&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=1"
                            name="Home_Curation2_1" class="item a_detail" data-ref-goodsno="A000000147809" data-egrank="1" data-egcode="a901_a901" data-attr="홈^큐레이션2^[형원PICK]웰라쥬 리얼 히알루로닉 블루100 앰플 (본품100ml+4ml 증정)^1"
                            data-impression="A000000147809^홈_큐레이션2^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="0"
                            onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000147809&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;1&quot;); common.wlog(&quot;home_curation2_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000147809&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;1&quot;, &quot;Home_Curation2_1&quot;);"
                            data-impression-visibility="1"
                          >
                            <span class="thumb_flag best">베스트</span>
                            <span class="thumImg">
                              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014780914ko.jpg?l=ko" alt="[형원PICK]웰라쥬 리얼 히알루로닉 블루100 앰플 (본품100ml+4ml 증정)" onerror="common.errorImg(this);">
                            </span>
                            <div class="prd_name">
                              <p class="tx_name">[형원PICK]웰라쥬 리얼 히알루로닉 블루100 앰플 (본품100ml+4ml 증정)</p>
                            </div>
                            <p class="prd_price">
                              <span class="tx_org">
                                <span class="tx_num">28,000</span>
                                원
                              </span>
                              <span class="tx_cur">
                                <span class="tx_num">22,400</span>
                                원
                              </span>
                            </p>
                            <p class="prd_flag">
                              <span class="icon_flag sale">세일</span>
                              <span class="icon_flag delivery">오늘드림</span>
                            </p>
                          </a>
                          <button type="button" class="btnbag" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000147809" data-item-no="001" tabindex="0" data-rccode="pc_main_02_c">장바구니 담기</button>
                        </li>
                        <li class="curation_item" data-idx="1">
                          <a
                            href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175917&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_1&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=2"
                            name="Home_Curation2_1" class="item a_detail" data-ref-goodsno="A000000175917" data-egrank="2" data-egcode="a901_a901" data-attr="홈^큐레이션2^[2022 어워즈] 토리든 다이브인 세럼 70ml 대용량 기획 (+수딩크림 50ml 본품증정)^2"
                            data-impression="A000000175917^홈_큐레이션2^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="0"
                            onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175917&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;2&quot;); common.wlog(&quot;home_curation2_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175917&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;2&quot;, &quot;Home_Curation2_1&quot;);"
                            data-impression-visibility="1"
                          >
                            <span class="thumb_flag best">베스트</span>
                            <span class="thumImg">
                              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017591714ko.jpg?l=ko" alt="[2022 어워즈] 토리든 다이브인 세럼 70ml 대용량 기획 (+수딩크림 50ml 본품증정)" onerror="common.errorImg(this);">
                            </span>
                            <div class="prd_name">
                              <p class="tx_name">[2022 어워즈] 토리든 다이브인 세럼 70ml 대용량 기획 (+수딩크림 50ml 본품증정)</p>
                            </div>
                            <p class="prd_price">
                              <span class="tx_org">
                                <span class="tx_num">26,000</span>
                                원
                              </span>
                              <span class="tx_cur">
                                <span class="tx_num">16,950</span>
                                원
                              </span>
                            </p>
                            <p class="prd_flag">
                              <span class="icon_flag sale">세일</span>
                              <span class="icon_flag coupon">쿠폰</span>
                              <span class="icon_flag delivery">오늘드림</span>
                            </p>
                          </a>
                          <button type="button" class="btnbag" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000175917" data-item-no="001" tabindex="0" data-rccode="pc_main_02_c">장바구니 담기</button>
                        </li>
                        <li class="curation_item" data-idx="1">
                          <a
                            href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175917&amp;dispCatNo=90000010001&amp;trackingCd=Home_Curation2_1&amp;curation=recent&amp;egcode=a901_a901&amp;rccode=pc_main_02_c&amp;egrankcode=2"
                            name="Home_Curation2_1" class="item a_detail" data-ref-goodsno="A000000175917" data-egrank="2" data-egcode="a901_a901" data-attr="홈^큐레이션2^[2022 어워즈] 토리든 다이브인 세럼 70ml 대용량 기획 (+수딩크림 50ml 본품증정)^2"
                            data-impression="A000000175917^홈_큐레이션2^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="0"
                            onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000175917&quot;, &quot;&quot;, &quot;ee-productClick&quot;, &quot;홈_큐레이션2&quot;, &quot;2&quot;); common.wlog(&quot;home_curation2_prod1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000175917&quot;, &quot;90000010001&quot;,&quot;recent&quot;,&quot;pc_main_02_c&quot;, &quot;a901_a901&quot;, &quot;2&quot;, &quot;Home_Curation2_1&quot;);"
                            data-impression-visibility="1"
                          >
                            <span class="thumb_flag best">베스트</span>
                            <span class="thumImg">
                              <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017591714ko.jpg?l=ko" alt="[2022 어워즈] 토리든 다이브인 세럼 70ml 대용량 기획 (+수딩크림 50ml 본품증정)" onerror="common.errorImg(this);">
                            </span>
                            <div class="prd_name">
                              <p class="tx_name">[2022 어워즈] 토리든 다이브인 세럼 70ml 대용량 기획 (+수딩크림 50ml 본품증정)</p>
                            </div>
                            <p class="prd_price">
                              <span class="tx_org">
                                <span class="tx_num">26,000</span>
                                원
                              </span>
                              <span class="tx_cur">
                                <span class="tx_num">16,950</span>
                                원
                              </span>
                            </p>
                            <p class="prd_flag">
                              <span class="icon_flag sale">세일</span>
                              <span class="icon_flag coupon">쿠폰</span>
                              <span class="icon_flag delivery">오늘드림</span>
                            </p>
                          </a>
                          <button type="button" class="btnbag" onclick="common.gf_regCart(this); return false;" data-goods-no="A000000175917" data-item-no="001" tabindex="0" data-rccode="pc_main_02_c">장바구니 담기</button>
                        </li>
                      </ul>
                    </li>
                  </div>
                </div>
              </ul>
            </div>
            <div class="btnRef" id="btnRef">
              <button type="button" class="btn" id="refBtn2" data-current-page="1" data-total-page="5">
                <span class="icon">
                  다른상품 추천해드릴게요<em class="num"><span class="current" id="recentBeginNum">1</span>5</em>
                </span>
              </button>
            </div>
            <input type="hidden" id="rectype" name="rectype" value="p001">
          </div>
        </div>
      </div>
    </div>
    <!-- 큐레이션 E -->
    <!-- 메인 꾸밈영역 -->
    <div class="main_design_area">
      <div class="left_area"></div>
      <div class="right_area"></div>
    </div>
    <!--// 메인 꾸밈영역 -->
    <!-- catchKeyword -->
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
                  <li class="keyword_items">
                    <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250054&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 탄력" data-trk="/" tabindex="0">
                      <div class="keyword_thumb">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/9178477056191998596.jpg" alt="캐치 탄력">
                      </div>
                      <div class="keyword_title">
                        <strong>연말 검색량 50% 상승, 탄력 </strong>
                      </div>
                      <div class="keyword_sub_title">힘 없이 축 처진 피부, 속부터 꽉 채워볼까요</div>
                    </a>
                  </li>
                  <li class="keyword_items">
                    <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250053&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 입욕제" data-trk="/" tabindex="0">
                      <div class="keyword_thumb">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/2340362392685530245.jpg" alt="캐치 입욕제">
                      </div>
                      <div class="keyword_title">
                        <strong>매일 1,000번씩 검색되는 입욕제 </strong>
                      </div>
                      <div class="keyword_sub_title">추운 마음도 사르르 녹이는 입욕제 소개해요</div>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1020px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0;" tabindex="-1" role="option"
                aria-describedby="slick-slide51"
              >
                <ul class="keyword_banner">
                  <li class="keyword_items">
                    <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250007&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 핫팩" data-trk="/" tabindex="-1">
                      <div class="keyword_thumb">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/6434119825186844008.jpg" alt="캐치 핫팩">
                      </div>
                      <div class="keyword_title">
                        <strong>겨울철 인기 검색어 '핫팩' </strong>
                      </div>
                      <div class="keyword_sub_title">캠핑용 핫팩부터 온열기기까지 다 모았어요</div>
                    </a>
                  </li>
                  <li class="keyword_items">
                    <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250045&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 입냄새" data-trk="/" tabindex="-1">
                      <div class="keyword_thumb">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/6316547511827164108.jpg" alt="캐치 입냄새">
                      </div>
                      <div class="keyword_title">
                        <strong>매일 1,500번씩 검색되는 입냄새 </strong>
                      </div>
                      <div class="keyword_sub_title">마스크 속 텁텁한 구취, 상쾌하게 물리쳐요</div>
                    </a>
                  </li>
                </ul>
              </li>
            </div>
          </div>
        </ul>
      </div>
      <div class="btn_box">
        <button type="button" class="btn" id="btn_catch_keyword" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/">
          다른 키워드 더보기 <em class="num" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/"> <span class="current" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/" data-current-page="1" data-total-page="5">1</span>5
          </em>
        </button>
      </div>
    </div>
    <!--// catchKeyword -->
    <div class="main_onlyone_wrap">
      <h3 class="main_sub_tit">오직 올리브영에서만</h3>
      <div class="banner_wrap slick_slider slick-initialized slick-slider slick-dotted" id="OnlyoneSlider" role="toolbar">
        <div aria-live="polite" class="slick-list draggable">
          <div class="slick-track" style="opacity: 1; width: 4116px; transform: translate3d(-1029px, 0px, 0px);" role="listbox">
            <div class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101740067&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^필리밀리_유지나^4" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/6764652632243002936.jpg" alt="필리밀리_유지나">
                <div class="txt" style="color: #000000">
                  <strong class="title">필리밀리 </strong> <strong class="title">대용량 특가대전!</strong>
                  <span class="desc">연말에는 사야한다!</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101700096&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^PB연합_임용성^5" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3813874780963327964.jpg" alt="PB연합_임용성">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">굿 BUY 스킨케어 </strong> <strong class="title">고민별 BEST템 </strong>
                  <span class="desc">최대 40% 할인!</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101710081&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^브링그린_윤영선^6" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5762204326916732457.jpg" alt="브링그린_윤영선">
                <div class="txt" style="color: #000000">
                  <strong class="title">피부 고민별 </strong> <strong class="title">맞춤 마스크팩! </strong>
                  <span class="desc">할인 혜택까지!</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide30">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101730145&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^웨이크메이크x컬러그램_황동화^1" data-trk="/"
                tabindex="0"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1518724697511382005.jpg" alt="웨이크메이크x컬러그램_황동화">
                <div class="txt" style="color: #000000">
                  <strong class="title">컬러그램</strong> <strong class="title">웨이크메이크</strong>
                  <span class="desc">반짝이는 연말메이크업</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide31">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101890065&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^라운드어라운드_박성은^2" data-trk="/" tabindex="0">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1331239465379758361.jpg" alt="라운드어라운드_박성은">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">마음까지 촉촉한 </strong> <strong class="title">바디 보습 기프트</strong>
                  <span class="desc">선물로 찜! 최대 50% OFF</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide32">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101880238&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^123-3105_최지현^3" data-trk="/"
                tabindex="0"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5981745503257191616.jpg" alt="123-3105_최지현">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">MERRY</strong> <strong class="title">DELIGHT</strong>
                  <span class="desc">MAX40% 특가</span>
                </div>
              </a>
            </div>
            <div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide33">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101740067&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^필리밀리_유지나^4" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/6764652632243002936.jpg" alt="필리밀리_유지나">
                <div class="txt" style="color: #000000">
                  <strong class="title">필리밀리 </strong> <strong class="title">대용량 특가대전!</strong>
                  <span class="desc">연말에는 사야한다!</span>
                </div>
              </a>
            </div>
            <div class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide34">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101700096&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^PB연합_임용성^5" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3813874780963327964.jpg" alt="PB연합_임용성">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">굿 BUY 스킨케어 </strong> <strong class="title">고민별 BEST템 </strong>
                  <span class="desc">최대 40% 할인!</span>
                </div>
              </a>
            </div>
            <div class="slick-slide" data-slick-index="5" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide35">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101710081&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^브링그린_윤영선^6" data-trk="/" tabindex="-1">
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5762204326916732457.jpg" alt="브링그린_윤영선">
                <div class="txt" style="color: #000000">
                  <strong class="title">피부 고민별 </strong> <strong class="title">맞춤 마스크팩! </strong>
                  <span class="desc">할인 혜택까지!</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="6" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101730145&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^웨이크메이크x컬러그램_황동화^1" data-trk="/"
                tabindex="-1"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1518724697511382005.jpg" alt="웨이크메이크x컬러그램_황동화">
                <div class="txt" style="color: #000000">
                  <strong class="title">컬러그램</strong> <strong class="title">웨이크메이크</strong>
                  <span class="desc">반짝이는 연말메이크업</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101890065&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^라운드어라운드_박성은^2" data-trk="/"
                tabindex="-1"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1331239465379758361.jpg" alt="라운드어라운드_박성은">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">마음까지 촉촉한 </strong> <strong class="title">바디 보습 기프트</strong>
                  <span class="desc">선물로 찜! 최대 50% OFF</span>
                </div>
              </a>
            </div>
            <div class="slick-slide slick-cloned" data-slick-index="8" aria-hidden="true" style="width: 343px;" tabindex="-1">
              <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101880238&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^123-3105_최지현^3" data-trk="/"
                tabindex="-1"
              >
                <img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5981745503257191616.jpg" alt="123-3105_최지현">
                <div class="txt" style="color: #FFFFFF">
                  <strong class="title">MERRY</strong> <strong class="title">DELIGHT</strong>
                  <span class="desc">MAX40% 특가</span>
                </div>
              </a>
            </div>
          </div>
        </div>
        <ul class="slick-dots" style="display: block;" role="tablist">
          <li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation30" id="slick-slide30">
            <button type="button" data-role="none" role="button" tabindex="0">1</button>
          </li>
          <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation31" id="slick-slide31">
            <button type="button" data-role="none" role="button" tabindex="0">2</button>
          </li>
        </ul>
      </div>
    </div>
    <h3 class="main_sub_tit">
      <strong>이 상품 어때요?(랜덤)</strong>
    </h3>
    <div class="main_recomm_wrap slick-initialized slick-slider slick-dotted" id="mainReComSlider" role="toolbar">
      <button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
      <div aria-live="polite" class="slick-list draggable">
        <div class="slick-track" style="opacity: 1; width: 5100px; transform: translate3d(-1020px, 0px, 0px);" role="listbox">
          <div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 1020px;" tabindex="-1">
            <ul class="cate_prd_list no_line">
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175960&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000175960" data-attr="홈^이상품어때요^[1+1 기획] MAC 립스틱 1+1 기획 2종^9" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                    data-impression="A000000175960^홈_이상품어때요^9" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017596001ko.jpg?l=ko" alt="[1+1 기획] MAC 립스틱 1+1 기획 2종" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000175960" data-attr="홈^이상품어때요^[1+1 기획] MAC 립스틱 1+1 기획 2종^9" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">맥</span>
                      <p class="tx_name">[1+1 기획] MAC 립스틱 1+1 기획 2종</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000175960" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_cur">
                      <span class="tx_num">36,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000175960" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000167981&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="B000000167981" data-attr="홈^이상품어때요^셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)^10" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="B000000167981^홈_이상품어때요^10" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/B00000016798117ko.jpg?l=ko" alt="셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="B000000167981" data-attr="홈^이상품어때요^셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)^10" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">셀렉스</span>
                      <p class="tx_name">셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="B000000167981" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">29,900</span>
                      원 ~
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">23,900</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag coupon">쿠폰</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (304)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="B000000167981" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175408&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000175408" data-attr="홈^이상품어때요^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^11" data-ref-dispcatno="90000010001"
                    data-ref-itemno="001" data-trk="null" data-impression="A000000175408^홈_이상품어때요^11" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017540806ko.jpg?l=ko" alt="[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000175408" data-attr="홈^이상품어때요^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^11" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">피카소</span>
                      <p class="tx_name">[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000175408" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">19,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">14,900</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000175408" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176104&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000176104" data-attr="홈^이상품어때요^[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)^12" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000176104^홈_이상품어때요^12" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017610403ko.jpg?l=ko" alt="[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000176104" data-attr="홈^이상품어때요^[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)^12" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">아누아</span>
                      <p class="tx_name">[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000176104" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">58,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">35,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000176104" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
            </ul>
          </div>
          <div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide40">
            <ul class="cate_prd_list no_line">
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170878&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000170878" data-attr="홈^이상품어때요^[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1^1" data-ref-dispcatno="90000010001"
                    data-ref-itemno="002" data-trk="null" data-impression="A000000170878^홈_이상품어때요^1" data-impression-visibility="1" tabindex="0"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017087813ko.jpg?l=ko" alt="[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000170878" data-attr="홈^이상품어때요^[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1^1" data-ref-dispcatno="90000010001"
                      data-ref-itemno="002" data-trk="null" tabindex="0"
                    >
                      <span class="tx_brand">줄라이미</span>
                      <p class="tx_name">[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000170878" tabindex="0">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">49,000</span>
                      원 ~
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">39,900</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag coupon">쿠폰</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000170878" data-ref-dispcatno="90000010001" data-ref-itemno="002" tabindex="0">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176990&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000176990" data-attr="홈^이상품어때요^[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                    data-impression="A000000176990^홈_이상품어때요^2" data-impression-visibility="1" tabindex="0"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017699001ko.jpg?l=ko" alt="[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000176990" data-attr="홈^이상품어때요^[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" tabindex="0"
                    >
                      <span class="tx_brand">그라펜</span>
                      <p class="tx_name">[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000176990" tabindex="0">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">39,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">35,100</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag coupon">쿠폰</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 100.0%">10점만점에 5.5점</span>
                    </span>
                    (1)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000176990" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="0">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176293&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000176293" data-attr="홈^이상품어때요^[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000176293^홈_이상품어때요^3" data-impression-visibility="1" tabindex="0"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017629306ko.jpg?l=ko" alt="[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000176293" data-attr="홈^이상품어때요^[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)^3" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="0"
                    >
                      <span class="tx_brand">가히</span>
                      <p class="tx_name">[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000176293" tabindex="0">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">74,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">49,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (257)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000176293" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="0">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174024&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000174024" data-attr="홈^이상품어때요^[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000174024^홈_이상품어때요^4" data-impression-visibility="1" tabindex="0"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017402402ko.jpg?l=ko" alt="[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000174024" data-attr="홈^이상품어때요^[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)^4" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="0"
                    >
                      <span class="tx_brand">메디온</span>
                      <p class="tx_name">[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000174024" tabindex="0">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">28,900</span>
                      원 ~
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">20,900</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (48)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000174024" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="0">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="0">새창보기</button>
                  </p>
                </div>
              </li>
            </ul>
          </div>
          <div class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide41">
            <ul class="cate_prd_list no_line">
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175617&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000175617" data-attr="홈^이상품어때요^[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)^5" data-ref-dispcatno="90000010001"
                    data-ref-itemno="001" data-trk="null" data-impression="A000000175617^홈_이상품어때요^5" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017561702ko.jpg?l=ko" alt="[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)"
                      onerror="common.errorImg(this);"
                    >
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000175617" data-attr="홈^이상품어때요^[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)^5"
                      data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">오쏘몰</span>
                      <p class="tx_name">[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000175617" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">75,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">61,500</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 100.0%">10점만점에 5.5점</span>
                    </span>
                    (475)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000175617" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171427&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000171427" data-attr="홈^이상품어때요^[재찬 Pick] 메디힐 마데카소사이드 흔적 패드 더블 기획 (100매+100매 리필)^6" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000171427^홈_이상품어때요^6" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017142720ko.jpg?l=ko" alt="[재찬 Pick] 메디힐 마데카소사이드 흔적 패드 더블 기획 (100매+100매 리필)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000171427" data-attr="홈^이상품어때요^[재찬 Pick] 메디힐 마데카소사이드 흔적 패드 더블 기획 (100매+100매 리필)^6" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">메디힐</span>
                      <p class="tx_name">[재찬 Pick] 메디힐 마데카소사이드 흔적 패드 더블 기획 (100매+100매 리필)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000171427" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">39,900</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">27,900</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000171427" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000144547&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000144547" data-attr="홈^이상품어때요^리무브 스킨브라 4종 (스킨브라/ 플레인/ 브라이트/ 플레인 브라이트) ^7" data-ref-dispcatno="90000010001" data-ref-itemno="003"
                    data-trk="null" data-impression="A000000144547^홈_이상품어때요^7" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014454709ko.jpg?l=ko" alt="리무브 스킨브라 4종 (스킨브라/ 플레인/ 브라이트/ 플레인 브라이트) " onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000144547" data-attr="홈^이상품어때요^리무브 스킨브라 4종 (스킨브라/ 플레인/ 브라이트/ 플레인 브라이트) ^7" data-ref-dispcatno="90000010001"
                      data-ref-itemno="003" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">리무브</span>
                      <p class="tx_name">리무브 스킨브라 4종 (스킨브라/ 플레인/ 브라이트/ 플레인 브라이트)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000144547" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_cur">
                      <span class="tx_num">18,000</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000144547" data-ref-dispcatno="90000010001" data-ref-itemno="003" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000176040&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="B000000176040" data-attr="홈^이상품어때요^(NEW) 빌리엔젤 딸기 크레이프 케이크^8" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                    data-impression="B000000176040^홈_이상품어때요^8" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/B00000017604004ko.jpg?l=ko" alt="(NEW) 빌리엔젤 딸기 크레이프 케이크" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="B000000176040" data-attr="홈^이상품어때요^(NEW) 빌리엔젤 딸기 크레이프 케이크^8" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">빌리엔젤</span>
                      <p class="tx_name">(NEW) 빌리엔젤 딸기 크레이프 케이크</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="B000000176040" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">45,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">36,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag coupon">쿠폰</span>
                    <span class="icon_flag free">무배</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (13)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="B000000176040" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
            </ul>
          </div>
          <div class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 1020px;" tabindex="-1" role="option" aria-describedby="slick-slide42">
            <ul class="cate_prd_list no_line">
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175960&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000175960" data-attr="홈^이상품어때요^[1+1 기획] MAC 립스틱 1+1 기획 2종^9" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                    data-impression="A000000175960^홈_이상품어때요^9" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017596001ko.jpg?l=ko" alt="[1+1 기획] MAC 립스틱 1+1 기획 2종" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000175960" data-attr="홈^이상품어때요^[1+1 기획] MAC 립스틱 1+1 기획 2종^9" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">맥</span>
                      <p class="tx_name">[1+1 기획] MAC 립스틱 1+1 기획 2종</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000175960" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_cur">
                      <span class="tx_num">36,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000175960" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000167981&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="B000000167981" data-attr="홈^이상품어때요^셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)^10" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="B000000167981^홈_이상품어때요^10" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/B00000016798117ko.jpg?l=ko" alt="셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="B000000167981" data-attr="홈^이상품어때요^셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)^10" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">셀렉스</span>
                      <p class="tx_name">셀렉스 프로핏 웨이프로틴 드링크 330ml 12입 (아메리카노/초콜릿/복숭아 택1)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="B000000167981" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">29,900</span>
                      원 ~
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">23,900</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag coupon">쿠폰</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (304)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="B000000167981" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175408&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000175408" data-attr="홈^이상품어때요^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^11" data-ref-dispcatno="90000010001"
                    data-ref-itemno="001" data-trk="null" data-impression="A000000175408^홈_이상품어때요^11" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017540806ko.jpg?l=ko" alt="[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000175408" data-attr="홈^이상품어때요^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^11" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">피카소</span>
                      <p class="tx_name">[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000175408" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">19,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">14,900</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000175408" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176104&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000176104" data-attr="홈^이상품어때요^[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)^12" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000176104^홈_이상품어때요^12" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017610403ko.jpg?l=ko" alt="[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000176104" data-attr="홈^이상품어때요^[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)^12" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">아누아</span>
                      <p class="tx_name">[2022어워즈]아누아 어성초 77 토너 어워즈 한정 기획 (500ml+250ml)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000176104" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">58,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">35,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000176104" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
            </ul>
          </div>
          <div class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" style="width: 1020px;" tabindex="-1">
            <ul class="cate_prd_list no_line">
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170878&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000170878" data-attr="홈^이상품어때요^[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1^1" data-ref-dispcatno="90000010001"
                    data-ref-itemno="002" data-trk="null" data-impression="A000000170878^홈_이상품어때요^1" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017087813ko.jpg?l=ko" alt="[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000170878" data-attr="홈^이상품어때요^[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1^1" data-ref-dispcatno="90000010001"
                      data-ref-itemno="002" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">줄라이미</span>
                      <p class="tx_name">[12월 올영픽][미노이PICK/미노이QR카드] 줄라이미 페르소나 퍼퓸 50ml 단품/기획 6종 택1</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000170878" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">49,000</span>
                      원 ~
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">39,900</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag coupon">쿠폰</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                    </span>
                    (999+)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000170878" data-ref-dispcatno="90000010001" data-ref-itemno="002" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176990&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000176990" data-attr="홈^이상품어때요^[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                    data-impression="A000000176990^홈_이상품어때요^2" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017699001ko.jpg?l=ko" alt="[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000176990" data-attr="홈^이상품어때요^[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">그라펜</span>
                      <p class="tx_name">[빈지노PICK][NEW] 그라펜 타투 퍼퓸 레몬 50ml</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000176990" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">39,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">35,100</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag coupon">쿠폰</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 100.0%">10점만점에 5.5점</span>
                    </span>
                    (1)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000176990" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176293&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000176293" data-attr="홈^이상품어때요^[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000176293^홈_이상품어때요^3" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017629306ko.jpg?l=ko" alt="[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000176293" data-attr="홈^이상품어때요^[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)^3" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">가히</span>
                      <p class="tx_name">[2022 어워즈] 가히 멀티밤 리필형 기획세트 (본품 9g+리필 9g)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000176293" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">74,000</span>
                      원
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">49,000</span>
                      원
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (257)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000176293" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
              <li class="flag">
                <div class="prd_info ">
                  <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174024&amp;dispCatNo=90000010001&amp;trackingCd=Home_Recommand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode"
                    name="Home_Recommand" class="prd_thumb goodsList" data-ref-goodsno="A000000174024" data-attr="홈^이상품어때요^[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                    data-trk="null" data-impression="A000000174024^홈_이상품어때요^4" data-impression-visibility="1" tabindex="-1"
                  >
                    <span class="thumb_flag best">베스트</span>
                    <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017402402ko.jpg?l=ko" alt="[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)" onerror="common.errorImg(this);">
                  </a>
                  <div class="prd_name">
                    <a href="javascript:;" name="Home_Recommand" class="goodsList" data-ref-goodsno="A000000174024" data-attr="홈^이상품어때요^[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)^4" data-ref-dispcatno="90000010001"
                      data-ref-itemno="001" data-trk="null" tabindex="-1"
                    >
                      <span class="tx_brand">메디온</span>
                      <p class="tx_name">[이선빈PICK/OY단독] 메디온 밸런스젤 150ml 기획세트(+5ml*10ea)</p>
                    </a>
                  </div>
                  <button class="btn_zzim jeem" data-ref-goodsno="A000000174024" tabindex="-1">
                    <span>찜하기전</span>
                  </button>
                  <p class="prd_price">
                    <span class="tx_org">
                      <span class="tx_num">28,900</span>
                      원 ~
                    </span>
                    <span class="tx_cur">
                      <span class="tx_num">20,900</span>
                      원 ~
                    </span>
                  </p>
                  <p class="prd_flag">
                    <span class="icon_flag sale">세일</span>
                    <span class="icon_flag delivery">오늘드림</span>
                  </p>
                  <p class="prd_point_area tx_num">
                    <span class="review_point">
                      <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                    </span>
                    (48)
                  </p>
                  <p class="prd_btn_area">
                    <button class="cartBtn" data-ref-goodsno="A000000174024" data-ref-dispcatno="90000010001" data-ref-itemno="001" tabindex="-1">장바구니</button>
                    <button class="btn_new_pop goodsList" tabindex="-1">새창보기</button>
                  </p>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button>
      <ul class="slick-dots" style="display: block;" role="tablist">
        <li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation40" id="slick-slide40">
          <button type="button" data-role="none" role="button" tabindex="0">1</button>
        </li>
        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation41" id="slick-slide41">
          <button type="button" data-role="none" role="button" tabindex="0">2</button>
        </li>
        <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation42" id="slick-slide42">
          <button type="button" data-role="none" role="button" tabindex="0">3</button>
        </li>
      </ul>
    </div>
    <h3 class="main_sub_tit">
      <strong>주목해야 할 브랜드(상품 많은 순)</strong>
    </h3>
    <div class="main_brand_wrap">
      <div class="brand_wrapper">
        <div class="inner_unit">
          <div>
            <ul class="comm3sTabs sixSet" id="tabList">
              <li class="" data-ref-brndno="A001728">
                <a href="javascript:;" data-attr="홈^주목브랜드^아비브^1">아비브</a>
              </li>
              <li class="" data-ref-brndno="A000486">
                <a href="javascript:;" data-attr="홈^주목브랜드^눅스^2">눅스</a>
              </li>
              <li class="brnd-slide on" data-ref-brndno="A003288">
                <a href="javascript:;" data-attr="홈^주목브랜드^피카소^3">피카소</a>
              </li>
              <li class="" data-ref-brndno="A004933">
                <a href="javascript:;" data-attr="홈^주목브랜드^마른파이브^4">마른파이브</a>
              </li>
              <li class="" data-ref-brndno="A003917">
                <a href="javascript:;" data-attr="홈^주목브랜드^비브리브^5">비브리브</a>
              </li>
              <li class="" data-ref-brndno="A003041">
                <a href="javascript:;" data-attr="홈^주목브랜드^라보에이치^6">라보에이치</a>
              </li>
            </ul>
            <div class="main_brand_tab main_brand brndList" data-ref-brndno="A001728">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175186&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175186" data-attr="홈^주목브랜드^[2022어워즈] 아비브 약산성 pH 시트 마스크 어성초 핏 기획 (4매+2매)^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175186^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017518601ko.jpg?l=ko" alt="[2022어워즈] 아비브 약산성 pH 시트 마스크 어성초 핏 기획 (4매+2매)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175186" data-attr="홈^주목브랜드^[2022어워즈] 아비브 약산성 pH 시트 마스크 어성초 핏 기획 (4매+2매)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">아비브</span>
                        <p class="tx_name">[2022어워즈] 아비브 약산성 pH 시트 마스크 어성초 핏 기획 (4매+2매)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175186">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">16,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">9,600</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175186" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170041&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000170041" data-attr="홈^주목브랜드^[2022어워즈] 아비브 어성초 스팟 패드 카밍터치 기획 (80매+80매)^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000170041^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017004108ko.jpg?l=ko" alt="[2022어워즈] 아비브 어성초 스팟 패드 카밍터치 기획 (80매+80매)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000170041" data-attr="홈^주목브랜드^[2022어워즈] 아비브 어성초 스팟 패드 카밍터치 기획 (80매+80매)^2" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">아비브</span>
                        <p class="tx_name">[2022어워즈] 아비브 어성초 스팟 패드 카밍터치 기획 (80매+80매)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000170041">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">40,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">24,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000170041" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000107897&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000107897" data-attr="홈^주목브랜드^아비브 껌딱지 시트 마스크 어성초 스티커 10매입^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000107897^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0010/A00000010789705ko.jpg?l=ko" alt="아비브 껌딱지 시트 마스크 어성초 스티커 10매입" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000107897" data-attr="홈^주목브랜드^아비브 껌딱지 시트 마스크 어성초 스티커 10매입^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">아비브</span>
                        <p class="tx_name">아비브 껌딱지 시트 마스크 어성초 스티커 10매입</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000107897">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">40,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">20,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000107897" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000115490&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000115490" data-attr="홈^주목브랜드^아비브 약산성 pH 시트 마스크 아쿠아 핏 10P^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000115490^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0011/A00000011549002ko.jpg?l=ko" alt="아비브 약산성 pH 시트 마스크 아쿠아 핏 10P" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000115490" data-attr="홈^주목브랜드^아비브 약산성 pH 시트 마스크 아쿠아 핏 10P^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">아비브</span>
                        <p class="tx_name">아비브 약산성 pH 시트 마스크 아쿠아 핏 10P</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000115490">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">40,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">24,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (486)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000115490" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A001728', 'Home_Brand_Banner');">
                  <span>아비브</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab main_brand brndList" data-ref-brndno="A000486">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168794&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000168794" data-attr="홈^주목브랜드^눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 핸드 앤 네일크림 30ml)^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000168794^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016879405ko.jpg?l=ko" alt="눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 핸드 앤 네일크림 30ml)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000168794" data-attr="홈^주목브랜드^눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 핸드 앤 네일크림 30ml)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">눅스</span>
                        <p class="tx_name">눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 핸드 앤 네일크림 30ml)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000168794">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">32,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">28,800</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000168794" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168790&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000168790" data-attr="홈^주목브랜드^눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000168790^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016879009ko.jpg?l=ko" alt="눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000168790" data-attr="홈^주목브랜드^눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)^2" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">눅스</span>
                        <p class="tx_name">눅스 베스트셀러 기프트세트(드라이오일 30ml + 레브드미엘 스틱레브르4g)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000168790">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">32,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">28,800</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (436)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000168790" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176342&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000176342" data-attr="홈^주목브랜드^눅스 레브드미엘 바디스크럽 기획(+드라이오일 10ml+우드스쿱 증정)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000176342^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017634202ko.jpg?l=ko" alt="눅스 레브드미엘 바디스크럽 기획(+드라이오일 10ml+우드스쿱 증정)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000176342" data-attr="홈^주목브랜드^눅스 레브드미엘 바디스크럽 기획(+드라이오일 10ml+우드스쿱 증정)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">눅스</span>
                        <p class="tx_name">눅스 레브드미엘 바디스크럽 기획(+드라이오일 10ml+우드스쿱 증정)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000176342">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">39,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">34,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: %">10점만점에 5.5점</span>
                      </span>
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000176342" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176341&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000176341" data-attr="홈^주목브랜드^눅스 쁘띠 홀리데이 기프트 세트 (베리로즈립밤15g+플로럴 샤워젤 30ml+플로럴 오일 10ml)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000176341^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017634102ko.jpg?l=ko" alt="눅스 쁘띠 홀리데이 기프트 세트 (베리로즈립밤15g+플로럴 샤워젤 30ml+플로럴 오일 10ml)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000176341" data-attr="홈^주목브랜드^눅스 쁘띠 홀리데이 기프트 세트 (베리로즈립밤15g+플로럴 샤워젤 30ml+플로럴 오일 10ml)^4" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">눅스</span>
                        <p class="tx_name">눅스 쁘띠 홀리데이 기프트 세트 (베리로즈립밤15g+플로럴 샤워젤 30ml+플로럴 오일 10ml)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000176341">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">29,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">22,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 100.0%">10점만점에 5.5점</span>
                      </span>
                      (3)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000176341" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A000486', 'Home_Brand_Banner');">
                  <span>눅스</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab main_brand brndList show" data-ref-brndno="A003288">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175408&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175408" data-attr="홈^주목브랜드^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175408^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017540806ko.jpg?l=ko" alt="[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175408" data-attr="홈^주목브랜드^[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">피카소</span>
                        <p class="tx_name">[어워즈 한정] 피카소 메이크업 스파츌라 어워즈 한정 기획(+스펀지6P&amp;파우치 증정)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175408">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">19,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">14,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175408" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162845&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000162845" data-attr="홈^주목브랜드^피카소 속눈썹 빗^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null" data-impression="A000000162845^홈_주목브랜드^2"
                      data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016284502ko.jpg?l=ko" alt="피카소 속눈썹 빗" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000162845" data-attr="홈^주목브랜드^피카소 속눈썹 빗^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null">
                        <span class="tx_brand">피카소</span>
                        <p class="tx_name">피카소 속눈썹 빗</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000162845">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_cur">
                        <span class="tx_num">6,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000162845" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175289&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175289" data-attr="홈^주목브랜드^피카소 라텍스 스퀘어 스펀지 대용량 20P (케이스포함)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175289^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017528901ko.jpg?l=ko" alt="피카소 라텍스 스퀘어 스펀지 대용량 20P (케이스포함)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175289" data-attr="홈^주목브랜드^피카소 라텍스 스퀘어 스펀지 대용량 20P (케이스포함)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">피카소</span>
                        <p class="tx_name">피카소 라텍스 스퀘어 스펀지 대용량 20P (케이스포함)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175289">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">28,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">22,400</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (33)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175289" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171447&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000171447" data-attr="홈^주목브랜드^피카소 아이미 가닥 속눈썹 V형 (5종 중 택1)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000171447^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017144707ko.jpg?l=ko" alt="피카소 아이미 가닥 속눈썹 V형 (5종 중 택1)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000171447" data-attr="홈^주목브랜드^피카소 아이미 가닥 속눈썹 V형 (5종 중 택1)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">피카소</span>
                        <p class="tx_name">피카소 아이미 가닥 속눈썹 V형 (5종 중 택1)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000171447">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_cur">
                        <span class="tx_num">6,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (180)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000171447" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A003288', 'Home_Brand_Banner');">
                  <span>피카소</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab main_brand brndList" data-ref-brndno="A004933">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174548&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000174548" data-attr="홈^주목브랜드^[겨울용] 마른파이브 넉넉스타킹(150D) / 삭스타킹(200D) (단품/기획 택1)^1" data-ref-dispcatno="90000010001" data-ref-itemno="004" data-trk="null"
                      data-impression="A000000174548^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017454832ko.jpg?l=ko" alt="[겨울용] 마른파이브 넉넉스타킹(150D) / 삭스타킹(200D) (단품/기획 택1)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000174548" data-attr="홈^주목브랜드^[겨울용] 마른파이브 넉넉스타킹(150D) / 삭스타킹(200D) (단품/기획 택1)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="004" data-trk="null"
                      >
                        <span class="tx_brand">마른파이브</span>
                        <p class="tx_name">[겨울용] 마른파이브 넉넉스타킹(150D) / 삭스타킹(200D) (단품/기획 택1)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000174548">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">15,900</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">14,300</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (259)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000174548" data-ref-dispcatno="90000010001" data-ref-itemno="004">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000175517&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="B000000175517" data-attr="홈^주목브랜드^[김재우PICK]마른파이브 오리지널/엑스트라웜 히트터치 상하의 세트 15종 1택^2" data-ref-dispcatno="90000010001" data-ref-itemno="010" data-trk="null"
                      data-impression="B000000175517^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/B00000017551710ko.jpg?l=ko" alt="[김재우PICK]마른파이브 오리지널/엑스트라웜 히트터치 상하의 세트 15종 1택" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="B000000175517" data-attr="홈^주목브랜드^[김재우PICK]마른파이브 오리지널/엑스트라웜 히트터치 상하의 세트 15종 1택^2" data-ref-dispcatno="90000010001"
                        data-ref-itemno="010" data-trk="null"
                      >
                        <span class="tx_brand">마른파이브</span>
                        <p class="tx_name">[김재우PICK]마른파이브 오리지널/엑스트라웜 히트터치 상하의 세트 15종 1택</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="B000000175517">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">20,900</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">19,900</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (15)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="B000000175517" data-ref-dispcatno="90000010001" data-ref-itemno="010">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000175601&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="B000000175601" data-attr="홈^주목브랜드^마른파이브 넉넉 온깅스 기모 스타킹&amp;기모레깅스 택1^3" data-ref-dispcatno="90000010001" data-ref-itemno="002" data-trk="null"
                      data-impression="B000000175601^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/B00000017560132ko.jpg?l=ko" alt="마른파이브 넉넉 온깅스 기모 스타킹&amp;기모레깅스 택1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="B000000175601" data-attr="홈^주목브랜드^마른파이브 넉넉 온깅스 기모 스타킹&amp;기모레깅스 택1^3" data-ref-dispcatno="90000010001" data-ref-itemno="002"
                        data-trk="null"
                      >
                        <span class="tx_brand">마른파이브</span>
                        <p class="tx_name">마른파이브 넉넉 온깅스 기모 스타킹&amp;기모레깅스 택1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="B000000175601">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">13,900</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">12,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (14)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="B000000175601" data-ref-dispcatno="90000010001" data-ref-itemno="002">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000173681&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="B000000173681" data-attr="홈^주목브랜드^마른파이브 오가닉 심리스 쉬어브라 2.0 3종 택1^4" data-ref-dispcatno="90000010001" data-ref-itemno="015" data-trk="null"
                      data-impression="B000000173681^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/B00000017368116ko.jpg?l=ko" alt="마른파이브 오가닉 심리스 쉬어브라 2.0 3종 택1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="B000000173681" data-attr="홈^주목브랜드^마른파이브 오가닉 심리스 쉬어브라 2.0 3종 택1^4" data-ref-dispcatno="90000010001" data-ref-itemno="015"
                        data-trk="null"
                      >
                        <span class="tx_brand">마른파이브</span>
                        <p class="tx_name">마른파이브 오가닉 심리스 쉬어브라 2.0 3종 택1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="B000000173681">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">29,900</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">27,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                      </span>
                      (58)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="B000000173681" data-ref-dispcatno="90000010001" data-ref-itemno="015">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A004933', 'Home_Brand_Banner');">
                  <span>마른파이브</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab main_brand brndList" data-ref-brndno="A003917">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175694&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175694" data-attr="홈^주목브랜드^비브리브 꼬박꼬밥 어워즈 기획^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175694^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017569402ko.jpg?l=ko" alt="비브리브 꼬박꼬밥 어워즈 기획" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175694" data-attr="홈^주목브랜드^비브리브 꼬박꼬밥 어워즈 기획^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null">
                        <span class="tx_brand">비브리브</span>
                        <p class="tx_name">비브리브 꼬박꼬밥 어워즈 기획</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175694">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">18,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">16,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                      </span>
                      (79)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175694" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000171112&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="B000000171112" data-attr="홈^주목브랜드^(고구마맛출시)비브리브 꼬박꼬밥 대용량 600g 5가지 맛 중 택 1^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="B000000171112^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/B00000017111204ko.jpg?l=ko" alt="(고구마맛출시)비브리브 꼬박꼬밥 대용량 600g 5가지 맛 중 택 1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="B000000171112" data-attr="홈^주목브랜드^(고구마맛출시)비브리브 꼬박꼬밥 대용량 600g 5가지 맛 중 택 1^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">비브리브</span>
                        <p class="tx_name">(고구마맛출시)비브리브 꼬박꼬밥 대용량 600g 5가지 맛 중 택 1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="B000000171112">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">58,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">37,700</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                      </span>
                      (221)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="B000000171112" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000168109&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="B000000168109" data-attr="홈^주목브랜드^(올리브영단독)비브리브 꼬박꼬밥 스타터패키지 1박스^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="B000000168109^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/B00000016810903ko.jpg?l=ko" alt="(올리브영단독)비브리브 꼬박꼬밥 스타터패키지 1박스" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="B000000168109" data-attr="홈^주목브랜드^(올리브영단독)비브리브 꼬박꼬밥 스타터패키지 1박스^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">비브리브</span>
                        <p class="tx_name">(올리브영단독)비브리브 꼬박꼬밥 스타터패키지 1박스</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="B000000168109">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">35,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">21,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (266)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="B000000168109" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000172398&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="B000000172398" data-attr="홈^주목브랜드^(올리브영단독) 비브리브 꼬박꼬밥 대용량 600g+보틀 기획 5가지 맛 중 택1^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="B000000172398^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/B00000017239805ko.jpg?l=ko" alt="(올리브영단독) 비브리브 꼬박꼬밥 대용량 600g+보틀 기획 5가지 맛 중 택1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="B000000172398" data-attr="홈^주목브랜드^(올리브영단독) 비브리브 꼬박꼬밥 대용량 600g+보틀 기획 5가지 맛 중 택1^4" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">비브리브</span>
                        <p class="tx_name">(올리브영단독) 비브리브 꼬박꼬밥 대용량 600g+보틀 기획 5가지 맛 중 택1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="B000000172398">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">65,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">42,250</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                      </span>
                      (22)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="B000000172398" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A003917', 'Home_Brand_Banner');">
                  <span>비브리브</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab main_brand brndList" data-ref-brndno="A003041">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175784&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175784" data-attr="홈^주목브랜드^[2022어워즈] 샴푸1위 라보에이치 탈모증상완화 샴푸 한정기획(750ml+112ml*2) 및 택1^1" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" data-impression="A000000175784^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017578405ko.jpg?l=ko" alt="[2022어워즈] 샴푸1위 라보에이치 탈모증상완화 샴푸 한정기획(750ml+112ml*2) 및 택1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175784" data-attr="홈^주목브랜드^[2022어워즈] 샴푸1위 라보에이치 탈모증상완화 샴푸 한정기획(750ml+112ml*2) 및 택1^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">라보에이치</span>
                        <p class="tx_name">[2022어워즈] 샴푸1위 라보에이치 탈모증상완화 샴푸 한정기획(750ml+112ml*2) 및 택1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175784">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">36,000</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">26,900</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175784" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000152475&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000152475" data-attr="홈^주목브랜드^라보에이치 탈모증상완화 샴푸 두피강화 (333ml+50ml)^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000152475^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015247509ko.jpg?l=ko" alt="라보에이치 탈모증상완화 샴푸 두피강화 (333ml+50ml)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000152475" data-attr="홈^주목브랜드^라보에이치 탈모증상완화 샴푸 두피강화 (333ml+50ml)^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">라보에이치</span>
                        <p class="tx_name">라보에이치 탈모증상완화 샴푸 두피강화 (333ml+50ml)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000152475">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">19,800</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">14,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000152475" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170445&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000170445" data-attr="홈^주목브랜드^[한정기획] 라보에이치 탈모케어 스칼프 캡슐트리트먼트 2입 기획^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000170445^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017044511ko.jpg?l=ko" alt="[한정기획] 라보에이치 탈모케어 스칼프 캡슐트리트먼트 2입 기획" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000170445" data-attr="홈^주목브랜드^[한정기획] 라보에이치 탈모케어 스칼프 캡슐트리트먼트 2입 기획^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">라보에이치</span>
                        <p class="tx_name">[한정기획] 라보에이치 탈모케어 스칼프 캡슐트리트먼트 2입 기획</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000170445">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">32,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">15,800</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (661)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000170445" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161794&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000161794" data-attr="홈^주목브랜드^[대용량]라보에이치 탈모증상완화 샴푸[두피강화/두피쿨링] 750ml 중 택1^4" data-ref-dispcatno="90000010001" data-ref-itemno="002" data-trk="null"
                      data-impression="A000000161794^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016179404ko.jpg?l=ko" alt="[대용량]라보에이치 탈모증상완화 샴푸[두피강화/두피쿨링] 750ml 중 택1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000161794" data-attr="홈^주목브랜드^[대용량]라보에이치 탈모증상완화 샴푸[두피강화/두피쿨링] 750ml 중 택1^4" data-ref-dispcatno="90000010001"
                        data-ref-itemno="002" data-trk="null"
                      >
                        <span class="tx_brand">라보에이치</span>
                        <p class="tx_name">[대용량]라보에이치 탈모증상완화 샴푸[두피강화/두피쿨링] 750ml 중 택1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000161794">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">36,000</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">25,900</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000161794" data-ref-dispcatno="90000010001" data-ref-itemno="002">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A003041', 'Home_Brand_Banner');">
                  <span>라보에이치</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
          </div>
          <div>
            <ul class="comm3sTabs sixSet" id="tabList2">
              <li class="" data-ref-brndno="A000731">
                <a href="javascript:;" data-attr="홈^주목브랜드^아임오^7">아임오</a>
              </li>
              <li class="" data-ref-brndno="A000754">
                <a href="javascript:;" data-attr="홈^주목브랜드^아로마티카^8">아로마티카</a>
              </li>
              <li class="" data-ref-brndno="A001681">
                <a href="javascript:;" data-attr="홈^주목브랜드^코스노리^9">코스노리</a>
              </li>
              <li class="" data-ref-brndno="A003660">
                <a href="javascript:;" data-attr="홈^주목브랜드^어뮤즈^10">어뮤즈</a>
              </li>
              <li class="" data-ref-brndno="A001924">
                <a href="javascript:;" data-attr="홈^주목브랜드^마녀공장^11">마녀공장</a>
              </li>
              <li class="brnd-slide on" data-ref-brndno="A000426">
                <a href="javascript:;" data-attr="홈^주목브랜드^닥터자르트^12">닥터자르트</a>
              </li>
            </ul>
            <div class="main_brand_tab2 main_brand brndList" data-ref-brndno="A000731">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175664&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175664" data-attr="홈^주목브랜드^아임오 그린앤 비건생리대 중형 26P^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175664^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017566402ko.jpg?l=ko" alt="아임오 그린앤 비건생리대 중형 26P" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175664" data-attr="홈^주목브랜드^아임오 그린앤 비건생리대 중형 26P^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null">
                        <span class="tx_brand">아임오</span>
                        <p class="tx_name">아임오 그린앤 비건생리대 중형 26P</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175664">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_cur">
                        <span class="tx_num">11,800</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag plus">1+1</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 100.0%">10점만점에 5.5점</span>
                      </span>
                      (91)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175664" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175663&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175663" data-attr="홈^주목브랜드^아임오 그린앤 비건생리대 대형 24P^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175663^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017566302ko.jpg?l=ko" alt="아임오 그린앤 비건생리대 대형 24P" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175663" data-attr="홈^주목브랜드^아임오 그린앤 비건생리대 대형 24P^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null">
                        <span class="tx_brand">아임오</span>
                        <p class="tx_name">아임오 그린앤 비건생리대 대형 24P</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175663">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_cur">
                        <span class="tx_num">11,800</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag plus">1+1</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 90.0%">10점만점에 5.5점</span>
                      </span>
                      (4)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175663" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000137005&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000137005" data-attr="홈^주목브랜드^아임오 뉴 중형 14P 6개입 기획 (총 84P)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000137005^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013700506ko.jpg?l=ko" alt="아임오 뉴 중형 14P 6개입 기획 (총 84P)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000137005" data-attr="홈^주목브랜드^아임오 뉴 중형 14P 6개입 기획 (총 84P)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">아임오</span>
                        <p class="tx_name">아임오 뉴 중형 14P 6개입 기획 (총 84P)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000137005">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">42,600</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">26,400</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (843)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000137005" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000140943&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000140943" data-attr="홈^주목브랜드^아임오 뉴 팬티라이너 6개입 기획 (20PX6)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000140943^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014094304ko.jpg?l=ko" alt="아임오 뉴 팬티라이너 6개입 기획 (20PX6)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000140943" data-attr="홈^주목브랜드^아임오 뉴 팬티라이너 6개입 기획 (20PX6)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">아임오</span>
                        <p class="tx_name">아임오 뉴 팬티라이너 6개입 기획 (20PX6)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000140943">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">24,600</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">14,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (459)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000140943" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A000731', 'Home_Brand_Banner');">
                  <span>아임오</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab2 main_brand brndList" data-ref-brndno="A000754">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170417&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000170417" data-attr="홈^주목브랜드^아로마티카 바디오일 100ml 4종 중 택1 (서큘레이팅, 서렌, 임브레이스, 어웨이크닝)^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000170417^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017041708ko.jpg?l=ko" alt="아로마티카 바디오일 100ml 4종 중 택1 (서큘레이팅, 서렌, 임브레이스, 어웨이크닝)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000170417" data-attr="홈^주목브랜드^아로마티카 바디오일 100ml 4종 중 택1 (서큘레이팅, 서렌, 임브레이스, 어웨이크닝)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">아로마티카</span>
                        <p class="tx_name">아로마티카 바디오일 100ml 4종 중 택1 (서큘레이팅, 서렌, 임브레이스, 어웨이크닝)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000170417">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">25,000</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">20,000</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000170417" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175527&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175527" data-attr="홈^주목브랜드^[2022 어워즈] 홀리 PICK 아로마티카&nbsp;바디오일&nbsp;더블괄사/리츄얼 기획 (우드&amp;유리 괄사 증정)^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" data-impression="A000000175527^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <span class="newOyflag today">
                        <em>오특</em>
                      </span>
                      <span class="newOyflag time" style="display: none;">
                        <div class="main-today">
                          <div class="timer ready">
                            <span class="nums h">
                              <span class="num" data-timer-val="0">0</span>
                              <span class="num" data-timer-val="0">0</span>
                            </span>
                            <span class="nums m">
                              <span class="num" data-timer-val="0">0</span>
                              <span class="num" data-timer-val="0">0</span>
                            </span>
                          </div>
                        </div>
                      </span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017552707ko.jpg?l=ko" alt="[2022 어워즈] 홀리 PICK 아로마티카&nbsp;바디오일&nbsp;더블괄사/리츄얼 기획 (우드&amp;유리 괄사 증정)"
                        onerror="common.errorImg(this);"
                      >
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175527" data-attr="홈^주목브랜드^[2022 어워즈] 홀리 PICK 아로마티카&nbsp;바디오일&nbsp;더블괄사/리츄얼 기획 (우드&amp;유리 괄사 증정)^2"
                        data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">아로마티카</span>
                        <p class="tx_name">[2022 어워즈] 홀리 PICK 아로마티카&nbsp;바디오일&nbsp;더블괄사/리츄얼 기획 (우드&amp;유리 괄사 증정)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175527">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">44,000</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">30,500</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag coupon">쿠폰</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175527" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162015&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000162015" data-attr="홈^주목브랜드^아로마티카 임브레이스 바디워시 네롤리&amp;패츌리 300ml (단품/리필/기획)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000162015^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016201508ko.jpg?l=ko" alt="아로마티카 임브레이스 바디워시 네롤리&amp;패츌리 300ml (단품/리필/기획)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000162015" data-attr="홈^주목브랜드^아로마티카 임브레이스 바디워시 네롤리&amp;패츌리 300ml (단품/리필/기획)^3" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">아로마티카</span>
                        <p class="tx_name">아로마티카 임브레이스 바디워시 네롤리&amp;패츌리 300ml (단품/리필/기획)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000162015">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">28,000</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">20,700</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (369)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000162015" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000170548&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000170548" data-attr="홈^주목브랜드^아로마티카 리츄얼 바디미스트 100ml 3종 중 택1 (서렌, 임브레이스, 바이탈라이징)^4" data-ref-dispcatno="90000010001" data-ref-itemno="003" data-trk="null"
                      data-impression="A000000170548^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017054801ko.jpg?l=ko" alt="아로마티카 리츄얼 바디미스트 100ml 3종 중 택1 (서렌, 임브레이스, 바이탈라이징)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000170548" data-attr="홈^주목브랜드^아로마티카 리츄얼 바디미스트 100ml 3종 중 택1 (서렌, 임브레이스, 바이탈라이징)^4" data-ref-dispcatno="90000010001"
                        data-ref-itemno="003" data-trk="null"
                      >
                        <span class="tx_brand">아로마티카</span>
                        <p class="tx_name">아로마티카 리츄얼 바디미스트 100ml 3종 중 택1 (서렌, 임브레이스, 바이탈라이징)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000170548">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_cur">
                        <span class="tx_num">36,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (227)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000170548" data-ref-dispcatno="90000010001" data-ref-itemno="003">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A000754', 'Home_Brand_Banner');">
                  <span>아로마티카</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab2 main_brand brndList" data-ref-brndno="A001681">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175068&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175068" data-attr="홈^주목브랜드^[2022어워즈] 코스노리 아이래쉬&nbsp;세럼 속눈썹영양제 기획세트 (+손톱영양제 7ml 증정)^1" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                      data-trk="null" data-impression="A000000175068^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017506832ko.jpg?l=ko" alt="[2022어워즈] 코스노리 아이래쉬&nbsp;세럼 속눈썹영양제 기획세트 (+손톱영양제 7ml 증정)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175068" data-attr="홈^주목브랜드^[2022어워즈] 코스노리 아이래쉬&nbsp;세럼 속눈썹영양제 기획세트 (+손톱영양제 7ml 증정)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">코스노리</span>
                        <p class="tx_name">[2022어워즈] 코스노리 아이래쉬&nbsp;세럼 속눈썹영양제 기획세트 (+손톱영양제 7ml 증정)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175068">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">16,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">13,600</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175068" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175072&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175072" data-attr="홈^주목브랜드^[프리따 Pick] 코스노리 화이트닝 드레스 톤업크림 기획세트 (+판테놀 쿠션 미니 증정)^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175072^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017507207ko.jpg?l=ko" alt="[프리따 Pick] 코스노리 화이트닝 드레스 톤업크림 기획세트 (+판테놀 쿠션 미니 증정)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175072" data-attr="홈^주목브랜드^[프리따 Pick] 코스노리 화이트닝 드레스 톤업크림 기획세트 (+판테놀 쿠션 미니 증정)^2" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">코스노리</span>
                        <p class="tx_name">[프리따 Pick] 코스노리 화이트닝 드레스 톤업크림 기획세트 (+판테놀 쿠션 미니 증정)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175072">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">20,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">16,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 90.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175072" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000163865&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000163865" data-attr="홈^주목브랜드^코스노리 유어 스킨 드레스 비건 톤업 베이스 (5ml*2 증정기획)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000163865^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016386516ko.jpg?l=ko" alt="코스노리 유어 스킨 드레스 비건 톤업 베이스 (5ml*2 증정기획)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000163865" data-attr="홈^주목브랜드^코스노리 유어 스킨 드레스 비건 톤업 베이스 (5ml*2 증정기획)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">코스노리</span>
                        <p class="tx_name">코스노리 유어 스킨 드레스 비건 톤업 베이스 (5ml*2 증정기획)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000163865">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">26,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">19,500</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (216)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000163865" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000130967&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000130967" data-attr="홈^주목브랜드^[NEW] 코스노리 퍼펙트 세팅 워터프루프 마스카라 3종 택1^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000130967^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0013/A00000013096725ko.jpg?l=ko" alt="[NEW] 코스노리 퍼펙트 세팅 워터프루프 마스카라 3종 택1" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000130967" data-attr="홈^주목브랜드^[NEW] 코스노리 퍼펙트 세팅 워터프루프 마스카라 3종 택1^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">코스노리</span>
                        <p class="tx_name">[NEW] 코스노리 퍼펙트 세팅 워터프루프 마스카라 3종 택1</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000130967">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">16,000</span>
                        원 ~
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">9,900</span>
                        원 ~
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000130967" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A001681', 'Home_Brand_Banner');">
                  <span>코스노리</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab2 main_brand brndList" data-ref-brndno="A003660">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161728&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000161728" data-attr="홈^주목브랜드^[어워즈 단독기획] 어뮤즈 듀 젤리 비건 쿠션 기획세트(본품+파우치+리필)^1" data-ref-dispcatno="90000010001" data-ref-itemno="007" data-trk="null"
                      data-impression="A000000161728^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016172842ko.jpg?l=ko" alt="[어워즈 단독기획] 어뮤즈 듀 젤리 비건 쿠션 기획세트(본품+파우치+리필)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000161728" data-attr="홈^주목브랜드^[어워즈 단독기획] 어뮤즈 듀 젤리 비건 쿠션 기획세트(본품+파우치+리필)^1" data-ref-dispcatno="90000010001"
                        data-ref-itemno="007" data-trk="null"
                      >
                        <span class="tx_brand">어뮤즈</span>
                        <p class="tx_name">[어워즈 단독기획] 어뮤즈 듀 젤리 비건 쿠션 기획세트(본품+파우치+리필)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000161728">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">34,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">30,600</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000161728" data-ref-dispcatno="90000010001" data-ref-itemno="007">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000158321&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000158321" data-attr="홈^주목브랜드^[슬기 Pick] 어뮤즈 스킨 튠 비건 커버 쿠션^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000158321^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015832113ko.jpg?l=ko" alt="[슬기 Pick] 어뮤즈 스킨 튠 비건 커버 쿠션" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000158321" data-attr="홈^주목브랜드^[슬기 Pick] 어뮤즈 스킨 튠 비건 커버 쿠션^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">어뮤즈</span>
                        <p class="tx_name">[슬기 Pick] 어뮤즈 스킨 튠 비건 커버 쿠션</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000158321">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">34,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">30,600</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (760)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000158321" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000166977&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000166977" data-attr="홈^주목브랜드^[한정수량/올영단독] 어뮤즈 메타 픽싱 비건 쿠션 리필 기획세트 (본품+리필)^3" data-ref-dispcatno="90000010001" data-ref-itemno="004" data-trk="null"
                      data-impression="A000000166977^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016697738ko.jpg?l=ko" alt="[한정수량/올영단독] 어뮤즈 메타 픽싱 비건 쿠션 리필 기획세트 (본품+리필)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000166977" data-attr="홈^주목브랜드^[한정수량/올영단독] 어뮤즈 메타 픽싱 비건 쿠션 리필 기획세트 (본품+리필)^3" data-ref-dispcatno="90000010001"
                        data-ref-itemno="004" data-trk="null"
                      >
                        <span class="tx_brand">어뮤즈</span>
                        <p class="tx_name">[한정수량/올영단독] 어뮤즈 메타 픽싱 비건 쿠션 리필 기획세트 (본품+리필)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000166977">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">34,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">30,600</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 92.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000166977" data-ref-dispcatno="90000010001" data-ref-itemno="004">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000174026&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000174026" data-attr="홈^주목브랜드^[NEW] 어뮤즈 비건 페이스 올 팔레트^4" data-ref-dispcatno="90000010001" data-ref-itemno="002" data-trk="null"
                      data-impression="A000000174026^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017402602ko.jpg?l=ko" alt="[NEW] 어뮤즈 비건 페이스 올 팔레트" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000174026" data-attr="홈^주목브랜드^[NEW] 어뮤즈 비건 페이스 올 팔레트^4" data-ref-dispcatno="90000010001" data-ref-itemno="002" data-trk="null">
                        <span class="tx_brand">어뮤즈</span>
                        <p class="tx_name">[NEW] 어뮤즈 비건 페이스 올 팔레트</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000174026">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">32,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">27,200</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 98.0%">10점만점에 5.5점</span>
                      </span>
                      (539)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000174026" data-ref-dispcatno="90000010001" data-ref-itemno="002">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A003660', 'Home_Brand_Banner');">
                  <span>어뮤즈</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab2 main_brand brndList" data-ref-brndno="A001924">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175544&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175544" data-attr="홈^주목브랜드^[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175544^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017554402ko.jpg?l=ko" alt="[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175544" data-attr="홈^주목브랜드^[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획^1" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">마녀공장</span>
                        <p class="tx_name">[2022 어워즈] 마녀공장 퓨어 클렌징 오일 300mlX2 더블기획</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175544">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">49,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">29,900</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175544" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000158579&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000158579" data-attr="홈^주목브랜드^[단독기획] 마녀공장 퓨어 클렌징 오일 200ml+퓨어폼 20ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000158579^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015857911ko.jpg?l=ko" alt="[단독기획] 마녀공장 퓨어 클렌징 오일 200ml+퓨어폼 20ml" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000158579" data-attr="홈^주목브랜드^[단독기획] 마녀공장 퓨어 클렌징 오일 200ml+퓨어폼 20ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">마녀공장</span>
                        <p class="tx_name">[단독기획] 마녀공장 퓨어 클렌징 오일 200ml+퓨어폼 20ml</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000158579">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">19,900</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">15,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000158579" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000149988&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000149988" data-attr="홈^주목브랜드^[증량] 마녀공장 퓨어&amp;딥 클렌징 폼 1+1 기획 (120ml+120ml)^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000149988^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014998811ko.jpg?l=ko" alt="[증량] 마녀공장 퓨어&amp;딥 클렌징 폼 1+1 기획 (120ml+120ml)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000149988" data-attr="홈^주목브랜드^[증량] 마녀공장 퓨어&amp;딥 클렌징 폼 1+1 기획 (120ml+120ml)^3" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">마녀공장</span>
                        <p class="tx_name">[증량] 마녀공장 퓨어&amp;딥 클렌징 폼 1+1 기획 (120ml+120ml)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000149988">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">12,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">11,000</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000149988" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162370&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000162370" data-attr="홈^주목브랜드^[증량] 마녀공장 갈락토미 필링젤 더블 기획 (120ml+120ml)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000162370^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016237004ko.jpg?l=ko" alt="[증량] 마녀공장 갈락토미 필링젤 더블 기획 (120ml+120ml)" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000162370" data-attr="홈^주목브랜드^[증량] 마녀공장 갈락토미 필링젤 더블 기획 (120ml+120ml)^4" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">마녀공장</span>
                        <p class="tx_name">[증량] 마녀공장 갈락토미 필링젤 더블 기획 (120ml+120ml)</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000162370">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">35,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">17,500</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (438)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000162370" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A001924', 'Home_Brand_Banner');">
                  <span>마녀공장</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
            <div class="main_brand_tab2 main_brand brndList show" data-ref-brndno="A000426">
              <ul class="cate_prd_list">
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175198&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175198" data-attr="홈^주목브랜드^[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml^1" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175198^홈_주목브랜드^1" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017519809ko.jpg?l=ko" alt="[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175198" data-attr="홈^주목브랜드^[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml^1" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">닥터자르트</span>
                        <p class="tx_name">[NEW]닥터자르트 세라마이딘 스킨 베리어 모이스처라이징 크림 50ml</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175198">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">42,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">31,500</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag gift">증정</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (143)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175198" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000175354&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000175354" data-attr="홈^주목브랜드^[NEW]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000175354^홈_주목브랜드^2" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017535402ko.jpg?l=ko" alt="[NEW]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000175354" data-attr="홈^주목브랜드^[NEW]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml^2" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">닥터자르트</span>
                        <p class="tx_name">[NEW]닥터자르트 세라마이딘 스킨 베리어 세럼 토너 150ml</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000175354">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">37,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">27,750</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag gift">증정</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (99)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000175354" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160080&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000160080" data-attr="홈^주목브랜드^닥터자르트 세라마이딘 엑토인-인퓨즈드 크림 50ml^3" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000160080^홈_주목브랜드^3" data-impression-visibility="1"
                    >
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016008004ko.jpg?l=ko" alt="닥터자르트 세라마이딘 엑토인-인퓨즈드 크림 50ml" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000160080" data-attr="홈^주목브랜드^닥터자르트 세라마이딘 엑토인-인퓨즈드 크림 50ml^3" data-ref-dispcatno="90000010001" data-ref-itemno="001"
                        data-trk="null"
                      >
                        <span class="tx_brand">닥터자르트</span>
                        <p class="tx_name">닥터자르트 세라마이딘 엑토인-인퓨즈드 크림 50ml</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000160080">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">68,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">47,100</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag coupon">쿠폰</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 94.0%">10점만점에 5.5점</span>
                      </span>
                      (181)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000160080" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
                <li class="flag">
                  <div class="prd_info ">
                    <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000173587&amp;dispCatNo=90000010001&amp;trackingCd=Home_Brand&amp;curation&amp;egcode&amp;rccode&amp;egrankcode" name="Home_Brand"
                      class="prd_thumb goodsList" data-ref-goodsno="A000000173587" data-attr="홈^주목브랜드^[한정수량1+1]닥터자르트 시카페어 그린 리페어 세럼 30ml 1+1 기획^4" data-ref-dispcatno="90000010001" data-ref-itemno="001" data-trk="null"
                      data-impression="A000000173587^홈_주목브랜드^4" data-impression-visibility="1"
                    >
                      <span class="thumb_flag best">베스트</span>
                      <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0017/A00000017358707ko.jpg?l=ko" alt="[한정수량1+1]닥터자르트 시카페어 그린 리페어 세럼 30ml 1+1 기획" onerror="common.errorImg(this);">
                    </a>
                    <div class="prd_name">
                      <a href="javascript:;" name="Home_Brand" class="goodsList" data-ref-goodsno="A000000173587" data-attr="홈^주목브랜드^[한정수량1+1]닥터자르트 시카페어 그린 리페어 세럼 30ml 1+1 기획^4" data-ref-dispcatno="90000010001"
                        data-ref-itemno="001" data-trk="null"
                      >
                        <span class="tx_brand">닥터자르트</span>
                        <p class="tx_name">[한정수량1+1]닥터자르트 시카페어 그린 리페어 세럼 30ml 1+1 기획</p>
                      </a>
                    </div>
                    <button class="btn_zzim jeem" data-ref-goodsno="A000000173587">
                      <span>찜하기전</span>
                    </button>
                    <p class="prd_price">
                      <span class="tx_org">
                        <span class="tx_num">47,000</span>
                        원
                      </span>
                      <span class="tx_cur">
                        <span class="tx_num">42,300</span>
                        원
                      </span>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <span class="icon_flag delivery">오늘드림</span>
                    </p>
                    <p class="prd_point_area tx_num">
                      <span class="review_point">
                        <span class="point" style="width: 96.0%">10점만점에 5.5점</span>
                      </span>
                      (999+)
                    </p>
                    <p class="prd_btn_area">
                      <button class="cartBtn" data-ref-goodsno="A000000173587" data-ref-dispcatno="90000010001" data-ref-itemno="001">장바구니</button>
                      <button class="btn_new_pop goodsList">새창보기</button>
                    </p>
                  </div>
                </li>
              </ul>
              <div class="brand_more">
                <a href="javascript:common.link.moveBrandShop('A000426', 'Home_Brand_Banner');">
                  <span>닥터자르트</span>
                  브랜드 상품 전체보기
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="brand_paging">
        <a href="javascript:;" class="on">1</a>
        <a href="javascript:;">2</a>
      </div>
    </div>
  </div>
</div>
<%@ include file="includes/footer.jsp"%>