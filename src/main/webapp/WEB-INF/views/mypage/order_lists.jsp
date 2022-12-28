<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="./detail.css" />
  </head>
  <body>
    <div id="Wrapper">
      <div id="Container">
        <div class="mypage-ix">
          <!-- //마이페이지 SUB 메뉴 -->

          <!-- //마이페이지 SUB -->
          <script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.side.js?dumm=20221223001"></script>
          <script>
            $(window).ready(function () {
              mypage.side.init();

              if (_isLogin) {
                var gdasPossibleTotCnt =
                  sessionStorage.getItem("gdasPossibleTotCnt");
                // if( common.isEmpty(gdasPossibleTotCnt) ) {
                common.Ajax.sendJSONRequest(
                  "POST",
                  _baseUrl + "mypage/getGdasPossibleTotCnt.do",
                  null,
                  function (res) {
                    if (res.result != null && res.result > 0) {
                      sessionStorage.setItem(
                        "gdasPossibleTotCnt",
                        res.result.numberFormat()
                      );
                    } else {
                      sessionStorage.setItem("gdasPossibleTotCnt", "0");
                    }
                    $("#_gdasPossibleTotCnt").text(
                      sessionStorage.getItem("gdasPossibleTotCnt")
                    );
                  }
                );
                //} else {
                //	$("#_gdasPossibleTotCnt").text( gdasPossibleTotCnt );
                //}

                // [3283136] 마이페이지 PC GUI 개편 및 장바구니 버튼 추가 요청의 件(CHY)
                // 신규 리뷰 작성 여부의 따라 N 아이콘 표출
                var lastCheckDtime = localStorage.getItem("lastCheckDtime");
                common.Ajax.sendJSONRequest(
                  "POST",
                  _baseUrl + "mypage/getNewGdasPossibleCnt.do",
                  { lastCheckDtime: lastCheckDtime },
                  function (res) {
                    if (res.result > 0) {
                      $("#_newGdasPossible").show();
                    } else {
                      $("#_newGdasPossible").hide();
                    }
                  }
                );
              }
            });
          </script>

          <div class="mypage-conts">
            <script src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/mypage.header.js?dumm=20221223001"></script>
            <script>
              $(window).ready(function () {
                mypage.header.init();
              });
            </script>

            <div class="title-area2">
              <h2 class="tit">주문/배송 조회</h2>
            </div>
            <div class="layer_pop_wrap" id="service_survey" style=""></div>

            <fieldset class="search-period mgT30">
              <legend></legend>
              <!-- 2019.10.20 오프라인리뷰관련 추가 -->

              <div class="select_con">
                <p>구매기간</p>
                <ul class="select-month">
                  <!-- 			[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 -->
                  <li class="on">
                    <button type="button" data-month="-1">1개월</button>
                  </li>
                  <li><button type="button" data-month="-3">3개월</button></li>
                  <li><button type="button" data-month="-6">6개월</button></li>
                  <li>
                    <button type="button" data-month="-12">12개월</button>
                  </li>
                </ul>
              </div>
              <!-- //오프라인 리뷰 -->
              <!-- 2016-12-23 수정 -->
              <button type="button" class="btnLookup" id="do-search-period">
                조회
              </button>
            </fieldset>
            <script
              type="text/javascript"
              src="https://static.oliveyoung.co.kr/pc-static-root/js/common/searchPeriod.js?dumm=20221223001"
            ></script>
            <script>
              //[3394070] 올영체험단 리뷰 배너 오류 문의 件 요청으로 올영체험단 리뷰는 시작시 12개월로 선택되게 조건 변경 되어 START_DATE, END_DATE 변경
              START_DATE = "";
              END_DATE = "";
              ollyoungYn = "";

              $(document).ready(function () {
                var cnslChk = "";
                var startYear = 2012;
                var thisYear = new Date().getFullYear();

                if (!common.isEmpty(cnslChk)) startYear = 2014;
                $("#cal-start-year,#cal-end-year").empty();
                while (startYear <= thisYear) {
                  $("#cal-start-year,#cal-end-year").append(
                    "<option value='" +
                      startYear +
                      "'>" +
                      startYear +
                      "</option>"
                  );
                  startYear++;
                }

                setTimeout(function () {
                  SearchPeriod.init();
                }, 500);
              });
            </script>

            <table class="board-list-2s mgT20">
              <caption>
                주문일자, 상품, 수량, 주문금액, 상태로 이루어진 주문/배송/내역
                목록 표
              </caption>
              <colgroup>
                <col style="width: 17%" />
                <col style="width: %" />
                <col style="width: 8%" />
                <col style="width: 130px" />
                <col style="width: 110px" />
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">주문일자</th>
                  <th scope="col">상품</th>
                  <th scope="col">수량</th>
                  <th scope="col">주문금액</th>
                  <th scope="col">상태</th>
                </tr>
              </thead>

              <tbody class="history">
                <tr>
                  <td rowspan="3">
                    <ul class="mypage-flag-apply">
                      <!-- 선물하기 PRJ 선물 flag CBLIM 20200616 -->

                      <!-- 선물하기 PRJ 선물 flag CBLIM 20200616 -->

                      <li class="order-date">2022.12.27</li>

                      <li class="color1s">Y2212270336103</li>

                      <li></li>
                    </ul>
                  </td>

                  <td class="subject">
                    <div class="area">
                      <a
                        class="thum"
                        href="javascript:common.link.moveGoodsDetail('A000000175772','', 'Order');"
                      >
                        <img
                          src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017577213ko.jpg?l=ko"
                          alt="[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림 70ml_어워즈&nbsp;한정기획(70+50+10)"
                          onerror="common.errorImg(this);"
                        />
                      </a>
                      <div class="textus">
                        <a
                          class=""
                          href="javascript:common.link.moveGoodsDetail('A000000175772','', 'Order');"
                        >
                          <span class="tit">닥터지</span>
                          <span class="txt"
                            >[어워즈 한정] 닥터지 레드 블레미쉬 클리어 수딩크림
                            70ml_어워즈&nbsp;한정기획(70+50+10)</span
                          >
                        </a>
                      </div>
                    </div>
                  </td>
                  <td class="">3</td>
                  <td class="colorOrange">
                    <!--  오프라인구매용 금액 -->

                    <strong>68,040</strong> 원
                  </td>

                  <td>
                    <strong>배송완료</strong>

                    <!-- 2019.10.18 오프라인리뷰관련 추가 온라인구매인 경우에만 배송조회가 버튼 노출 -->
                  </td>
                </tr>

                <tr>
                  <td class="subject lineLeft">
                    <div class="area">
                      <a
                        class="thum"
                        href="javascript:common.link.moveGoodsDetail('A000000175617','', 'Order');"
                      >
                        <img
                          src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0017/A00000017561702ko.jpg?l=ko"
                          alt="[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입 추가증정(위클리 플래너 증정)"
                          onerror="common.errorImg(this);"
                        />
                      </a>
                      <div class="textus">
                        <a
                          class=""
                          href="javascript:common.link.moveGoodsDetail('A000000175617','', 'Order');"
                        >
                          <span class="tit">오쏘몰</span>
                          <span class="txt"
                            >[어워즈한정]오쏘몰&nbsp;이뮨&nbsp;멀티비타민&amp;미네랄&nbsp;14+1입
                            추가증정(위클리 플래너 증정)</span
                          >
                        </a>
                      </div>
                    </div>
                  </td>
                  <td class="">1</td>
                  <td class="colorOrange">
                    <!--  오프라인구매용 금액 -->

                    <strong>61,500</strong> 원
                  </td>

                  <td>
                    <strong>배송완료</strong>

                    <!-- 2019.10.18 오프라인리뷰관련 추가 온라인구매인 경우에만 배송조회가 버튼 노출 -->
                  </td>
                </tr>

                <tr>
                  <td class="subject lineLeft">
                    <div class="area">
                      <a
                        class="thum"
                        href="javascript:common.link.moveGoodsDetail('A000000144535','', 'Order');"
                      >
                        <img
                          src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014453508ko.jpg?l=ko"
                          alt="브로앤팁스 네버오일리 올인원 120ML 기획(+바디워시100ML)"
                          onerror="common.errorImg(this);"
                        />
                      </a>
                      <div class="textus">
                        <a
                          class=""
                          href="javascript:common.link.moveGoodsDetail('A000000144535','', 'Order');"
                        >
                          <span class="tit">브로앤팁스</span>
                          <span class="txt"
                            >브로앤팁스 네버오일리 올인원 120ML
                            기획(+바디워시100ML)</span
                          >
                        </a>

                        <span class="color1sSize"
                          ><i class="tit">옵션</i>네버오일리 기획</span
                        >
                      </div>
                    </div>
                  </td>
                  <td class="">1</td>
                  <td class="colorOrange">
                    <!--  오프라인구매용 금액 -->

                    <strong>32,000</strong> 원
                  </td>

                  <td>
                    <strong>배송완료</strong>

                    <!-- 2019.10.18 오프라인리뷰관련 추가 온라인구매인 경우에만 배송조회가 버튼 노출 -->
                  </td>
                </tr>
              </tbody>
            </table>

            <div class="pageing">
              <strong title="현재 페이지">1</strong>
            </div>

            <script
              type="text/javascript"
              src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/myorder.js?dumm=20221223001"
            ></script>
            <script
              type="text/javascript"
              src="https://static.oliveyoung.co.kr/pc-static-root/js/mypage/gdas.js?dumm=20221223001"
            ></script>
            <script
              type="text/javascript"
              src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.12.1/underscore-min.js"
            ></script>
            <script>
              HDC_PATH = $.parseJSON(
                '{"00":"http://nexs.cjgls.com/web/service02_01.jsp?slipno=","01":"http://www.lotteglogis.com/personalService/tracking/06/tracking_goods_result.jsp?InvNo=","10":"http://www.hanjinexpress.hanjin.net/customer/plsql/hddcw07.result?wbl_num=","20":"http://www.lotteglogis.com/personalService/tracking/06/tracking_goods_result.jsp?InvNo=","30":"http://nexs.cjgls.com/web/detail.jsp?slipno=","50":"http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=","70":"http://www.ilogen.com/d2d/delivery/invoice_search_popup.jsp?viewType=type2&invoiceNum=","92":"http://www.kglogis.co.kr/delivery/delivery_result.jsp?item_no=","93":"http://kdexp.com/basicNewDelivery.kd?barcode=","94":null,"95":"http://www.chunil.co.kr/HTrace/HTrace.jsp?transNo=","96":"https://mall.todaypickup.com/front/delivery/list/","97":"http://www.sbgls.co.kr/search.html","81":null,"82":"https://my.amazing.today/track/","200":"http://service.epost.go.kr/trace.RetrieveEmsRigiTraceList.comm?POST_CODE=","210":"http://www.dhl.co.kr/content/kr/ko/express/tracking.shtml?brand=DHL&AWB=","99":null,"02":"http://nexs.cjgls.com/web/service02_01.jsp?slipno=","03":null}'
              );

              $(document).ready(function () {
                mypage.orderList.init();
              });
              function surveyInfo() {
                var targetUrl = _baseUrl + "mypage/popup/surveyInfoPop.do";
                $("#service_survey").load(targetUrl, function () {
                  fnLayerSet("service_survey", "open", "");
                  $("#service_survey").css("top", "3%");
                  $("#service_survey").css("z-index", "999");
                  $("#service_survey").attr("tabindex", 0).focus();
                });
              }
            </script>
          </div>
        </div>
      </div>
    </div>

    <!-- Code injected by live-server -->
    <script>
      // <![CDATA[  <-- For SVG support
      if ("WebSocket" in window) {
        (function () {
          function refreshCSS() {
            var sheets = [].slice.call(document.getElementsByTagName("link"));
            var head = document.getElementsByTagName("head")[0];
            for (var i = 0; i < sheets.length; ++i) {
              var elem = sheets[i];
              var parent = elem.parentElement || head;
              parent.removeChild(elem);
              var rel = elem.rel;
              if (
                (elem.href && typeof rel != "string") ||
                rel.length == 0 ||
                rel.toLowerCase() == "stylesheet"
              ) {
                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, "");
                elem.href =
                  url +
                  (url.indexOf("?") >= 0 ? "&" : "?") +
                  "_cacheOverride=" +
                  new Date().valueOf();
              }
              parent.appendChild(elem);
            }
          }
          var protocol =
            window.location.protocol === "http:" ? "ws://" : "wss://";
          var address =
            protocol + window.location.host + window.location.pathname + "/ws";
          var socket = new WebSocket(address);
          socket.onmessage = function (msg) {
            if (msg.data == "reload") window.location.reload();
            else if (msg.data == "refreshcss") refreshCSS();
          };
          if (
            sessionStorage &&
            !sessionStorage.getItem("IsThisFirstTime_Log_From_LiveServer")
          ) {
            console.log("Live reload enabled.");
            sessionStorage.setItem("IsThisFirstTime_Log_From_LiveServer", true);
          }
        })();
      } else {
        console.error(
          "Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading."
        );
      }
      // ]]>
    </script>
  </body>
</html>
