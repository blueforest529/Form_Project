<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		String age = request.getParameter("radio1");
		String live = request.getParameter("radio2");	
		String gender = request.getParameter("radio3");	
		String Q1 = request.getParameter("radio4");	
		String Q2 = request.getParameter("radio5");
		String Q3 = request.getParameter("radio6");
		String Q4 = request.getParameter("radio7");
		String Q5 = request.getParameter("radio8");
%>
<% 
		String sDir = "C:/jsp_study/Project/WebContent/WEB-INF/bbs/";
		String sFileName = "new.txt";
		String sFilePath = sDir + sFileName;
		String sText = "";
		try{
			File dir = new File(sDir);
			dir.mkdirs();		
		}catch(Exception e){}
		
		File sFile = new File(sFilePath);
		sFile.createNewFile();
		
		FileWriter fw = new FileWriter(sFilePath,true);
		
		sText = "나이 "+age+" 사는지역 "+live+" 성별 "+gender+" 질문1 "+Q1+" 질문2 "+Q2+" 질문3 "+Q3+" 질문4 "+Q4+" 질문5 "+Q5+"\r\n";
		fw.write(sText);
		fw.close();
	 %>
</body>
</html>
<jsp:forward page="templateTest.jsp">
	<jsp:param name="CONTENTPAGE" value="formBoard.jsp"/>
</jsp:forward>