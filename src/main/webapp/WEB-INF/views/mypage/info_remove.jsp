<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>
<script>
function deleteUser(){
	alert("회원 탈퇴하시겠습니까?");
}
</script>
<form method="post" action="/info-remove">
<input type="hidden" name="user_id" value="<sec:authentication property="principal.user.user_name"/>">
  <div class="mypage-conts">
    <div class="title-area">
      <h2 class="tit">회원탈퇴</h2>
    </div>
    <p class="common3s-text"><strong>회원 탈퇴(이용약관 동의 철회)시 아래 내용을 확인해주세요.</strong></p>
    <ul class="secess-area">
      <li>올리브영 이용약관 동의 철회 시 고객님께서 보유하셨던 쿠폰은 모두 삭제되며, 재가입 시 복원이 불가능합니다.</li>
      <li>올리브영 이용약관 동의 철회 시에는 올리브영 서비스만 이용할 수 없게 되며, CJ ONE 웹사이트를 포함한 다른 CJ ONE 제휴 브랜드의 웹사이트 서비스는 이용하실 수 있습니다.</li>
      <li>올리브영 이용약관 동의 철회 시에도 CJ ONE 멤버십 서비스 및 타 제휴 브랜드의 이용을 위해 회원님의 개인정보 및 거래정보는 CJ ONE 회원 탈퇴 시까지 보존됩니다.</li>
      <li>올리브영 이용약관 동의를 철회한 후에라도 해당 약관에 다시 동의하시면 서비스를 이용할 수 있습니다.</li>
      <li>진행 중인 전자상거래 이용내역(결제/배송/교환/반품 중인 상태)이 있거나 고객상담 및 이용하신 서비스가 완료되지 않은 경우 서비스 철회 하실 수 없습니다.</li>
    </ul>
    <p class="common2s-text">올리브영 회원 탈퇴(이용약관 동의 철회)를 하시겠습니까?</p>
    <div class="area1sButton mgT10"><a type="submit" class="btnGreen" onclick="deleteUser()">회원 탈퇴</a></div>
  </div>
  </form>
</div>
</div>
</div>
</div>
<%@ include file="../includes/footer.jsp"%>