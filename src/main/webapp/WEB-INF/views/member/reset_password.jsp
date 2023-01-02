<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<script>
$(document).ready(function(){
	
	$("#pwd2").focusout(function(){
		let pwd1 = $("#pwd1").val();
		let pwd2 = $("#pwd2").val();
		
		if(pwd1 != '' && pwd2 !=''){
			if(pwd2 != pwd1){
				$("#pwdText").text("비밀번호가 일치하지 않습니다.");
			}else{
				$("#pwdText").text("비밀번호가 일치합니다.");
			}
		}
	});
})
</script>
<div id="Container" class="bgf6">
	<div id="Contents">
		<div class="loginArea new login">
			<div class="box_type_1">
				<div class="title_wrap clearfix">
					<h4 class="float_left">비밀번호 재설정</h4>
				</div>
				<form action="/reset-password" method="post">
					<div class="tblwrap">
						<table class="tbl_wtype1">
							<caption>비밀번호 찾기</caption>
							<colgroup>
								<col style="width: 160px">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="pw">새 비밀번호 설정</label></th>
									<td><input type="password" id="pwd1" name="user_pwd"
										style="width: 190px" placeholder="비밀번호를 입력해 주세요"></td>
								</tr>
								<tr>
									<th scope="row"><label for="pw2">새 비밀번호 확인</label></th>
									<td><input type="password" id="pwd2" style="width: 190px" name="user_pwd"
										placeholder="비밀번호를 입력해 주세요">
										<span id="pwdText"></span>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="btnwrap">
						<input type="button" value="취소" class="btn wt" id="cancleBtn"> 
						<input type="submit" value="비밀번호 재설정" class="btn gray mr0" id="joinBtn"> 
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>