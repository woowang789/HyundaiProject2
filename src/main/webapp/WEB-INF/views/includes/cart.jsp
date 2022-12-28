<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container">
  <!-- #Contents -->
  <form name="cartForm" id="cartForm">
    <input type="hidden" id="btnOrderTp" name="btnOrderTp" value="" />
    <input type="hidden" id="cartNo" name="cartNo" value="" />
    <input type="hidden" id="partYn" name="partYn" value="" />
    <input type="hidden" id="optChgYn" name="optChgYn" value="Y" />
    <input type="hidden" id="quickYn" name="quickYn" value="N" />
    <input type="hidden" id="quickOrdPsbMaxQty" name="quickOrdPsbMaxQty" value="999" />
    <input type="hidden" id="quickOrdTimeFrom" name="quickOrdTimeFrom" value="0" />
    <input type="hidden" id="quickOrdTimeTo" name="quickOrdTimeTo" value="24" />
    <input type="hidden" id="o2oBlockInfo" name="o2oBlockInfo" value='{"o2oBlockMsg":"시스템점검으로 오늘드림 서비스에 제한이 있습니다.\n빠른 시간안에 서비스 재개 하도록 하겠습니다.","o2oBlockYn":"N"}' />
    <input type="hidden" id="ktmDestYn" name="ktmDestYn" value="Y" />
    <input type="hidden" id="oldAddrYn" name="oldAddrYn" value="Y" />
    <!-- 구주소 유효성 여부 -->
    <input type="hidden" id="orderStrNo" name="orderStrNo" value="" />
    <!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 -->
    <input type="hidden" id="quickInfoYn" name="quickInfoYn" value="N" />
    <div id="Contents">
      <!-- title_box -->
      <div class="title_box">
        <h1>
          장바구니
          <span class="tx_num">3</span>
        </h1>
        <ul class="step_list">
          <li class="on">
            <span class="hide">현재단계</span>
            <span class="step_num tx_num">1</span>
            장바구니
          </li>
          <!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
          <li>
            <span class="step_num tx_num">2</span>
            주문/결제
          </li>
          <li class="last">
            <span class="step_num tx_num">3 </span>
            주문완료
          </li>
        </ul>
      </div>
      <!--// title_box -->
      <!-- membership_box -->
      <!--// membership_box -->
      <!-- 일반배송, 당일배송 탭 -->
      <ul class="comm5sTabs" id="ulDelivGb">
        <li quickyn="N" class="on">
          <button type="button" data-attr="장바구니^Tab^일반 배송" title="선택됨">일반 배송 (3)</button>
        </li>
      </ul>
      <!--// 일반배송, 당일배송 탭 -->
      <!-- 배송지 선택 -->
      <div class="box_delivery pickStore" id="divDelivery" style="display: none">
        <div class="storePick_area" style="display: none">
          <div class="tBox">
            <strong>매장에서 픽업 하시겠어요? <a href="javascript:;" data-rel="layer" data-target="storePickPop" class="ico_info_view">매장픽업 안내 레이어열기</a></strong>
            <span>실제 픽업 매장의 재고는 상이할 수 있습니다.</span>
          </div>
          <div class="toggleInput">
            <label class="switch"> <input type="checkbox" id="pickupDirectYn" name="pickupDirectYn" value="Y" /> <span class="slider"></span>
            </label>
          </div>
        </div>
        <div class="today_dalivery">
          <dl class="box_dl">
            <dd>
              <div class="prd_option_box sel_delivery">
                <a href="javascript:;" class="sel_option">배송지를 선택해주세요</a>
                <input type="hidden" id="dlvpSeqSelect" value="" />
                <input type="hidden" id="strNoSelect" value="" />
                <div class="sel_option_fix">
                  <ul class="sel_option_list"></ul>
                  <p class="btn_fix">
                    <a href="javascript:;" class="btn_addadr">+ 배송지 추가</a>
                  </p>
                </div>
              </div>
            </dd>
          </dl>
        </div>
        <!-- 20191213 s -->
        <dl class="error_boxMod">
          <!-- <dt>현재 일시적으로 서비스가 불가능해요</dt>-->
          <dt></dt>
        </dl>
        <!-- 20191213 e -->
      </div>
      <!--// 배송지 선택 -->
      <script type="text/javascript">
							var cartInfoList = new Array();
							var cartTenInfoList = new Array();
							var cartFourtyInfoList = new Array();
						</script>
      <!--     /////////////////////////////           직 배 송 상 품 리 스 트         //////////////////////////////////    -->
      <!-- 올리브영 배송상품 -->
      <h2 class="sub-title2">올리브영 배송상품</h2>
      <table class="tbl_prd_list tableFix">
        <caption>상품정보, 판매가, 수량, 구매가, 배송정보, 선택으로 이루어진 올리브영 배송상품 장바구니 목록 표</caption>
        <colgroup>
          <col style="width: 40px" />
          <col style="width: *" />
          <col style="width: 110px" />
          <col style="width: 100px" />
          <col style="width: 110px" />
          <col style="width: 120px" />
          <!-- 2017-01-13 수정 -->
          <col style="width: 150px" />
        </colgroup>
        <thead>
          <tr>
            <th scope="col">
              <input type="checkbox" checked="" id="inp_allRe1" name="" value="" title="올리브영 배송상품 전체 선택" />
            </th>
            <th scope="col">상품정보</th>
            <th scope="col">판매가</th>
            <th scope="col">수량</th>
            <th scope="col">구매가</th>
            <th scope="col">배송정보</th>
            <th scope="col">선택</th>
          </tr>
        </thead>
        <tbody>
          <!-- 1+1 행사 상품인 경우 -->
          <!-- 판매종료이거나일시품절 -->
          <!-- 판매종료 -->
          <!-- 일시품절 -->
          <!-- 증정품은 제외 -->
          <tr soldoutyn="N" cno="462961340" goodsno="A000000175772" itemno="001" lgcgoodsno="8809838656159" oripno="" pno="" promkndcd="" rsvsaleyn="N" drtpuryn="N" dispcatno="" buycondstrtqtyamt="" getcondstrtqtyamt=""
            pkggoodsno="" quickyn="N" strno="" onladltcertyn="" criteo-goods="A000000175772001" trackingcd="Best_Sellingbest" gatecd="Main"
          >
            <input type="hidden" id="soldout_yn" name="soldout_yn" value="N" />
            <td colspan="7">
              <div class="tbl_cont_area">
                <!-- 쿠폰할인 : 즉시할인,상품할인 쿠폰 할인가 적용 -->
                <input type="hidden" id="saleCpnDcPrc" name="saleCpnDcPrc" value="22680" />
                <input type="hidden" id="goodsCpnYn" name="goodsCpnYn" value="Y" />
                <script type="text/javascript">
																	cartItem = {};
																	cartItem.orgSalePrc = parseInt("38000");
																	cartItem.salePrc = parseInt("25200");
																	cartItem.normPrc = parseInt("0");
																	cartItem.goodsNo = "A000000175772";
																	cartItem.goodsNm = "[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈 한정기획(70+50+10)";
																	cartItem.cartNo = "462961340";
																	cartItem.promNo = "";
																	cartItem.thnlPathNm = "10/0000/0017/A00000017577213ko.jpg?l=ko";
																	cartItem.onlBrndNm = "닥터지";
																	cartItem.itemNo = "001";
																	cartItem.itemNm = "";

																	cartItem.ordQty = parseInt("3");
																	cartItem.ordPsbMinQty = parseInt("1");
																	cartItem.ordPsbMaxQty = parseInt("999");
																	cartItem.cpnDcAmt = parseInt("2520");
																	cartItem.dlexFreeYn = "N";
																	cartItem.dlexFreeStdAmt = parseInt("20000");
																	cartItem.dlexCostTpCd = "10";
																	cartItem.saleCpnDcPrc = parseInt("22680");
																	cartItem.dlexAmt = parseInt("2500");
																	cartItem.goodsCpnYn = "Y";
																	cartItem.midCatNo = "10000010001";
																	cartItem.sumPkgYn = "Y";
																	cartItem.pkgGoodsNo = "";
																</script>
                <div class="tbl_cell w40">
                  <input type="checkbox" saleprc="25200" orgsaleprc="38000" cpndcamt="2520" ordqty="3" rsvstockqty="N" stockqty="3848" checked="checked" id="inp_prd_chk1" name="s_checkbox1" soldoutyn="N" value="0" class="chkSmall"
                    title="[[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)] 선택"
                  />
                  <input type="hidden" name="s_cart_no" value="462961340" />
                  <input type="hidden" name="s_prom_no" value="" />
                  <input type="hidden" name="s_buy_cond_strt_qty_amt" value="" />
                  <input type="hidden" name="s_disp_cat_no" value="" />
                  <input type="hidden" name="s_goods_no" value="A000000175772" />
                  <input type="hidden" name="s_item_no" value="001" />
                  <input type="hidden" name="s_cpn_dc_amt" value="2520" />
                  <input type="hidden" name="s_org_sale_prc" value="38000" />
                  <input type="hidden" name="s_sale_prc" value="25200" />
                  <input type="hidden" name="s_drt_pur_yn" value="N" />
                  <input type="hidden" name="s_dlex_polc_no" value="1" />
                  <input type="hidden" name="s_trade_shp_cd" value="1" />
                  <input type="hidden" name="s_entr_no" value="C14409" />
                  <input type="hidden" name="s_sum_pkg_yn" value="Y" />
                  <input type="hidden" name="s_whsg_expc_dt" value="" />
                  <input type="hidden" name="s_dlex_free_yn" value="N" />
                </div>
                <div class="tbl_cell w390">
                  <div class="prd_info">
                    <a class="prd_img" href="javascript:common.link.moveGoodsDetail('A000000175772','');">
                      <img data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0017/A00000017577213ko.jpg?l=ko" class="completed-seq-lazyload" alt="상품이미지" onerror="common.errorImg(this);"
                        src="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0017/A00000017577213ko.jpg?l=ko"
                      />
                    </a>
                    <!-- 
                        셀링포인트영역 셋팅시작
                        프로모션시작일자,프로모션종료일자가있거나 셀링텍스트가 잇으면 해당영역보여줌.
                      -->
                    <a class="prd_name" href="javascript:common.link.moveGoodsDetail('A000000175772','');">
                      <span class="tx_sale_info"> </span>
                      <!-- 브랜드명 및 할인정보 -->
                      <span id="brandNm">닥터지 </span>
                      <p id="goodsNm">[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)</p>
                    </a>
                    <p class="prd_opt"></p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <!-- 13 -->
                      <!-- 16 -->
                    </p>
                  </div>
                </div>
                <div class="tbl_cell w110">
                  <span class="cur_price">
                    <span class="tx_num">38,000</span>
                    원
                  </span>
                </div>
                <div class="tbl_cell w100">
                  <div class="prd_cnt">
                    <select class="amount" name="s_amount" prdtp="1" prdcnt="0" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="3" title="상품 수량 선택">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3" selected="">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                      <option value="10+">10+</option>
                    </select>
                  </div>
                  <button type="button" class="btnSmall wGray" style="display: none" name="btnQtyMod">
                    <span>변경</span>
                  </button>
                </div>
                <div class="tbl_cell w110">
                  <span class="org_price">
                    <span class="tx_num">114,000</span>
                    원
                  </span>
                  <span class="pur_price">
                    <span class="tx_num">68,040</span>
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
              <!-- input type="text" name="test1" value = "Y" />
                      <input type="text" name="test2" value = "N" />
                      <input type="text" name="test3" value = "20" />
                      <input type="text" name="test4" value = "10" />
                      <input type="text" name="test5" value = "20" />
                      <input type="text" name="test6" value = "3848" />
                      <input type="text" name="test7" value = "N" />
                      <input type="text" name="test8" value = "3848" />
                      <input type="text" name="test9" value = "N" />
                      <input type="text" name="test9" value = "1" /> -->
              <div class="curation_box" id="curation_area_8809838656159_A000000175772_001">
                <div class="loading_box">
                  <span class="icon">
                    <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif" alt="로딩중" />
                  </span>
                  <p class="txt">고객님을 위한 상품 추천중이에요</p>
                </div>
              </div>
            </td>
          </tr>
          <script type="text/javascript">
											cartInfoList.push(cartItem);
											cartTenInfoList.push(cartItem);
										</script>
          <!-- 판매종료이거나일시품절 -->
          <!-- 판매종료 -->
          <!-- 일시품절 -->
          <!-- 증정품은 제외 -->
          <tr soldoutyn="N" cno="462961288" goodsno="A000000175617" itemno="001" lgcgoodsno="8806011437895" oripno="" pno="" promkndcd="" rsvsaleyn="N" drtpuryn="N" dispcatno="" buycondstrtqtyamt="" getcondstrtqtyamt=""
            pkggoodsno="" quickyn="N" strno="" onladltcertyn="" criteo-goods="A000000175617001" trackingcd="Best_Sellingbest" gatecd="Main"
          >
            <input type="hidden" id="soldout_yn" name="soldout_yn" value="N" />
            <td colspan="7">
              <div class="tbl_cont_area">
                <!-- 쿠폰할인 : 즉시할인,상품할인 쿠폰 할인가 적용 -->
                <input type="hidden" id="saleCpnDcPrc" name="saleCpnDcPrc" value="0" />
                <input type="hidden" id="goodsCpnYn" name="goodsCpnYn" value="N" />
                <script type="text/javascript">
																	cartItem = {};
																	cartItem.orgSalePrc = parseInt("75000");
																	cartItem.salePrc = parseInt("61500");
																	cartItem.normPrc = parseInt("0");
																	cartItem.goodsNo = "A000000175617";
																	cartItem.goodsNm = "[어워즈한정]오쏘몰 이뮨 멀티비타민&미네랄 14+1입 추가증정(위클리 플래너 증정)";
																	cartItem.cartNo = "462961288";
																	cartItem.promNo = "";
																	cartItem.thnlPathNm = "10/0000/0017/A00000017561702ko.jpg?l=ko";
																	cartItem.onlBrndNm = "오쏘몰";
																	cartItem.itemNo = "001";
																	cartItem.itemNm = "";

																	cartItem.ordQty = parseInt("1");
																	cartItem.ordPsbMinQty = parseInt("1");
																	cartItem.ordPsbMaxQty = parseInt("5");
																	cartItem.cpnDcAmt = parseInt("0");
																	cartItem.dlexFreeYn = "N";
																	cartItem.dlexFreeStdAmt = parseInt("20000");
																	cartItem.dlexCostTpCd = "10";
																	cartItem.saleCpnDcPrc = parseInt("0");
																	cartItem.dlexAmt = parseInt("2500");
																	cartItem.goodsCpnYn = "N";
																	cartItem.midCatNo = "10000020001";
																	cartItem.sumPkgYn = "Y";
																	cartItem.pkgGoodsNo = "";
																</script>
                <div class="tbl_cell w40">
                  <input type="checkbox" saleprc="61500" orgsaleprc="75000" cpndcamt="0" ordqty="1" rsvstockqty="N" stockqty="6649" checked="checked" id="inp_prd_chk1" name="s_checkbox1" soldoutyn="N" value="1" class="chkSmall"
                    title="[[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)] 선택"
                  />
                  <input type="hidden" name="s_cart_no" value="462961288" />
                  <input type="hidden" name="s_prom_no" value="" />
                  <input type="hidden" name="s_buy_cond_strt_qty_amt" value="" />
                  <input type="hidden" name="s_disp_cat_no" value="" />
                  <input type="hidden" name="s_goods_no" value="A000000175617" />
                  <input type="hidden" name="s_item_no" value="001" />
                  <input type="hidden" name="s_cpn_dc_amt" value="0" />
                  <input type="hidden" name="s_org_sale_prc" value="75000" />
                  <input type="hidden" name="s_sale_prc" value="61500" />
                  <input type="hidden" name="s_drt_pur_yn" value="N" />
                  <input type="hidden" name="s_dlex_polc_no" value="1" />
                  <input type="hidden" name="s_trade_shp_cd" value="1" />
                  <input type="hidden" name="s_entr_no" value="C14978" />
                  <input type="hidden" name="s_sum_pkg_yn" value="Y" />
                  <input type="hidden" name="s_whsg_expc_dt" value="" />
                  <input type="hidden" name="s_dlex_free_yn" value="N" />
                </div>
                <div class="tbl_cell w390">
                  <div class="prd_info">
                    <a class="prd_img" href="javascript:common.link.moveGoodsDetail('A000000175617','');">
                      <img data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0017/A00000017561702ko.jpg?l=ko" class="completed-seq-lazyload" alt="상품이미지" onerror="common.errorImg(this);"
                        src="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0017/A00000017561702ko.jpg?l=ko"
                      />
                    </a>
                    <!-- 
                        셀링포인트영역 셋팅시작
                        프로모션시작일자,프로모션종료일자가있거나 셀링텍스트가 잇으면 해당영역보여줌.
                      -->
                    <a class="prd_name" href="javascript:common.link.moveGoodsDetail('A000000175617','');">
                      <span class="tx_sale_info"> </span>
                      <!-- 브랜드명 및 할인정보 -->
                      <span id="brandNm">오쏘몰 </span>
                      <p id="goodsNm">[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)</p>
                    </a>
                    <p class="prd_opt"></p>
                    <p class="prd_flag">
                      <span class="icon_flag sale">세일</span>
                      <!-- 16 -->
                    </p>
                  </div>
                </div>
                <div class="tbl_cell w110">
                  <span class="cur_price">
                    <span class="tx_num">75,000</span>
                    원
                  </span>
                </div>
                <div class="tbl_cell w100">
                  <div class="prd_cnt">
                    <select class="amount" name="s_amount" prdtp="1" prdcnt="1" ordpsbminqty="1" ordpsbmaxqty="5" qtyaddunit="1" ordqty="1" title="상품 수량 선택">
                      <option value="1" selected="">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                    </select>
                  </div>
                  <button type="button" class="btnSmall wGray" style="display: none" name="btnQtyMod">
                    <span>변경</span>
                  </button>
                </div>
                <div class="tbl_cell w110">
                  <span class="org_price">
                    <span class="tx_num">75,000</span>
                    원
                  </span>
                  <span class="pur_price">
                    <span class="tx_num">61,500</span>
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
              <!-- input type="text" name="test1" value = "Y" />
                      <input type="text" name="test2" value = "N" />
                      <input type="text" name="test3" value = "20" />
                      <input type="text" name="test4" value = "10" />
                      <input type="text" name="test5" value = "20" />
                      <input type="text" name="test6" value = "6649" />
                      <input type="text" name="test7" value = "N" />
                      <input type="text" name="test8" value = "6649" />
                      <input type="text" name="test9" value = "N" />
                      <input type="text" name="test9" value = "1" /> -->
              <div class="curation_box" id="curation_area_8806011437895_A000000175617_001">
                <div class="loading_box">
                  <span class="icon">
                    <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif" alt="로딩중" />
                  </span>
                  <p class="txt">고객님을 위한 상품 추천중이에요</p>
                </div>
              </div>
            </td>
          </tr>
          <script type="text/javascript">
											cartInfoList.push(cartItem);
											cartTenInfoList.push(cartItem);
										</script>
          <!-- 판매종료이거나일시품절 -->
          <!-- 판매종료 -->
          <!-- 일시품절 -->
          <!-- 증정품은 제외 -->
          <tr soldoutyn="N" cno="462762497" goodsno="A000000144535" itemno="001" lgcgoodsno="8809685771937" oripno="" pno="" promkndcd="" rsvsaleyn="N" drtpuryn="N" dispcatno="" buycondstrtqtyamt="" getcondstrtqtyamt=""
            pkggoodsno="" quickyn="N" strno="" onladltcertyn="" criteo-goods="A000000144535001" trackingcd="Cat100000100010008_Small" gatecd="PDP"
          >
            <input type="hidden" id="soldout_yn" name="soldout_yn" value="N" />
            <td colspan="7">
              <div class="tbl_cont_area">
                <!-- 쿠폰할인 : 즉시할인,상품할인 쿠폰 할인가 적용 -->
                <input type="hidden" id="saleCpnDcPrc" name="saleCpnDcPrc" value="0" />
                <input type="hidden" id="goodsCpnYn" name="goodsCpnYn" value="N" />
                <script type="text/javascript">
																	cartItem = {};
																	cartItem.orgSalePrc = parseInt("32000");
																	cartItem.salePrc = parseInt("32000");
																	cartItem.normPrc = parseInt("0");
																	cartItem.goodsNo = "A000000144535";
																	cartItem.goodsNm = "브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)";
																	cartItem.cartNo = "462762497";
																	cartItem.promNo = "";
																	cartItem.thnlPathNm = "10/0000/0014/A00000014453508ko.jpg?l=ko";
																	cartItem.onlBrndNm = "브로앤팁스";
																	cartItem.itemNo = "001";
																	cartItem.itemNm = "네버오일리 기획";

																	cartItem.ordQty = parseInt("1");
																	cartItem.ordPsbMinQty = parseInt("1");
																	cartItem.ordPsbMaxQty = parseInt("999");
																	cartItem.cpnDcAmt = parseInt("0");
																	cartItem.dlexFreeYn = "N";
																	cartItem.dlexFreeStdAmt = parseInt("20000");
																	cartItem.dlexCostTpCd = "10";
																	cartItem.saleCpnDcPrc = parseInt("0");
																	cartItem.dlexAmt = parseInt("2500");
																	cartItem.goodsCpnYn = "N";
																	cartItem.midCatNo = "10000010007";
																	cartItem.sumPkgYn = "Y";
																	cartItem.pkgGoodsNo = "";
																</script>
                <div class="tbl_cell w40">
                  <input type="checkbox" saleprc="32000" orgsaleprc="32000" cpndcamt="0" ordqty="1" rsvstockqty="N" stockqty="199" checked="checked" id="inp_prd_chk1" name="s_checkbox1" soldoutyn="N" value="2" class="chkSmall"
                    title="[브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)] 선택"
                  />
                  <input type="hidden" name="s_cart_no" value="462762497" />
                  <input type="hidden" name="s_prom_no" value="" />
                  <input type="hidden" name="s_buy_cond_strt_qty_amt" value="" />
                  <input type="hidden" name="s_disp_cat_no" value="" />
                  <input type="hidden" name="s_goods_no" value="A000000144535" />
                  <input type="hidden" name="s_item_no" value="001" />
                  <input type="hidden" name="s_cpn_dc_amt" value="0" />
                  <input type="hidden" name="s_org_sale_prc" value="32000" />
                  <input type="hidden" name="s_sale_prc" value="32000" />
                  <input type="hidden" name="s_drt_pur_yn" value="N" />
                  <input type="hidden" name="s_dlex_polc_no" value="1" />
                  <input type="hidden" name="s_trade_shp_cd" value="1" />
                  <input type="hidden" name="s_entr_no" value="C15399" />
                  <input type="hidden" name="s_sum_pkg_yn" value="Y" />
                  <input type="hidden" name="s_whsg_expc_dt" value="" />
                  <input type="hidden" name="s_dlex_free_yn" value="N" />
                </div>
                <div class="tbl_cell w390">
                  <div class="prd_info">
                    <a class="prd_img" href="javascript:common.link.moveGoodsDetail('A000000144535','');">
                      <img data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0014/A00000014453508ko.jpg?l=ko" class="completed-seq-lazyload" alt="상품이미지" onerror="common.errorImg(this);"
                        src="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0014/A00000014453508ko.jpg?l=ko"
                      />
                    </a>
                    <!-- 
                        셀링포인트영역 셋팅시작
                        프로모션시작일자,프로모션종료일자가있거나 셀링텍스트가 잇으면 해당영역보여줌.
                      -->
                    <a class="prd_name" href="javascript:common.link.moveGoodsDetail('A000000144535','');">
                      <span class="tx_sale_info"> </span>
                      <!-- 브랜드명 및 할인정보 -->
                      <span id="brandNm">브로앤팁스 </span>
                      <p id="goodsNm">브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)</p>
                    </a>
                    <p class="prd_opt">
                      <i class="tit">옵션</i>
                      <span>네버오일리 기획</span>
                      <button type="button" class="change" data-ref-goodsno="A000000144535" data-ref-itemno="001">옵션변경</button>
                    </p>
                    <p class="prd_flag">
                      <span class="icon_flag delivery">오늘드림</span>
                      <!-- 16 -->
                    </p>
                  </div>
                </div>
                <div class="tbl_cell w110">
                  <span class="cur_price">
                    <span class="tx_num">32,000</span>
                    원
                  </span>
                </div>
                <div class="tbl_cell w100">
                  <div class="prd_cnt">
                    <select class="amount" name="s_amount" prdtp="1" prdcnt="2" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="1" title="상품 수량 선택">
                      <option value="1" selected="">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                      <option value="10+">10+</option>
                    </select>
                  </div>
                  <button type="button" class="btnSmall wGray" style="display: none" name="btnQtyMod">
                    <span>변경</span>
                  </button>
                </div>
                <div class="tbl_cell w110">
                  <span class="org_price"> </span>
                  <span class="pur_price">
                    <span class="tx_num">32,000</span>
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
              <!-- input type="text" name="test1" value = "Y" />
                      <input type="text" name="test2" value = "N" />
                      <input type="text" name="test3" value = "20" />
                      <input type="text" name="test4" value = "10" />
                      <input type="text" name="test5" value = "20" />
                      <input type="text" name="test6" value = "199" />
                      <input type="text" name="test7" value = "N" />
                      <input type="text" name="test8" value = "199" />
                      <input type="text" name="test9" value = "N" />
                      <input type="text" name="test9" value = "1" /> -->
              <div class="curation_box" id="curation_area_8809685771937_A000000144535_001">
                <div class="loading_box">
                  <span class="icon">
                    <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif" alt="로딩중" />
                  </span>
                  <p class="txt">고객님을 위한 상품 추천중이에요</p>
                </div>
              </div>
            </td>
          </tr>
          <script type="text/javascript">
											cartInfoList.push(cartItem);
											cartTenInfoList.push(cartItem);
										</script>
        </tbody>
      </table>
      <!--// 올리브영 배송상품 -->
      <!-- 올리브영 배송상품 결제금액 -->
      <div class="basket_price_info">
        <div class="btn_area">
          <button type="button" class="btnSmall wGray type2" id="partDelBtn1" name="partDelBtn">
            <span>선택상품 삭제</span>
          </button>
        </div>
        <div class="sum_price">
          총 판매가
          <span class="tx_num">221,000</span>
          원
          <span class="tx_sign minus">-</span>
          총 할인금액
          <span class="tx_num">59,460</span>
          원
          <span class="tx_sign plus">+</span>
          배송비
          <span class="tx_num">0</span>
          원
          <span class="span_quickDeliCharge" style="display: none">(3!4!, 미드나잇 이용시)</span>
          <span class="tx_sign equal">=</span>
          <span class="tx_total_price">
            총 결제금액
            <span class="tx_price">
              <span class="tx_num">161,540</span>
              원
            </span>
          </span>
        </div>
      </div>
      <!--// 올리브영 배송상품 결제금액 -->
      <!--     /////////////////////////////           업 체 배 송 상 품 리 스 트 START        //////////////////////////////////    -->
      <!-- 
        직배상품 소스로 리스트만 
        tenList -> fourtyList ,
        cartTenInfoList -> cartFourtyInfoList
        inp_allRe1 -> inp_allRe2
        최상단 타이틀  <div class="basket_chkbox"><input type="checkbox" id="inp_allRe2" name="" value="" /> <label for="inp_all">제휴업체 배송상품</label></div>
        s_checkbox1 -> s_checkbox2
        prdTp="1"  -> prdTp="2"
        partDelBtn1 -> partDelBtn2
        soldOutDelBtn1 -> soldOutDelBtn2
        로 변경 2016-12-30
        
        제휴업체 배송상품 체크박스 체크로직 변경.
        올리브영 배송상품이 없을경우 체크박스 자동 체크 
        올리브영 배송상품이 있을경우 체크박스 자동 체크안함 
       -->
      <!--     /////////////////////////////           업 체 배 송 상 품 리 스 트 END        //////////////////////////////////    -->
      <div class="total_price_info">
        <div class="detail_price">
          <p>
            총 판매가
            <span>
              <span class="tx_num">221,000</span>
              원
            </span>
          </p>
          <span class="tx_sign2 minus">-</span>
          <p class="tx_sale">
            총 할인금액
            <span>
              <span class="tx_num">59,460</span>
              원
            </span>
          </p>
          <span class="tx_sign2 plus">+</span>
          <p>
            배송비
            <span>
              <span class="tx_num">0</span>
              원
            </span>
          </p>
        </div>
        <div class="sum_price">
          <span class="tx_text">배송비는 쿠폰할인금액에 따라 변경될 수 있습니다.</span>
          총 결제예상금액
          <span class="span_quickDeliCharge" style="display: none">최소</span>
          <span class="tx_price">
            <span class="tx_num">161,540</span>
            원
          </span>
        </div>
      </div>
      <div class="order_btn_area order_cart">
        <button type="button" class="btnOrange" name="allOrderBtn" data-attr="장바구니^주문유형^전체주문">전체주문</button>
      </div>
      <!-- Y  -->
      <div class="basket_btmBox" id="curation_area_a015">
        <h4 class="tit_h4">최근 본 상품</h4>
        <div class="loading_box">
          <span class="icon">
            <img src="https://static.oliveyoung.co.kr/pc-static-root/image/comm/pc_loading.gif" alt="로딩중" />
          </span>
          <p class="txt">고객님을 위한 상품 추천중이에요</p>
        </div>
      </div>
      <!-- 2018-07-09 문구추가 -->
      <div class="cart_comment">
        <p>장바구니 상품은 90일동안, 판매종료 된 상품은 10일동안 보관됩니다.</p>
      </div>
    </div>
  </form>
  <!-- //#Contents -->
</div>
</div>
<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ("WebSocket" in window) {
		(function() {
			function refreshCSS() {
				var sheets = [].slice.call(document
						.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if ((elem.href && typeof rel != "string")
							|| rel.length == 0
							|| rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/,
								"");
						elem.href = url + (url.indexOf("?") >= 0 ? "&" : "?")
								+ "_cacheOverride=" + new Date().valueOf();
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === "http:" ? "ws://"
					: "wss://";
			var address = protocol + window.location.host
					+ window.location.pathname + "/ws";
			var socket = new WebSocket(address);
			socket.onmessage = function(msg) {
				if (msg.data == "reload")
					window.location.reload();
				else if (msg.data == "refreshcss")
					refreshCSS();
			};
			if (sessionStorage
					&& !sessionStorage
							.getItem("IsThisFirstTime_Log_From_LiveServer")) {
				console.log("Live reload enabled.");
				sessionStorage.setItem("IsThisFirstTime_Log_From_LiveServer",
						true);
			}
		})();
	} else {
		console
				.error("Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.");
	}
	// ]]>
</script>
<%@ include file="../includes/footer.jsp"%>