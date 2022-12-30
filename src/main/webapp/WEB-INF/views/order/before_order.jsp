<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="actionForm" action="/order-form" method="get">
			
		<input type='text' name='list[0].pId' value='pId1'>
		<input type='text' name='list[0].oId' value='oId1'>
		<input type='text' name='list[0].qty' value='1'>
		<input type='text' name='list[1].pId' value='pId2'>
		<input type='text' name='list[1].oId' value='oId2'>
		<input type='text' name='list[1].qty' value='2'>
		
		<input type="submit" value="제출">
	</form>

</body>
</html>