<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="my_top.jsp"%>
    <div class="title-area linezero">
      <h2 class="tit">리뷰</h2>
    </div>

    <ul class="comm1sTabs mgzero">
      <li class="on" title="선택됨"><a href="javascript:void(0);" data-attr="리뷰^리뷰_SortingTab^리뷰 작성">리뷰 작성</a></li>
      <li><a href="/mypage/reviews-completion">나의 리뷰</a></li>
    </ul>
    <ul class="dot_list">
      <li>리뷰는 배송 완료 후 90 일 이내 작성 가능합니다. (매장구매는 결제완료 시)</li>
      <li></li>
      <li>올리브영 리뷰 정책에 반하는 리뷰의 경우, 사전 고지 없이 블라인드 처리 될 수 있습니다.
      </li>

    </ul>
    <input type="hidden" id="gdasSort" name="gdasSort" value="recent">
    <div class="reviewN2_list_title">
      <div class="list_title">
        <p>작성 가능 리뷰 건수 <span>11</span>건</p>
      </div>
    </div>
    <table class="board-list-2s mgT20 new">
      <caption>상품, 작성기간, 리뷰 작성으로 이루어진 리뷰 목록 표</caption>
      <colgroup>
        <col style="width:62%;">
        <col style="width:21%;">
        <col style="width:17%;">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">상품</th>
          <th scope="col">작성기간</th>
          <th scope="col">리뷰 작성</th>
        </tr>
      </thead>
      <tbody id="tbGdast">
        <tr>
          <td class="subject">
            <div class="area">
              <a class="thum" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000111272','리뷰_리뷰상품');"
                data-attr="리뷰^리뷰상품^상품클릭">
                <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0011/A00000011127202ko.jpg?l=ko"
                  alt="닥터텅스 구역질없는 혀클리너(파우치 증정)(색상 랜덤)" onerror="common.errorImg(this);">
              </a>
              <div class="textus">
                <dl class="data review-data">
                  <dt>구매일자</dt>
                  <dd>2022.10.26
                    <span>매장</span>
                  </dd>
                </dl>
                <a class="" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000111272','리뷰_리뷰상품');"
                  data-attr="리뷰^리뷰상품^상품클릭">
                  <span class="tit">닥터텅스</span>
                  <span class="txt oneline">닥터텅스 구역질없는 혀클리너(파우치 증정)(색상 랜덤)</span>
                </a>
              </div>
            </div>
          </td>
          <td class="col777"><strong>~ 2023.01.24</strong></td>
          <td data-ord-no="12022102613030803100100250" data-goods-no="A000000111272">
            <button type="button" class="btn-review--small" data-pur-mbr-yn="Y" data-gdas-sct-cd="60" data-gdas-seq=""
              data-ord-no="12022102613030803100100250" data-goods-no="A000000111272" data-gdas-tp-cd="00"
              data-item-no="001" data-item-nm=" " data-lgc-goods-no="8809400340257" data-ord-goods-seq=""
              data-ord-con-yn="" data-thnl-path-nm="10/0000/0011/A00000011127202ko.jpg?l=ko" data-oper-dt="20221026"
              data-str-no="D383" data-origin-bizpl-cd="D383" data-pos-no="1001" data-receipt-no="00250"
              data-brnd-nm="닥터텅스" data-prgs-stat-cd="20" data-renew-used1mm-gdas-yn=""
              onclick="mypage.gdasList.appraisalRegist(this, 'Y');" data-attr="리뷰^작성버튼^리뷰 작성">리뷰 작성</button>
          </td>
        </tr>
        <tr>
          <td class="subject">
            <div class="area">
              <a class="thum" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000163992','리뷰_리뷰상품');"
                data-attr="리뷰^리뷰상품^상품클릭">
                <img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016399232ko.jpg?l=ko"
                  alt="아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 4종 택1" onerror="common.errorImg(this);">
              </a>
              <div class="textus">
                <dl class="data review-data">
                  <dt>주문일자</dt>
                  <dd>2022.09.25

                  </dd>
                </dl>
                <a class="" href="javascript:mypage.gdasList.moveGoodsDetailReview('A000000163992','리뷰_리뷰상품');"
                  data-attr="리뷰^리뷰상품^상품클릭">
                  <span class="tit">아로마티카</span>
                  <span class="txt oneline">아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 4종 택1</span>
                  <p class="txt_option"><em>옵션</em>서렌 바디오일 기획</p>
                </a>
              </div>
            </div>
          </td>
          <td class="col777"><strong>~ 2022.12.30</strong></td>
          <td data-ord-no="Y2209253287246" data-goods-no="A000000163992">
            <button type="button" class="btn-review--small">리뷰 작성</button>
          </td>
        </tr>
      </tbody>
    </table>
    
  </div>
  </div>
  </div>
  </div>
<%@ include file="../includes/footer.jsp"%>