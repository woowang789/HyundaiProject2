<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="../includes/header.jsp"%>

<c:set var="totalPrice" value="${0}"/>
<c:forEach var="orderItem" items="${list}">
    <c:set var="totalPrice" value="${totalPrice + orderItem.marketPrice * orderItem.qty}" />
</c:forEach>
<c:set var="tels" value="${fn:split(userInfo.tel,'-')}" />

<div id="Container">
   <!-- #Contents -->
   <div id="Contents">
      <!-- title_box -->
      <div class="title_box">
         <h1>주문/결제</h1>
         <ul class="step_list">
            <li><span class="step_num tx_num">1</span> 장바구니</li>
            <li class="on"><span class="hide">현재단계</span><span
               class="step_num tx_num">2</span> 주문/결제</li>
            <!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
            <li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
         </ul>
      </div>
      <!--// title_box -->


         <!-- 배송지 정보 -->
         <div class="title_wrap">
            <h2 class="sub-title2">배송지정보</h2>
            <p class="sub_area" id="pickupHide6">
               <input type="checkbox" id="setBaseDlvpYn" name="baseDlvpYn"
                  value="Y" checked="checked" onclick="return false;"> <label
                  for="setBaseDlvpYn">기본 배송지 설정</label>
            </p>
         </div>
         <table class="tbl_inp_form important" id="dlvpInfo">
            <!-- 2017-01-18 클래스 추가 -->
            <caption></caption>
            <colgroup>
               <col style="width: 170px">
               <col style="width: *">
            </colgroup>
            <tbody>

               <tr>
                  <th scope="row">배송지선택</th>
                  <td>
                     <span class="chk_area mgzero"><input type="radio"
                        id="btn_dlvp_exist" name="inpAddrSel" value="" targetid="exist"
                        data-attr="배송지정보^1_배송지선택" disabled=""><label
                        for="btn_dlvp_exist">기존 배송지</label></span> <!-- 2020-08-04 o2oJJ 24H 화면 제어로 인한 주석 처리 -->

                     <span class="chk_area"><input type="radio"
                        id="btn_dlvp_new" name="inpAddrSel" value="" targetid="new"
                        data-attr="배송지정보^1_배송지선택"><label for="btn_dlvp_new">신규
                           배송지</label></span>
                  </td>
               </tr>


               <tr id="pickupHide1" type="exist" style="display: none;">
                  <th scope="row">받는분</th>
                  <td class="imp_data">
                     <!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 --> <input type="text"
                     id="rmitNm_exist" name="rmitNm" value="" orgvalue=""
                     class="inpH28" title="받는분 이름을 입력해주세요." style="width: 200px"
                     this="받는분 이름은" data-attr="배송지정보^1_받는분" disabled="disabled">
                     <span class="chk_area"><input type="checkbox"
                        id="copyToDlvp_exist" targetid="exist" disabled="disabled">
                        <label for="copyToDlvp_exist">주문자정보와 동일</label></span> <!-- 2017-01-18 수정 : 위치변경 -->
                  </td>
               </tr>
               <tr class="sumtr1" id="pickupHide2" type="exist"
                  style="display: none;">
                  <th scope="row">연락처1</th>
                  <td class="imp_data">
                     <!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 --> <select
                     id="rmitCellSctNo_exist" name="rmitCellSctNo" class="selH28"
                     title="연락처1 앞자리를 선택해주세요." style="width: 90px" orgvalue=""
                     data-attr="배송지정보^1_연락처1" disabled="disabled">
                        <option value="">선택</option>

                        <option value="010">010</option>

                        <option value="011">011</option>

                        <option value="02">02</option>

                  </select> 
                  - 
                  <input type="text" id="rmitCellTxnoNo_exist"
                     name="rmitCellTxnoNo" value="" orgvalue="" class="inpH28"
                     title="연락처1 가운데 자리를 입력해주세요." this="연락처1 가운데 자리는"
                     style="width: 90px" data-attr="배송지정보^1_연락처1" disabled="disabled">
                  - 
                  <input type="text" id="rmitCellEndNo_exist"
                     name="rmitCellEndNo" value="" orgvalue="" class="inpH28"
                     title="연락처1 마지막 4자리를 입력해주세요." this="연락처1 마지막 자리는"
                     style="width: 90px" data-attr="배송지정보^1_연락처1" disabled="disabled">
                     
                  </td>
