<%@ page 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"
    isThreadSafe="true"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
 <style>
	 .button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
	}
	
	.button2:hover {
	    background-color: #008CBA;
	    color: white;
	}
</style>
</head>
<body>
<br><br><br><br>
<center>
<form action="loginProc.jsp" method="post">
<table>
<tr>
	<td>관리자 비밀번호를 입력하세요</td>
	<td><input type="password" name="pw"></td><br><br>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit" value="로그인" class="button2">
		<input type="reset" value="취소" class="button2">
	</td>
</tr>
</table>
</form>
</center>
</body>
</html>