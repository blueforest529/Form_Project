<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>6.13 지방선거 여론조사</title>
<style>
</style>
</head>
<body>
<table border=0 width=100% cellpadding=2 cellspacing=0>
<tr>
	<td height="100px">
		<jsp:include page="top.jsp" flush="false"/>
	</td>
</tr>
<tr>
	<td height="450px" valign="top">
		<jsp:include page="<%=contentPage%>" flush="false"/>
	</td>	
</tr>
</table>
</body>
</html>