<!--                </tr> -->
               <tr id="pickupHide4" type="exist" style="display: none;">
                  <th scope="row">주소</th>
                  <td class="imp_data">
                     <!-- 2017-01-25 수정 : 클래스 추가 --> <input type="text"
                     id="stnmRmitPostNo_exist" name="rmitPostNo" value=""
                     class="inpH28" title="우편번호를 검색해주세요." style="width: 90px"
                     readonly="readonly" disabled="disabled"> <input
                     type="hidden" id="rmitPostNo_exist" name="stnmRmitPostNo"
                     value="" title="우편번호를 검색해주세요." disabled="disabled"> <!-- // 2020-08-05 o2oJJ 24H에서의 우편번호 찾기 버튼 제어를 위해서 기존 버튼 hide 처리후 제어 버튼 추가 -->
                     <button type="button" class="btnSmall wGreen w100" 
                        id="search-zipcode-pop_exist" style="display: none;"
                        data-attr="배송지정보^1_주소">
                        <span>우편번호 찾기 (기존)</span>
                     </button>
                     <button type="button" class="btnSmall wGreen w100"
                        id="search-zipcode-pop_exist_r" data-attr="배송지정보^1_주소">
                        <span>우편번호 찾기</span>
                     </button>

                     <div class="addr_box">
                        <input type="hidden" id="stnmRmitPostAddr_exist"
                           name="stnmRmitPostAddr" value="" class="inpH28"
                           title="우편번호를 검색해주세요." readonly="readonly" disabled="disabled">
                        <input type="hidden" id="rmitBaseAddr_exist" name="rmitPostAddr"
                           value="" class="inpH28" title="우편번호를 검색해주세요."
                           readonly="readonly" disabled="disabled">
                        <!-- 주소 입력 시 보여지는 부분 -->
                        <p class="addr_new">
                           <span class="tx_tit">도로명</span> : <span class="tx_addr"
                              id="stnmPostAddr_exist"></span>
                           <!--  도로명주소를 넣어주세요 -->
                        </p>
                        <p class="addr_old">
                           <span class="tx_tit">지번</span> : <span class="tx_addr"
                              id="baseAddr_exist"></span>
                           <!--  지번주소를 넣어주세요 -->
                        </p>
                        <!--// 주소 입력 시 보여지는 부분 -->
                     </div> <input type="text" id="tempRmitDtlAddr_exist" value=""
                     class="inpH28" title="상세주소를 입력해주세요." style="width: 500px;"
                     this="상세 주소는" disabled="disabled"> <input type="hidden"
                     id="stnmRmitDtlAddr_exist" name="stnmRmitDtlAddr" value=""
                     orgvalue="" class="inpH28" title="상세주소를 입력해주세요."
                     style="width: 500px" this="상세 주소는" disabled="disabled"> <input
                     type="hidden" id="rmitDtlAddr_exist" name="rmitDtlAddr" value=""
                     orgvalue="" class="inpH28" title="상세주소를 입력해주세요."
                     style="width: 500px" disabled="disabled"> <input
                     type="hidden" id="emdNm_exist" name="emdNm" disabled="disabled">
                     <input type="hidden" id="admrNm_exist" name="admrNm"
                     disabled="disabled">
                  </td>
               </tr>

               <!-- 2017-01-18 추가 (신규 배송지 선택 시) -->
               <tr type="new" class="new_order_area" style="">
                  <th scope="row">배송지명</th>
                  <td class="imp_data"><input type="text" id="dlvpNm_new"
                     name="dlvpNm" value="" class="inpH28" title="배송지명을 입력해주세요."
                     style="width: 200px;" this="배송지명은"></td>
               </tr>
               <!--// 2017-01-18 추가 -->
               <tr type="new" class="new_order_area" style="">
                  <th scope="row">받는분</th>
                  <td class="imp_data">
                     <!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 --> <input type="text"
                     id="rmitNm_new" name="rmitNm" value="" orgvalue="" class="inpH28"
                     title="받는분 이름을 입력해주세요." style="width: 200px" this="받는분 이름은"
                     data-attr="배송지정보^1_받는분"> <span class="chk_area"><input
                        type="checkbox" id="copyToDlvp_new" targetid="new"> <label
                        for="copyToDlvp_new">주문자정보와 동일</label></span> <!-- 2017-01-18 수정 : 위치변경 -->
                  </td>
               </tr>
               <tr type="new" class="new_order_area" style="">
                  <th scope="row">연락처1</th>
                  <td class="imp_data">
                     <!-- 2017-01-18 추가 : 필수입력사항 아이콘 추가 --> <select
                     id="rmitCellSctNo_new" name="rmitCellSctNo" class="selH28"
                     title="연락처1 앞자리를 선택해주세요." orgvalue="" style="width: 90px"
                     data-attr="배송지정보^1_연락처1">
                        <option value="">선택</option>

                        <option value="010">010</option>

                        <option value="011">011</option>

                        <option value="02">02</option>


                  </select> - <input type="text" id="rmitCellTxnoNo_new"
                     name="rmitCellTxnoNo" value="" orgvalue="" class="inpH28"
                     title="연락처1 가운데 자리를 입력해주세요." this="연락처1 가운데 자리는"
                     style="width: 90px" data-attr="배송지정보^1_연락처1"> - <input
                     type="text" id="rmitCellEndNo_new" name="rmitCellEndNo" value=""
                     orgvalue="" class="inpH28" title="연락처1 마지막 4자리를 입력해주세요."
                     this="연락처1 마지막 자리는" style="width: 90px" data-attr="배송지정보^1_연락처1">
                  </td>
               </tr>

               <tr type="new" class="new_order_area" style="">
                  <th scope="row">주소</th>
                  <td class="imp_data">
                     <!-- 2017-01-25 수정 : 클래스 추가 --> <input type="text"
                     id="stnmRmitPostNo_new" name="rmitPostNo" value="" class="inpH28"
                     title="우편번호를 검색해주세요." style="width: 90px" readonly="readonly">
                     <input type="hidden" id="rmitPostNo_new" name="stnmRmitPostNo"
                     value="" title="우편번호를 검색해주세요.">
                     <button type="button" class="btnSmall wGreen w100"
                        id="search-zipcode-pop_new" data-attr="배송지정보^1_주소">
                        <span>우편번호 찾기</span>
                     </button>
                     <div class="addr_box">
                        <input type="hidden" id="stnmRmitPostAddr_new"
                           name="stnmRmitPostAddr" value="" class="inpH28"
                           title="우편번호를 검색해주세요." readonly="readonly"> <input
                           type="hidden" id="rmitBaseAddr_new" name="rmitPostAddr"
                           value="" class="inpH28" title="우편번호를 검색해주세요."
                           readonly="readonly">
                        <!-- 주소 입력 시 보여지는 부분 -->
                        <p class="addr_new">
                           <span class="tx_tit">도로명</span> : <span class="tx_addr"
                              id="stnmPostAddr_new"></span>
                           <!--  도로명주소를 넣어주세요 -->
                        </p>
                        <p class="addr_old">
                           <span class="tx_tit">지번</span> : <span class="tx_addr"
                              id="baseAddr_new"></span>
                           <!--  지번주소를 넣어주세요 -->
                        </p>
                        <!--// 주소 입력 시 보여지는 부분 -->
                     </div> <input type="text" id="tempRmitDtlAddr_new" value=""
                     class="inpH28" title="상세주소를 입력해주세요." style="width: 500px;"
                     this="상세 주소는">
                     <p class="txtDot mgT5">신규배송지 정보는 마이페이지 내 배송지에 저장됩니다.</p> <input
                     type="hidden" id="stnmRmitDtlAddr_new" name="stnmRmitDtlAddr"
                     value="" class="inpH28" title="상세주소를 입력해주세요."
                     style="width: 500px" this="상세 주소는"> 
                     <input type="hidden"
                     id="rmitDtlAddr_new" name="rmitDtlAddr" value="" class="inpH28"
                     title="상세주소를 입력해주세요." style="width: 500px"> 
                     <input
                     type="hidden" id="emdNm_new" name="emdNm"> 
                     <input
                     type="hidden" id="admrNm_new" name="admrNm">
                  </td>
               </tr>
            </tbody>
         </table>

         <h2 class="sub-title2">
            올리브영 배송상품 <em class="gift" id="giftNoti2" style="display: none;">*
               증정품은 결제 시 확인하실 수 있습니다.</em>

         </h2>
         <!-- 2017-01-24 수정 : 타이틀 마크업 수정 및 클래스명 변경 -->
         <table class="tbl_prd_list">
            <caption>올리브영 배송상품 주문상품 목록</caption>
            <colgroup>
               <col style="width: *">
               <!-- 2019-11-15 추가 (오늘드림배송 선물포장) Start -->

               <!-- 2019-11-15 추가 (오늘드림배송 선물포장) End -->
               <col style="width: 110px">
               <col style="width: 100px">
               <!--
                            2017-01-24 수정 : 삭제
                            <col style="width:120px" />
                            -->
               <col style="width: 110px">
            </colgroup>
            <thead>
               <tr>
                  <th scope="col">상품정보</th>
                  <!-- 2019-11-15 추가 (오늘드림배송 선물포장) Start -->

                  <!-- 2019-11-15 추가 (오늘드림배송 선물포장) End -->
                  <th scope="col">판매가</th>
                  <th scope="col">수량</th>
                  <!--
                            2017-01-24 수정 : 배송정보 삭제
                            <th scope="col">배송정보</th>
                            -->
                  <th scope="col">구매가</th>
                  <!-- 2017-01-24 수정 : 문구수정 -->
               </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="orderItem">
               <tr>
                  <input type="hidden" name="cartNo" value="462961340">
                  <!-- 2020-08-05 o2oJJ 상품 수량 추가 -->
                  <td colspan="5" dispcatno="" stdcatno="010104"
                     goodsno="A000000175772" itemno="001" entrno="C14409"
                     brndcd="4244" tradeshpcd="1" staffdscntyn="Y" pntrsrvyn="Y"
                     ordqty="3"
                     cartno="462961340">
                     <!-- 2017-01-13 수정 -->
                     <div class="tbl_cont_area">
                        <div class="tbl_cell w700">
                           <div class="prd_info">
                              <div class="prd_img">
                                 <img
                                    src="<c:out value="${orderItem.thumb}"/>"
                                    alt="장바구니 상품 임시 이미지" onerror="common.errorImg(this);">
                              </div>
                              <div class="prd_name">
                                 <span><c:out value="${orderItem.brandName}" /></span>
                                 <p><c:out value="${orderItem.name}"/></p>
                              </div>
                              <p class="prd_opt"></p>
                              <p class="prd_flag"><c:out value="${orderItem.optionName }"/></p>
                           </div>
                        </div>
                        <div class="tbl_cell w110">
                           <span class="cur_price"><span class="tx_num"><fmt:formatNumber value="${orderItem.originPrice }" pattern="#,###" /></span>원</span>
                        </div>
                        <div class="tbl_cell w100">${orderItem.qty }</div>
                        <div class="tbl_cell w110">
                           <span class="org_price">
                              <span class="tx_num" id="normPrc_A000000175772/001"><fmt:formatNumber value="${orderItem.originPrice * orderItem.qty}" pattern="#,###" /></span>
                              원</span>
                           <!-- 2017-01-24 수정 : 추가 -->
                           <span class="pur_price">
                              <span class="tx_num" id="salePrc_A000000175772/001"><fmt:formatNumber value="${orderItem.marketPrice * orderItem.qty }" pattern="#,###" /></span>원
                           </span> 
                        </div>
                     </div>
                  </td>
               </tr>
            </c:forEach>
               
            </tbody>
         </table>

         <!-- 쿠폰 및 포인트, 결제수단, 결제정보 -->
         <div class="order_payment_box">
            <div class="left_area">
               <div class="title_wrap" id="payMethod_div">
                  <h2 class="sub-title2">결제수단 선택</h2>
                  <p class="sub_area" style="display: none;"></p>
               </div>
               <ul class="payment_info_form" id="payMethodList">
                  <li class="bg_area">
                     <!-- 2017-01-18 수정 : 클래스 추가 --> 
                  <input type="hidden"
                     id="payCouponIndex" value="" paycd=""> 
                  <input
                     type="hidden" id="easyPayCd" value=""> 
               <span>
                  <input
                        type="radio" id="payMethod_11" name="payMethod" value="11"
                        cashreceipt="N" checked="checked" data-attr="결제수단선택^결제수단선택"><label
                        id="payMethodLabel_11" for="payMethod_11">신용카드</label></span> <span><input
                        type="radio" id="payMethod_22" name="payMethod" value="22"
                        cashreceipt="N" data-attr="결제수단선택^결제수단선택"><label
                        id="payMethodLabel_22" for="payMethod_22">휴대폰결제</label></span> <span><input
                        type="radio" id="payMethod_21" name="payMethod" value="21"
                        cashreceipt="Y" data-attr="결제수단선택^결제수단선택"><label
                        id="payMethodLabel_21" for="payMethod_21">계좌이체</label></span> <!-- 2017-01-18 수정 : 문화상품권/도서상품권 선택 삭제 -->
                     <!-- 2017-02-14 수정 : 문화상품권/도서상품권 선택 재추가 -->

                  </li>
                  <!-- 신용카드 선택 시 -->
                  <li paymethod="11" style="display: list-item;">
                     <table class="tbl_inp_form no_line">
                        <caption>카드 결제정보 입력 폼</caption>
                        <colgroup>
                           <col style="width: 170px">
                           <col style="width: *">
                        </colgroup>
                        <tbody>
                           <tr>
                              <th scope="row">카드종류</th>
                              <td>
                                 <div id="cardDscnt_div">
                                    <input type="hidden" id="cardCouponIndex" value="" acqrcd=""
                                       orgacqrcd=""> <select id="acqrCd" name="acqrCd"
                                       class="selH28" title="결제하실 카드를 선택해주세요."
                                       style="width: 200px" data-attr="결제수단선택^카드정보선택">
                                       <option value="">카드를 선택해주세요.</option>

                                       <option value="BCC">BC카드</option>

                                       <option value="WIN">삼성카드</option>

                                       <option value="DIN">현대카드</option>

                                       <option value="CNB">KB카드</option>

                                       <option value="NLC">NH카드</option>
                                    </select>

                                 </div>
                                 
                              </td>
                           </tr>
                           <tr>
                              <th scope="row">할부종류</th>
                              <td>
                                 <div>
                                    <select id="instMmCnt" name="instMmCnt" class="selH28"
                                       style="width: 200px" data-attr="결제수단선택^할부종류">
                                       <option value="00">일시불</option>
                                       <option value="02" targetid="nint2MmYn">2개월</option>
                                       <option value="03" targetid="nint3MmYn">3개월</option>
                                       <option value="04" targetid="nint4MmYn">4개월</option>
                                       <option value="05" targetid="nint5MmYn">5개월</option>
                                       <option value="06" targetid="nint6MmYn">6개월</option>
                                    </select>

                                 </div>
                              </td>
                              <input type="hidden" name="aplyNintInstYn" value="N">
                           </tr>
                           
                        </tbody>
                     </table>
                  </li>
                  <!--// 신용카드 선택 시 -->
                  <!-- 계좌이체 선택 시 -->
                  <li paymethod="21" style="display: none;">
                     <table class="tbl_inp_form no_line">
                        <caption>계좌이체 안내</caption>
                        <colgroup>
                           <col style="width: 170px">
                           <col style="width: *">
                        </colgroup>
                        <tbody>
                           <tr>
                              <th scope="row">결제안내</th>
                              <td>
                                 <div>
                                    <!-- 2017-01-18 수정 : 버튼 삭제 및 하단 문구 수정 -->
                                    <div class="info_dot_list_area">

                                       <ul>
                                          <li>계좌이체로 결제 완료시 본인 계좌에서 즉시 이체 처리됩니다.</li>
                                          <li>실시간 계좌이체는 은행별 이용시간이 다를 수 있습니다.</li>
                                       </ul>
                                    </div>
                                    <!--
                                 <p class="mgT10"><button class="btnSmall wGray w100"><span>은행별 이용시간</span></button></p>
                                  -->
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </li>
                  <!--// 계좌이체 선택 시 -->
                  <!-- 휴대폰결제 선택 시 -->
                  <li paymethod="22" style="display: none;">
                     <table class="tbl_inp_form no_line">
                        <caption>휴대폰결제 안내</caption>
                        <colgroup>
                           <col style="width: 170px">
                           <col style="width: *">
                        </colgroup>
                        <tbody>
                           <tr>
                              <th scope="row">결제안내</th>
                              <td>
                                 <div class="info_dot_list_area">

                                    <ul>
                                       <li>휴대폰 결제는 100만원까지 결제가 가능합니다.</li>
                                       <li>한도문의는 모빌리언스(1600-0523), 다날(1566-3355),
                                          페이레터(1599-7591)로 문의주시기 바랍니다.</li>
                                       <!-- 2017-01-18 수정 : 문구수정 -->
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </li>
                  <!--// 휴대폰결제 선택 시 -->
                  
                  <!-- 결제혜택 정보 -->


                  <li class="ad_info_area">
                     <div class="ad_info"></div>
                  </li>
                  <!-- //결제혜택 정보 -->
               </ul>
            </div>

            <div class="right_area">
               <!-- 최종 결제정보 -->
               <h2 class="sub-title2">최종 결제정보</h2>
               <!--// 최종 결제정보 -->
               <ul class="total_payment_box">
                  <li><span class="tx_tit">총 상품금액</span> <span class="tx_cont"><span
                        class="tx_num"><fmt:formatNumber value="${totalPrice }" pattern="#,###" /></span>원</span> <input type="hidden"
                     name="goodsAmt" value="169100"></li>
                  <li><span class="tx_tit">쿠폰할인금액</span> <!-- 2017-01-18 수정 : 문구수정 -->
                     <span class="tx_cont colorOrange"><span class="tx_num"
                        id="totDscntAmt_span">- 4,000</span>원</span> <input type="hidden"
                     name="descentAmt" value="11560"> <input type="hidden"
                     id="imdtDscntAmt" value="7560"></li>

                  <li class="line_top2"><span class="tx_tit">총 배송비 </span> <span
                     class="tx_cont"><span class="tx_num" id="dlexPayAmt_span">0</span>원</span>
                     <input type="hidden" name="dlexPayAmt" value="0"></li>

                  <li class="total"><span class="tx_tit">최종 결제금액</span> <span
                     class="tx_cont"><span class="tx_num"
                        id="totPayAmt_sum_span"><fmt:formatNumber value="${totalPrice }" pattern="#,###" /></span>원</span> <input type="hidden"
                     name="remainAmt" value="157540"> <input type="hidden"
                     name="ordPayAmt" value="157540"> <input type="hidden"
                     name="goodsNm"
                     value="[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10) 외 2건">
                  </li>
                  <li> <!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 -->
                     <button class="btnPayment" id="btnPay" name="btnPay" type="button" data-attr="최종결제정보^결제하기">결제하기  </button>
                     <input type="hidden" id="tempOrdNo" value="">
                  </li>
               </ul>



               <div class="agree_payment_box" id="agreeList">
                  <div class="all_agree_cont">
                     <p>주문 상품정보 및 결제대행 서비스 이용약관에 동의하십니까?</p>
                     <!-- 2017-01-18 수정 : 문구수정 -->
                     <input type="checkbox" id="agree_all" name="TrrmsCheck1ed"
                        value="" data-attr="최종결제정보^결제대행동의"> <label
                        for="agree_all">동의</label>
                  </div>

               </div>
            </div>

         </div>
         <!--// 쿠폰 및 포인트, 결제수단, 결제정보 -->
      </form>

   </div>
   <!-- //#Contents -->
