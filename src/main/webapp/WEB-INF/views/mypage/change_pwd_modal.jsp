<link rel="stylesheet" href="change_pwd_modal.css">
<div class="popwrap w_type_5" id="pwSearchPop" style="top: 341px; position: absolute; z-index: 101; display: block;"
  tabindex="-1">
  <input type="hidden" id="passWordConfirmCheck" name="passWordConfirmCheck" value="N">
  <!-- Title1 -->
  <div class="pop_tltwrap2">
    <h3>비밀번호 변경</h3>
  </div>
  <!-- //Title1 -->
  <div class="pop_cnt">
    <form id="pwChangeForm" action="#" method="post">
      <fieldset>
        <legend>비밀번호 변경 입력항목</legend>
        <div class="tblwrap">
          <table class="tbl_wtype1">
            <caption>비밀번호 입력항목</caption>
            <colgroup>
              <col style="width:160px">
              <col>
            </colgroup>
            <tbody>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="oldPassword">기존 비밀번호 입력</label></th>
                <td>
                  <input type="password" id="oldPassword" style="width:187px" title="기존 비밀번호 입력">
                  <span class="guide_comment" id="oldPasswordCheckMsg">
                    <img src="https://www.thehandsome.com/_ui/desktop/common/images/common/ico_err.png"
                      style="filter: opacity(0.5) drop-shadow(0 0 0 rgb(145, 255, 0));">
                    필수항목을 입력하시길 바랍니다.</span>

                  <!-- <span class="guide_comment">기존 비밀번호가 일치 하지 않습니다.</span> -->
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong> <label for="newPassword">새 비밀번호 입력</label></th>
                <td>
                  <input type="password" id="newPassword" style="width:187px" title="새 비밀번호 입력">
                  <span class="guide_comment" id="newPasswordDubMsg">
                    <img src="https://www.thehandsome.com/_ui/desktop/common/images/common/ico_err.png"
                      style="filter: opacity(0.5) drop-shadow(0 0 0 rgb(145, 255, 0));">
                    비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.</span>
                  <!-- <span class="guide_comment">비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.</span> -->
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong> <label for="newPasswordConfirm">새 비밀번호 확인</label></th>
                <td>
                  <input type="password" id="newPasswordConfirm" style="width:187px" title="새 비밀번호 확인">
                  <span class="guide_comment" id="newPasswordConfirmDubMsg">
                    <img src="https://www.thehandsome.com/_ui/desktop/common/images/common/ico_err.png"
                      style="filter: opacity(0.5) drop-shadow(0 0 0 rgb(145, 255, 0));">
                    비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.</span>
                  <!-- <span class="guide_comment">&lt;Caps Lock&gt;이 켜져 있습니다.</span> -->
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="btnwrap">
          <input type="button" class="btn wt_s" id="cancelBtn" value="취소">
          <input type="button" class="btn gray_s" id="confirmBtn" value="확인">
        </div>
      </fieldset>
    </form>
  </div>
  <!-- btn_close -->
  <a href="#" class="btn_close" id="closeLayerPop"><img
      src="https://www.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png"></a>
  <!-- //btn_close -->
</div>