<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="check_password.css">
</head>

<body>
  <div class="mypage-conts">
    <div class="title-area">
      <h2 class="tit">비밀번호 재확인</h2>
    </div>
    <div class="pw_reaffirm">
      <form>
        <fieldset>
          <div class="login_section">
            <div>
              <div>
                <label for="j_username">아이디</label>
                <input type="text" id="j_username" name="j_username" value="gks*****************" disabled="disabled">
              </div>
              <div>
                <label for="j_password">비밀번호</label>
                <input type="password" id="j_password" name="j_password" title="비밀번호">
              </div>
            </div>
            <p class="guide_comment ml50">
              <!-- 입력하신 아이디 혹은 비밀번호가 일치하지 않습니다. -->
            </p>
          </div>
        </fieldset>
      </form>
    </div>
    <div class="btnwrap mypage2">
      <a href="#" class="btn wt" id="cancle_btn">취소</a>
      <a href="#" class="btn gray" id="login_btn">확인</a>
    </div>
  </div>
</body>
</html>