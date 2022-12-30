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
			
		<input type='text' name='list[0].pid' value='pId1'>
		<input type='text' name='list[0].oid' value='A000000158874002'>
		<input type='text' name='list[0].qty' value='1'>
		<input type='text' name='list[1].pid' value='pId2'>
		<input type='text' name='list[1].oid' value='A000000104173001'>
		<input type='text' name='list[1].qty' value='2'>
		
		<input type="submit" value="제출">
	</form>

</body>
</html>