</div>
<form id="orderForm" action="/order-form" method="post">
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
   <input type="hidden" name="receiverName">
   <input type="hidden" name="receiverAddrRoad">
   <input type="hidden" name="receiverAddrJibun">
   <input type="hidden" name="receiverTel">
   <input type="hidden" name="payment">
   <input type="hidden" name="totalPrice">
   
   <input type="hidden" name="isCart" value="<c:out value="${isCart}"/>" >
   
   <c:forEach items="${list }" var="item" varStatus="status">
      <input type="hidden" name="list[<c:out value="${status.index }"/>].pid" value="<c:out value="${item.id }"/>" />
      <input type="hidden" name="list[<c:out value="${status.index }"/>].oid" value="<c:out value="${item.oid }"/>" />
      <input type="hidden" name="list[<c:out value="${status.index }"/>].qty" value="<c:out value="${item.qty }"/>" />
      <input type="hidden" name="list[<c:out value="${status.index }"/>].marketPrice" value="<c:out value="${item.marketPrice }"/>" />
   </c:forEach>
</form>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   $(document).ready(function(){
      $('#search-zipcode-pop_new').click(execDaumPostcode);
      
      $('#btnPay').click(function(e){
         e.preventDefault();
         let receiverName = $('#rmitNm_new').val();
         let receiverAddrRoad = $('#stnmPostAddr_new').text() +" "+ $('#tempRmitDtlAddr_new').val();
         let receiverAddrJibun = $('#baseAddr_new').text() + " "+$('#tempRmitDtlAddr_new').val();
         let receiverTel = $('#rmitCellSctNo_new option:selected').attr('value') + "-"+
                        $('#rmitCellTxnoNo_new').val() +"-"+ $('#rmitCellEndNo_new').val();
         let payment = 'payment';
         let totalPrice = '<c:out value="${totalPrice}"/>';
         
         $('input[name="receiverName"]').val(receiverName);
         $('input[name="receiverAddrRoad"]').val(receiverAddrRoad);
         $('input[name="receiverAddrJibun"]').val(receiverAddrJibun);
         $('input[name="receiverTel"]').val(receiverTel);
         $('input[name="payment"]').val(payment);
         $('input[name="totalPrice"]').val(totalPrice);
         
         $('#orderForm').submit();
      });
      
      $('#copyToDlvp_new').change(function(){
         if($(this).prop('checked')){
            $('#rmitNm_new').val('<c:out value="${userInfo.name}"/>');
            $("#rmitCellSctNo_new option[value='<c:out value="${tels[0]}"/>']").prop('selected', true);
            $("#rmitCellTxnoNo_new").val('<c:out value="${tels[1]}"/>')
            $("#rmitCellEndNo_new").val('<c:out value="${tels[2]}"/>')
         }else{
            $('#rmitNm_new').val('');
            $('#rmitCellSctNo_new option:selected').removeAttr('selected');
         }
      })
   })
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $('#stnmRmitPostNo_new').val(data.zonecode);
                $('#stnmPostAddr_new').text(roadAddr);
                $('#baseAddr_new').text(data.jibunAddress)

            }
        }).open();
    }
</script>
<%@ include file="../includes/footer.jsp"%>