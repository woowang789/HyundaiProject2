<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../includes/header.jsp"%>
<div id="Container" class="bgf6">
	<div id="Contents">
		<div class="loginArea new login">
			<div class="box_type_1">
				<div class="title_wrap clearfix">
					<h4 class="float_left">비밀번호 재설정</h4>
				</div>
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
								<td><input type="password" id="pw" name="passwd"
									style="width: 190px" placeholder="비밀번호를 입력해 주세요"> </td>
							</tr>
							<tr>
								<th scope="row"><label for="pw2">새 비밀번호 확인</label></th>
								<td><input type="password" id="pwc" style="width: 190px"
									placeholder="비밀번호를 입력해 주세요">
								</td>
							</tr>

						</tbody>
					</table>
				</div>


				<div class="btnwrap">
					<input type="button" value="취소" class="btn wt" id="cancleBtn" href="/home">
					<input type="button" value="비밀번호 재설정" class="btn gray mr0" href="/login"
						id="joinBtn">
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../includes/footer.jsp"%>