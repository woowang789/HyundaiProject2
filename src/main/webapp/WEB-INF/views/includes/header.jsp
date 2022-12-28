<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="-webkit-">
<head>
<meta charset="utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="format-detection" content="telephone=no" />
<link rel="stylesheet" href="/resources/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="/resources/css/olive.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link rel="stylesheet" href="/resources/css/join.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		//카테고리 레이어 열기/닫기
		$("#btnGnbOpen").click(function(e) {
			e.preventDefault();
			if ($(this).hasClass("active")) {
				$(this).removeClass("active");
				$(".layer_all_menu").removeClass("active");
			} else {
				$(this).addClass("active");
				$(".layer_all_menu").addClass("active");
			}
		});
		$("#btnGnbClose").click(function(e) {
			e.preventDefault();
			$(this).removeClass("active");
			$(".layer_all_menu").removeClass("active");
		});
	});
</script>
</head>
<body>
  <div id="Wrapper">
    <div id="Header">
      <div class="top_util">
        <ul class="menu_list" id="menu_list_header">
          <li class="join">
            <a href="/join" data-attr="공통^헤더^회원가입">회원가입</a>
          </li>
          <li class="login">
            <a href="/login" data-attr="공통^헤더^로그인">로그인</a>
          </li>
        </ul>
      </div>
      <div class="header_inner s_yearend">
        <h1>
          <a href="javascript:common.link.moveMainHome();">
            <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo_yearend.png" alt="올리브영" />
          </a>
        </h1>
        <div class="search_box" id="w_search_box">
          <input type="hidden" name="chkButton" id="chkButton" value="" />
          <div class="placeholder_area">
            <label for="query"></label>
            <input type="text" id="query" name="" value="" class="inp_placeholder" data-placeholder="핫팩 필요하시면 클.릭!" data-ref-linkurl="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000158626"
              onkeypress="javascript:pressCheck_WEB_MainSearch((event),this);" onkeydown="javascript:downCheck_WEB_MainSearch((event));" autocomplete="off"
            />
          </div>
          <button id="searchSubmit">검색</button>
        </div>
        <ul class="mymenu_area">
          <li id="todayDeliveryContainer" class="delivery">
            <a href="./cart" id="tddlvr_header_today_icon" class="mymenu_layer" title="오늘드림 자세히보기 열기/닫기">장바구니</a>
          </li>
        </ul>
      </div>
    </div>
    <div id="Gnb" class="main gen1">
      <div id="gnbWrap">
        <a href="#" id="btnGnbOpen" class="">카테고리</a>
        <!-- 전체 카테고리 레이어 -->
        <div class="layer_all_menu" id="gnbAllMenu">
          <ul class="all_menu_wrap">
            <li>
              <h2>뷰티</h2>
              <div class="sub_menu_box">
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010001', 'Drawer')" data-ref-dispcatno="10000010001" data-attr="공통^드로우^스킨케어">스킨케어</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100010008', 'Cat100000100010008_MID', 'Drawer')" data-ref-dispcatno="100000100010008" data-attr="공통^드로우^스킨케어_토너/로션/올인원" data-trk="/">토너/로션/올인원</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100010009', 'Cat100000100010009_MID', 'Drawer')" data-ref-dispcatno="100000100010009" data-attr="공통^드로우^스킨케어_에센스/크림" data-trk="/">에센스/크림</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100010010', 'Cat100000100010010_MID', 'Drawer')" data-ref-dispcatno="100000100010010" data-attr="공통^드로우^스킨케어_미스트/오일" data-trk="/">미스트/오일</a>
                  </li>
                </ul>
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010009', 'Drawer')" data-ref-dispcatno="10000010009" data-attr="공통^드로우^마스크팩">마스크팩</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100090001', 'Cat100000100090001_MID', 'Drawer')" data-ref-dispcatno="100000100090001" data-attr="공통^드로우^마스크팩_시트팩/패드" data-trk="/">시트팩/패드</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100090002', 'Cat100000100090002_MID', 'Drawer')" data-ref-dispcatno="100000100090002" data-attr="공통^드로우^마스크팩_페이셜팩" data-trk="/">페이셜팩</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100090003', 'Cat100000100090003_MID', 'Drawer')" data-ref-dispcatno="100000100090003" data-attr="공통^드로우^마스크팩_코팩/패치" data-trk="/">코팩/패치</a>
                  </li>
                </ul>
              </div>
              <div class="sub_menu_box">
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010010', 'Drawer')" data-ref-dispcatno="10000010010" data-attr="공통^드로우^클렌징">클렌징</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100100001', 'Cat100000100100001_MID', 'Drawer')" data-ref-dispcatno="100000100100001" data-attr="공통^드로우^클렌징_클렌징폼/젤" data-trk="/">클렌징폼/젤</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100100002', 'Cat100000100100002_MID', 'Drawer')" data-ref-dispcatno="100000100100002" data-attr="공통^드로우^클렌징_오일/워터/리무버" data-trk="/">오일/워터/리무버</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100100003', 'Cat100000100100003_MID', 'Drawer')" data-ref-dispcatno="100000100100003" data-attr="공통^드로우^클렌징_필링/패드" data-trk="/">필링/패드</a>
                  </li>
                </ul>
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010011', 'Drawer')" data-ref-dispcatno="10000010011" data-attr="공통^드로우^선케어">선케어</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100110001', 'Cat100000100110001_MID', 'Drawer')" data-ref-dispcatno="100000100110001" data-attr="공통^드로우^선케어_선블록" data-trk="/">선블록</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100110002', 'Cat100000100110002_MID', 'Drawer')" data-ref-dispcatno="100000100110002" data-attr="공통^드로우^선케어_태닝/애프터선" data-trk="/">태닝/애프터선</a>
                  </li>
                </ul>
              </div>
              <div class="sub_menu_box">
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010003', 'Drawer')" data-ref-dispcatno="10000010003" data-attr="공통^드로우^바디케어">바디케어</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030005', 'Cat100000100030005_MID', 'Drawer')" data-ref-dispcatno="100000100030005" data-attr="공통^드로우^바디케어_워시/스크럽" data-trk="/">워시/스크럽</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030014', 'Cat100000100030014_MID', 'Drawer')" data-ref-dispcatno="100000100030014" data-attr="공통^드로우^바디케어_로션/오일" data-trk="/">로션/오일</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030016', 'Cat100000100030016_MID', 'Drawer')" data-ref-dispcatno="100000100030016" data-attr="공통^드로우^바디케어_핸드케어" data-trk="/">핸드케어</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030008', 'Cat100000100030008_MID', 'Drawer')" data-ref-dispcatno="100000100030008" data-attr="공통^드로우^바디케어_립케어" data-trk="/">립케어</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030013', 'Cat100000100030013_MID', 'Drawer')" data-ref-dispcatno="100000100030013" data-attr="공통^드로우^바디케어_제모용품" data-trk="/">제모용품</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030015', 'Cat100000100030015_MID', 'Drawer')" data-ref-dispcatno="100000100030015" data-attr="공통^드로우^바디케어_바디미스트" data-trk="/">바디미스트</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030012', 'Cat100000100030012_MID', 'Drawer')" data-ref-dispcatno="100000100030012" data-attr="공통^드로우^바디케어_데오도란트" data-trk="/">데오도란트</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030018', 'Cat100000100030018_MID', 'Drawer')" data-ref-dispcatno="100000100030018" data-attr="공통^드로우^바디케어_풋케어" data-trk="/">풋케어</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100030017', 'Cat100000100030017_MID', 'Drawer')" data-ref-dispcatno="100000100030017" data-attr="공통^드로우^바디케어_선물세트" data-trk="/">선물세트</a>
                  </li>
                </ul>
              </div>
              <div class="sub_menu_box">
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010002', 'Drawer')" data-ref-dispcatno="10000010002" data-attr="공통^드로우^메이크업">메이크업</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100020006', 'Cat100000100020006_MID', 'Drawer')" data-ref-dispcatno="100000100020006" data-attr="공통^드로우^메이크업_립메이크업" data-trk="/">립메이크업</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100020001', 'Cat100000100020001_MID', 'Drawer')" data-ref-dispcatno="100000100020001" data-attr="공통^드로우^메이크업_베이스메이크업" data-trk="/">베이스메이크업</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100020007', 'Cat100000100020007_MID', 'Drawer')" data-ref-dispcatno="100000100020007" data-attr="공통^드로우^메이크업_아이메이크업" data-trk="/">아이메이크업</a>
                  </li>
                </ul>
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010005', 'Drawer')" data-ref-dispcatno="10000010005" data-attr="공통^드로우^향수/디퓨저">향수/디퓨저</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100050003', 'Cat100000100050003_MID', 'Drawer')" data-ref-dispcatno="100000100050003" data-attr="공통^드로우^향수/디퓨저_여성향수" data-trk="/">여성향수</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100050004', 'Cat100000100050004_MID', 'Drawer')" data-ref-dispcatno="100000100050004" data-attr="공통^드로우^향수/디퓨저_남성향수" data-trk="/">남성향수</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100050008', 'Cat100000100050008_MID', 'Drawer')" data-ref-dispcatno="100000100050008" data-attr="공통^드로우^향수/디퓨저_홈 프래그런스" data-trk="/">홈 프래그런스</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100050009', 'Cat100000100050009_MID', 'Drawer')" data-ref-dispcatno="100000100050009" data-attr="공통^드로우^향수/디퓨저_선물세트" data-trk="/">선물세트</a>
                  </li>
                </ul>
              </div>
              <div class="sub_menu_box">
                <p class="sub_depth">
                  <a href="javascript:common.link.moveCategoryShop('10000010004', 'Drawer')" data-ref-dispcatno="10000010004" data-attr="공통^드로우^헤어케어">헤어케어</a>
                </p>
                <ul>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040008', 'Cat100000100040008_MID', 'Drawer')" data-ref-dispcatno="100000100040008" data-attr="공통^드로우^헤어케어_샴푸/린스" data-trk="/">샴푸/린스</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040007', 'Cat100000100040007_MID', 'Drawer')" data-ref-dispcatno="100000100040007" data-attr="공통^드로우^헤어케어_트리트먼트/팩" data-trk="/">트리트먼트/팩</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040004', 'Cat100000100040004_MID', 'Drawer')" data-ref-dispcatno="100000100040004" data-attr="공통^드로우^헤어케어_헤어기기" data-trk="/">헤어기기</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040009', 'Cat100000100040009_MID', 'Drawer')" data-ref-dispcatno="100000100040009" data-attr="공통^드로우^헤어케어_헤어브러쉬" data-trk="/">헤어브러쉬</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040010', 'Cat100000100040010_MID', 'Drawer')" data-ref-dispcatno="100000100040010" data-attr="공통^드로우^헤어케어_염색약/펌" data-trk="/">염색약/펌</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040011', 'Cat100000100040011_MID', 'Drawer')" data-ref-dispcatno="100000100040011" data-attr="공통^드로우^헤어케어_스타일링" data-trk="/">스타일링</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040012', 'Cat100000100040012_MID', 'Drawer')" data-ref-dispcatno="100000100040012" data-attr="공통^드로우^헤어케어_탈모케어" data-trk="/">탈모케어</a>
                  </li>
                  <li>
                    <a href="javascript:common.link.moveCategory('100000100040013', 'Cat100000100040013_MID', 'Drawer')" data-ref-dispcatno="100000100040013" data-attr="공통^드로우^헤어케어_에센스" data-trk="/">에센스</a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
          <button id="btnGnbClose">전체 카테고리 창 닫기</button>
        </div>
        <!--// 전체 카테고리 레이어 -->
        <ul class="gnb_menu_list">
          <li style="">
            <a href="/best" data-ref-linkurl="main/getBestList.do" data-attr="공통^GNB^랭킹">
              <span>랭킹</span>
            </a>
          </li>
          <li style="">
            <a href="/sale" data-ref-linkurl="main/getSaleList.do" data-attr="공통^GNB^세일">
              <span>세일</span>
            </a>
          </li>
          <script type="text/javascript">
											$(".gnb_menu_list")
													.click(
															function() {
																localStorage
																		.removeItem("prdSort");
															});
										</script>
        </ul>
      </div>
    </div>
  </div>