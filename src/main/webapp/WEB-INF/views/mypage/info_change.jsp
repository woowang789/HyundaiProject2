<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>
  <div class="mypage-conts">
    <div class="title-area">
      <h2 class="tit">개인정보 변경</h2>
    </div>
    <div class="box_type_1">
      <div class="title_wrap clearfix">
        <h4 class="float_left">회원정보</h4>
      </div>
      <div class="tblwrap">
        <table class="tbl_wtype1">
          <caption>회원가입 입력항목</caption>
          <colgroup>
            <col style="width:160px">
            <col>
          </colgroup>
          <tbody>
            <tr>
              <th scope="row">이메일 아이디</th>
              <td>soool1021@gmail.com</td>
            </tr>
            <tr>
              <th scope="row"><label for="pw">비밀번호</label></th>
              <td>
                <input type="button" value="비밀번호 변경" class="btn add_s" id="pwChangeBtn">
              </td>
            </tr>
            <tr>
              <th scope="row"> <label for="pw2">비밀번호 확인</label></th>
              <td>
                <input type="password" id="pwc" style="width:150px" title="비밀번호 확인">
                <span class="guide_comment" id="pwcMsg"></span>
                <span class="guide_comment" id="pwcCapsLockMsg"></span>
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="email">E-mail (정보수신용)</label></th>
              <td>
                <input type="text" style="width:120px" title="이메일" id="email">
                <span class="andmail">@</span>
                <select id="emailDomainSel" style="width:120px" title="이메일">
                  <option value="">직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="daum.net">daum.net</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="yahoo.co.kr">yahoo.co.kr</option>
                  <option value="lycos.co.kr">lycos.co.kr</option>
                  <option value="nate.com">nate.com</option>
                  <option value="empas.com">empas.com</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="msn.com">msn.com</option>
                  <option value="hanmir.com">hanmir.com</option>
                  <option value="chol.net">chol.net</option>
                  <option value="korea.com">korea.com</option>
                  <option value="netsgo.com">netsgo.com</option>
                  <option value="dreamwiz.com">dreamwiz.com</option>
                  <option value="hanafos.com">hanafos.com</option>
                  <option value="freechal.com">freechal.com</option>
                  <option value="hitel.net">hitel.net</option>
                </select>
                <input type="text" id="emailDomain" style="width:120px" value="" title="이메일 도메인">
                <input type="button" class="btn add_s" id="emailDubChkBtn" value="중복확인">
                <span class="guide_comment" id="emailMsg"></span>
                <div class="wtype_comment pt10">
                  <span>정확한 이메일 정보를 입력하셔야 주문/배송 및 서비스정보를 받아 보실 수 있습니다.</span>
              </div>
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="name">이름</label></th>
              <td>
                <input type="text" style="width:120px" id="name" name="name">
              </td>
            </tr>
            <tr>
              <th scope="row"><label for="birth">생년월일</label></th>
              <td>
                <select style="width:80px" id="selYear" title="년도">
                  <option value="">년</option>
                  <option value="2008">2008</option>
                  <option value="2007">2007</option>
                  <option value="2006">2006</option>
                  <option value="2005">2005</option>
                  <option value="2004">2004</option>
                  <option value="2003">2003</option>
                  <option value="2002">2002</option>
                  <option value="2001">2001</option>
                  <option value="2000">2000</option>
                  <option value="1999">1999</option>
                  <option value="1998">1998</option>
                  <option value="1997">1997</option>
                  <option value="1996">1996</option>
                  <option value="1995">1995</option>
                  <option value="1994">1994</option>
                  <option value="1993">1993</option>
                  <option value="1992">1992</option>
                  <option value="1991">1991</option>
                  <option value="1990">1990</option>
                  <option value="1989">1989</option>
                  <option value="1988">1988</option>
                  <option value="1987">1987</option>
                  <option value="1986">1986</option>
                  <option value="1985">1985</option>
                  <option value="1984">1984</option>
                  <option value="1983">1983</option>
                  <option value="1982">1982</option>
                  <option value="1981">1981</option>
                  <option value="1980">1980</option>
                  <option value="1979">1979</option>
                  <option value="1978">1978</option>
                  <option value="1977">1977</option>
                  <option value="1976">1976</option>
                  <option value="1975">1975</option>
                  <option value="1974">1974</option>
                  <option value="1973">1973</option>
                  <option value="1972">1972</option>
                  <option value="1971">1971</option>
                  <option value="1970">1970</option>
                  <option value="1969">1969</option>
                  <option value="1968">1968</option>
                  <option value="1967">1967</option>
                  <option value="1966">1966</option>
                  <option value="1965">1965</option>
                  <option value="1964">1964</option>
                  <option value="1963">1963</option>
                  <option value="1962">1962</option>
                  <option value="1961">1961</option>
                  <option value="1960">1960</option>
                  <option value="1959">1959</option>
                  <option value="1958">1958</option>
                  <option value="1957">1957</option>
                  <option value="1956">1956</option>
                  <option value="1955">1955</option>
                  <option value="1954">1954</option>
                  <option value="1953">1953</option>
                  <option value="1952">1952</option>
                  <option value="1951">1951</option>
                  <option value="1950">1950</option>
                </select>
                <select style="width:80px" id="selMonth" title="월">
                  <option value="">월</option>
                  <option value="01">01</option>
                  <option value="02">02</option>
                  <option value="03">03</option>
                  <option value="04">04</option>
                  <option value="05">05</option>
                  <option value="06">06</option>
                  <option value="07">07</option>
                  <option value="08">08</option>
                  <option value="09">09</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
                <select style="width:80px" id="selDay" title="일">
                  <option value="">일</option>
                  <option value="01">01</option>
                  <option value="02">02</option>
                  <option value="03">03</option>
                  <option value="04">04</option>
                  <option value="05">05</option>
                  <option value="06">06</option>
                  <option value="07">07</option>
                  <option value="08">08</option>
                  <option value="09">09</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option>
                  <option value="15">15</option>
                  <option value="16">16</option>
                  <option value="17">17</option>
                  <option value="18">18</option>
                  <option value="19">19</option>
                  <option value="20">20</option>
                  <option value="21">21</option>
                  <option value="22">22</option>
                  <option value="23">23</option>
                  <option value="24">24</option>
                  <option value="25">25</option>
                  <option value="26">26</option>
                  <option value="27">27</option>
                  <option value="28">28</option>
                  <option value="29">29</option>
                  <option value="30">30</option>
                  <option value="31">31</option>
                </select>
              </td>
            </tr>
            <tr>
              <th scope="row" class="th_space">이메일 / SMS <br> 수신여부</th>
              <td>
                <div class="wtype_comment">
                  올리브영에서 제공되는 서비스에 대한 수신동의 여부를 확인해주세요. <br>
                  선택 하시면 올리브영에서 진행하는 공지 및 이벤트소식을 받아보실 수 있습니다. <br>
                  <span>(단, 가입 및 주문/결제와 재입고 알림 등에 관련된 이메일과 SMS는 동의와 상관 없이 발송 됩니다.)</span>
                </div>
                <div class="receive_choice">
                  <span class="bul_sty01">
                    <span>이메일</span>
                    <input type="radio" name="emailReceiveYN" value="true" ><label for="email_y">예</label>
                    <input type="radio" name="emailReceiveYN" value="false" checked="checked"><label for="email_n">아니오</label>
                  </span>
                  <span>
                    <span>SMS</span>
                    <input type="radio" name="smsReceiveYN" value="true" style="margin-left: 11px;"><label for="sms_y2">예</label>
                    <input type="radio" name="smsReceiveYN" value="false" checked="checked"><label for="sms_n2">아니오</label>
                  </span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="btnwrap">
        <input type="button" value="취소" class="btn wt" id="cancleBtn">
        <input type="button" value="회원가입" class="btn gray mr0" id="joinBtn">
      </div>
    </div>
</div>
</div>
</div>
</div>
<%@ include file="../includes/footer.jsp"%>