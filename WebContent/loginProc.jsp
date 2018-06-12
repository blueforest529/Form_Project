<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	String pw = request.getParameter("pw");	
%>
<%	
		if(pw.equals("1234")) { %>
		<jsp:forward page="admin.jsp"></jsp:forward>
<%		}
		else { %>
		<h3>관리자 비밀번호를 설정하세요</h3>
	<%}
%>
</body>
</html>