<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./my_top.jsp"%>
<script>
$(document).ready(function(){
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	$("#curPwd").focusout(function(){
		let pwd = $("#curPwd").val();
		let id = $("#id").val();
			
		if(pwd != ''){
			$.ajax({
				url:"api/checkPwd",
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				data:{pwd:pwd, id:id},
				success:function(result){
					if(result ==1){
						$("#pwd_check").text('비밀번호가 일치합니다.');
						$("#changeBtn").removeAttr("disabled");
					}else{
						$("#pwd_check").text('비밀번호가 일치하지 않습니다.');
						$("#changeBtn").attr("disabled", "disabled");
					}
				},
				error : function(){
					alert("서버요청 실패");
				}
			})
		}
	});
	
})
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("search-address").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address").value = data.address; // 주소 넣기
                document.querySelector("input[id=address_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
<script>
function check(){
	
	if(changeForm.curPwd.value==0){
		alert("현재 비밀번호를 입력해주세요");
		changeForm.curPwd.focus();
		return false;
	}
	else if(changeForm.pwd1.value==0){
		alert("비밀번호를 입력해주세요");
		changeForm.pwd1.focus();
		return false;
	}
	else if(changeForm.pwd2.value==0){
		alert("비밀번호를 입력해주세요");
		changeForm.pwd2.focus();
		return false;
	}
	else if(changeForm.pwd1.value !== changeForm.pwd2.value){
		alert("새로운 비밀번호가 같지 않습니다.");
		changeForm.pwd1.focus();
		return false;
	}
	alert("회원정보가 변경됩니다.");
}
</script>
<div class="mypage-conts">
	<div class="title-area">
		<h2 class="tit">개인정보 변경</h2>
	</div>
	<div class="box_type_1">
		<div class="title_wrap clearfix">
			<h4 class="float_left">회원정보</h4>
		</div>
		<form method="post" action="/mypage/info-change" name="changeForm" onsubmit="return check();">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<div class="tblwrap">
			<table class="tbl_wtype1">
				<caption>회원가입 입력항목</caption>
				<colgroup>
					<col style="width: 160px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">이메일 아이디</th>
						<td><input type="text" id="id" name="user_id" readonly value="<sec:authentication property="principal.user.user_id" />"></td>
					</tr>
					<tr>
						<th scope="row"><label for="pw">현재 비밀번호</label></th>
						<td><input type="password" id="curPwd" style="width: 150px"
							title="비밀번호 확인">
							<span id="pwd_check"></span>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="pw">새 비밀번호</label></th>
						<td><input type="password" id="pwd1" style="width: 150px"
							title="비밀번호 확인"></td>
					</tr>
					<tr>
						<th scope="row"><label for="pw2">새 비밀번호 확인</label></th>
						<td><input type="password" id="pwd2" style="width: 150px" name="user_pwd"> 
						<span class="guide_comment" id="pwcMsg"></span>
							<span class="guide_comment" id="pwcCapsLockMsg"></span></td>
					</tr>
					<tr>
						<th scope="row"><label for="name">휴대폰 번호</label></th>
						<td><input type="text" style="width: 150px;" id="name"
							name="user_tel" value="<sec:authentication property="principal.user.user_tel" />"></td>
					</tr>
					<tr>
						<th scope="row"><label for="name">이름</label></th>
						<td><input type="text" style="width: 120px" id="name" name="user_name" value="<sec:authentication property="principal.user.user_id" />">
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="name">주소</label></th>
						<td><input type="text" style="width: 350px" id="address" name="user_address" value="<sec:authentication property="principal.user.user_address" />">
							<a id="search-address">주소찾기</a>
							<input type="text" style="width: 300px" id="address_detail" name="user_address">
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">이메일 / SMS <br> 수신여부
						</th>
						<td>
							<div class="wtype_comment">
								올리브영에서 제공되는 서비스에 대한 수신동의 여부를 확인해주세요. <br> 선택 하시면 올리브영에서
								진행하는 공지 및 이벤트소식을 받아보실 수 있습니다. <br> <span>(단, 가입 및
									주문/결제와 재입고 알림 등에 관련된 이메일과 SMS는 동의와 상관 없이 발송 됩니다.)</span>
							</div>
							<div class="receive_choice">
								<span class="bul_sty01"> <span>이메일</span> <input
									type="radio" name="emailReceiveYN" value="true"><label
									for="email_y">예</label> <input type="radio"
									name="emailReceiveYN" value="false" checked="checked"><label
									for="email_n">아니오</label>
								</span> <span> <span>SMS</span> <input type="radio"
									name="smsReceiveYN" value="true" style="margin-left: 11px;"><label
									for="sms_y2">예</label> <input type="radio" name="smsReceiveYN"
									value="false" checked="checked"><label for="sms_n2">아니오</label>
								</span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="btnwrap">
			<input type="button" value="취소" class="btn wt" id="cancleBtn">
			<input type="submit" value="정보수정" class="btn gray mr0" id="changeBtn">
		</div>
		</form>
	</div>
</div>
</div>
</div>
</div>

<%@ include file="../includes/footer.jsp"%>