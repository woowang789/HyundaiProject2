<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Contents">
  <form name="search" id="search" action="/store/search/getSearchMain.do" method="get" onsubmit="return false;">
    <div class="searchResultArea">
      <p class="resultTxt">
        <strong>립밤</strong>검색결과 (전체
        <span>299개</span>
        의 상품)
      </p>
    </div>
    <!-- 상품 속성 정보 검색 서비스 개선 -->
    <div class="detailSearch new">
      <div class="search_box">
        <div class="inner">
          <h4 class="tit_th">가격대</h4>
          <div class="priceSearch">
            <input type="text" id="sale_below_price" name="sale_below_price" placeholder="최저가" value="" title="">
            <span>~</span>
            <input type="text" id="sale_over_price" name="sale_over_price" placeholder="최고가" value="" title="">
            <input type="submit" value="가격대 적용" title="가격대 적용" onclick="return Price_Search()">
          </div>
        </div>
      </div>
      <!-- //가격대 -->
    </div>
    <!-- // 상품 속성 정보 검색 서비스 개선 -->
  </form>
  <p class="cate_info_tx"></p>
  <!-- bFirstSearch -->
  <!-- 상품 정렬 조건 영역 -->
  <div class="cate_align_box">
    <div class="align_sort">
      <ul>
        <li>
          <a href="#" value="DATE/DESC" onclick="doSorting('DATE/DESC');">최근등록순</a>
        </li>
        <li>
          <a href="#" value="SALE_PRC/ASC" onclick="doSorting('SALE_PRC/ASC');">낮은 가격순</a>
        </li>
        <li>
          <a href="#" value="SALE_PRC/DESC" onclick="doSorting('SALE_PRC/DESC');">높은 가격순</a>
        </li>
      </ul>
    </div>
    <div class="count_sort tx_num">
      <span class="tx_view">VIEW</span>
      <ul>
        <li class="on">24</li>
        <li>
          <a href="#" title="36개씩 보기" onclick="javascript:ShowViewList('36');">36</a>
        </li>
        <li>
          <a href="#" title="48개씩 보기" onclick="javascript:ShowViewList('48');">48</a>
        </li>
      </ul>
    </div>
    <div class="type_sort">
      <button class="btn_thumb active">컬럼형식으로 보기</button>
      <button class="btn_list">리스트형식으로 보기</button>
    </div>
  </div>
  <!--// 상품 정렬 조건 영역 -->
  <!-- 카테고리 상품 리스트 -->
  <!-- 컬럼형 리스트 -->
  <div id="ajaxList">
    <ul id="w_cate_prd_list" class="cate_prd_list">
      <!-- 1단형일 경우 클래스 list_type 추가 -->
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000156811&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000156811',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '1');common.link.moveGoodsDetail('A000000156811','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^[원우 PICK] 헉슬리 퍼퓸 핸드크림 3종 택 1^1" data-trk="/Pop_PROD" data-impression="A000000156811^통합검색결과페이지_검색결과상품_인기순^1" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0015/A00000015681117ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000156811',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '1');common.link.moveGoodsDetail('A000000156811','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^[원우 PICK] 헉슬리 퍼퓸 핸드크림 3종 택 1^1" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">헉슬리</span>
              <p class="tx_name">[원우 PICK] 헉슬리 퍼퓸 핸드크림 3종 택 1</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000156811" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">15,000</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">12,000</span>
              원
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">2827</span>
            </span>
            (2827)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000156811" data-ref-dispcatno="1000001000300160002" data-ref-itemno="002" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000156811','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176898&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000176898',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '2');common.link.moveGoodsDetail('A000000176898','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^닥터자르트 세라마이딘 하이드레이트 핸드크림 100ml 홀리데이 기획(100ml+50ml)^2" data-trk="/Pop_PROD" data-impression="A000000176898^통합검색결과페이지_검색결과상품_인기순^2" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017689802ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000176898',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '2');common.link.moveGoodsDetail('A000000176898','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^닥터자르트 세라마이딘 하이드레이트 핸드크림 100ml 홀리데이 기획(100ml+50ml)^2" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">닥터자르트</span>
              <p class="tx_name">닥터자르트 세라마이딘 하이드레이트 핸드크림 100ml 홀리데이 기획(100ml+50ml)</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000176898" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">19,000</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">13,300</span>
              원
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag coupon">쿠폰</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">2469</span>
            </span>
            (2469)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000176898" data-ref-dispcatno="1000001000300160002" data-ref-itemno="001" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000176898','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000142709&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000142709',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '3');common.link.moveGoodsDetail('A000000142709','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^[1+1교차증정] 비욘드 클래식 핸드크림 100ml 4종 택1^3" data-trk="/Pop_PROD" data-impression="A000000142709^통합검색결과페이지_검색결과상품_인기순^3" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014270915ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000142709',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '3');common.link.moveGoodsDetail('A000000142709','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^[1+1교차증정] 비욘드 클래식 핸드크림 100ml 4종 택1^3" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">비욘드</span>
              <p class="tx_name">[1+1교차증정] 비욘드 클래식 핸드크림 100ml 4종 택1</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000142709" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_cur">
              <span class="tx_num">12,000</span>
              원
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag plus">1+1</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">6464</span>
            </span>
            (6464)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000142709" data-ref-dispcatno="1000001000300160002" data-ref-itemno="001" data-ref-cnt="1" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000142709','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000119871&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000119871',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '4');common.link.moveGoodsDetail('A000000119871','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1^4" data-trk="/Pop_PROD" data-impression="A000000119871^통합검색결과페이지_검색결과상품_인기순^4" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0011/A00000011987116ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000119871',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '4');common.link.moveGoodsDetail('A000000119871','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1^4" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">더블유드레스룸</span>
              <p class="tx_name">W.DRESSROOM 퍼퓸드 핸드크림 5종 택 1</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000119871" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">7,900</span>
              원~
            </span>
            <span class="tx_cur">
              <span class="tx_num">5,500</span>
              원~
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">8324</span>
            </span>
            (8324)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000119871" data-ref-dispcatno="1000001000300160002" data-ref-itemno="007" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000119871','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
    </ul>
    <ul id="w_cate_prd_list" class="cate_prd_list">
      <!-- 1단형일 경우 클래스 list_type 추가 -->
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000007046&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000007046',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '5');common.link.moveGoodsDetail('A000000007046','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^카밀 핸드앤네일 크림 12종 택1^5" data-trk="/Pop_PROD" data-impression="A000000007046^통합검색결과페이지_검색결과상품_인기순^5" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0000/A00000000704624ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000007046',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '5');common.link.moveGoodsDetail('A000000007046','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^카밀 핸드앤네일 크림 12종 택1^5" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">카밀</span>
              <p class="tx_name">카밀 핸드앤네일 크림 12종 택1</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000007046" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">7,200</span>
              원~
            </span>
            <span class="tx_cur">
              <span class="tx_num">6,200</span>
              원~
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">24696</span>
            </span>
            (24696)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000007046" data-ref-dispcatno="1000001000300160002" data-ref-itemno="010" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000007046','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000176079&amp;dispCatNo=1000001000300160004&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000176079',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '6');common.link.moveGoodsDetail('A000000176079','1000001000300160004', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^[2022 어워즈] 카밀 핸드앤네일 크림 클래식 133ml+30ml^6" data-trk="/Pop_PROD" data-impression="A000000176079^통합검색결과페이지_검색결과상품_인기순^6" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017607902ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000176079',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '6');common.link.moveGoodsDetail('A000000176079','1000001000300160004', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^[2022 어워즈] 카밀 핸드앤네일 크림 클래식 133ml+30ml^6" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">카밀</span>
              <p class="tx_name">[2022 어워즈] 카밀 핸드앤네일 크림 클래식 133ml+30ml</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000176079" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">8,900</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">6,900</span>
              원
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">345</span>
            </span>
            (345)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000176079" data-ref-dispcatno="1000001000300160004" data-ref-itemno="001" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000176079','1000001000300160004');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000008521&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000008521',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '7');common.link.moveGoodsDetail('A000000008521','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^니베아 크림150ml^7" data-trk="/Pop_PROD" data-impression="A000000008521^통합검색결과페이지_검색결과상품_인기순^7" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0000/A00000000852103ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000008521',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '7');common.link.moveGoodsDetail('A000000008521','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^니베아 크림150ml^7" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">니베아</span>
              <p class="tx_name">니베아 크림150ml</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000008521" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">6,500</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">5,200</span>
              원
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">886</span>
            </span>
            (886)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000008521" data-ref-dispcatno="1000001000300160002" data-ref-itemno="001" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000008521','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
      <li class="flag li_result">
        <div class="prd_info">
          <!-- 이미지 영역 -->
          <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
          <a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000171378&amp;dispCatNo=1000001000300160002&amp;trackingCd=Pop_PROD"
            onclick="javascript:gtm.goods.callGoodsGtmInfo('A000000171378',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '8');common.link.moveGoodsDetail('A000000171378','1000001000300160002', 'Pop_PROD'); return false;"
            class="prd_thumb" data-attr="통합검색결과페이지^검색결과상품_인기순^[선물추천] 헉슬리 핸드크림 모로칸 가드너 기프트 기획 (30 ml+10 ml)^8" data-trk="/Pop_PROD" data-impression="A000000171378^통합검색결과페이지_검색결과상품_인기순^8" data-impression-visibility="1"
          >
            <span class="thumb_flag best">베스트</span>
            <!-- 베스트/신상 Flag | best : 베스트 / new : 신상 -->
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0017/A00000017137806ko.jpg?l=ko" onerror="this.src='https://static.oliveyoung.co.kr/pc-static-root/image/comm/noimg_550.gif';this.onerror='';"
              alt="이미지 썸네일"
            >
          </a>
          <!--// 이미지 영역 -->
          <!-- 상품명 -->
          <div class="prd_name">
            <!-- [3389141] (영역별 매출분석) 오특, 검색, 베스트, 메인 추가(CHY) -->
            <a href="javascript:gtm.goods.callGoodsGtmInfo('A000000171378',null, 'ee-productClick', '통합검색결과페이지_검색결과상품_인기순', '8');common.link.moveGoodsDetail('A000000171378','1000001000300160002', 'Pop_PROD');"
              data-attr="통합검색결과페이지^검색결과상품_인기순^[선물추천] 헉슬리 핸드크림 모로칸 가드너 기프트 기획 (30 ml+10 ml)^8" data-trk="/Pop_PROD"
            >
              <span class="tx_brand">헉슬리</span>
              <p class="tx_name">[선물추천] 헉슬리 핸드크림 모로칸 가드너 기프트 기획 (30 ml+10 ml)</p>
            </a>
          </div>
          <!--// 상품명  -->
          <!-- 찜버튼 -->
          <button class="btn_zzim jeem" data-ref-goodsno="A000000171378" onclick="zzimWebLog();">
            <span>찜하기전</span>
          </button>
          <!--// 찜버튼 -->
          <!-- 상품가격 영역 -->
          <p class="prd_price">
            <span class="tx_org">
              <span class="tx_num">16,000</span>
              원
            </span>
            <span class="tx_cur">
              <span class="tx_num">14,400</span>
              원
            </span>
          </p>
          <!--// 상품가격 영역 -->
          <!-- 상품 쿠폰 및 플러스 추가 영역 -->
          <!-- icon 사이 공백으로 인해 다 붙여서 한줄로 만들것 -->
          <p class="prd_flag">
            <span class="icon_flag sale">세일</span>
            <span class="icon_flag delivery">오늘드림</span>
          </p>
          <!--// 상품 쿠폰 및 플러스 추가 영역 -->
          <!--  상품평 및 장바구니버튼 -->
          <p class="prd_point_area tx_num">
            <span class="review_point">
              <span class="point" style="width: 90%">3009</span>
            </span>
            (3009)
          </p>
          <p class="prd_btn_area">
            <button class="cartBtn" data-ref-goodsno="A000000171378" data-ref-dispcatno="1000001000300160002" data-ref-itemno="001" data-ref-cnt="0" data-ref-prstyn="N" name="Pop_PROD">장바구니</button>
            <button class="btn_new_pop goodsList" onclick="javascript:common.link.moveGoodsDetailNew('A000000171378','1000001000300160002');">새창보기</button>
          </p>
          <!-- // 상품평 및 장바구니버튼 -->
        </div>
      </li>
    </ul>
  </div>
  <!--// -->
  <!-- pageing start -->
  <div class="pageing">
    <strong title="현재 페이지">1</strong>
    <a href="#none" onclick="javascript:doPaging('24');" title="Paging"> 2 </a>
    <a href="#none" onclick="javascript:doPaging('48');" title="Paging"> 3 </a>
    <a href="#none" onclick="javascript:doPaging('72');" title="Paging"> 4 </a>
    <a href="#none" onclick="javascript:doPaging('96');" title="Paging"> 5 </a>
    <a href="#none" onclick="javascript:doPaging('120');" title="Paging"> 6 </a>
    <a href="#none" onclick="javascript:doPaging('144');" title="Paging"> 7 </a>
    <a href="#none" onclick="javascript:doPaging('168');" title="Paging"> 8 </a>
    <a href="#none" onclick="javascript:doPaging('192');" title="Paging"> 9 </a>
    <a href="#none" onclick="javascript:doPaging('216');" title="Paging"> 10 </a>
    <a class="next" href="#none" onclick="javascript:doPaging('240')" title="Next Page">다음 페이지</a>
  </div>
  <!-- //pageing end -->
  <!-- </div> -->
</div>
<%@ include file="../includes/footer.jsp"%>