<%@page import="java.util.ArrayList"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
int a=0,b=0,c=0,d=0,e=0,f=0,g=0,h=0,i=0,j=0;
%>
<%
	int count=0;
	String sDir = "";
	String sFileName="";
	String sFilePath="";
	String sLine = "";
	String sText="";
	
	String[] sLineArray;
	ArrayList<String> age = new ArrayList<String>();
	ArrayList<String> live = new ArrayList<String>();
	ArrayList<String> gender = new ArrayList<String>();
	ArrayList<String> Q1 = new ArrayList<String>();
	ArrayList<String> Q2 = new ArrayList<String>();
	ArrayList<String> Q3 = new ArrayList<String>();
	ArrayList<String> Q4 = new ArrayList<String>();
	ArrayList<String> Q5 = new ArrayList<String>();
	try{
		sDir = "C:/jsp_study/Project/WebContent/WEB-INF/bbs/";
		sFileName = "new.txt";
		sFilePath = sDir + sFileName;
		FileReader fr = new FileReader(sFilePath);
		BufferedReader br = new BufferedReader(fr);
		while((sLine = br.readLine())!=null){
			sLineArray = sLine.split(" ");
			age.add(sLineArray[1]);
			live.add(sLineArray[3]);
			gender.add(sLineArray[5]);
			Q1.add(sLineArray[7]);
			Q2.add(sLineArray[9]);
			Q3.add(sLineArray[11]);
			Q4.add(sLineArray[13]);
			Q5.add(sLineArray[15]);
			count++;
		}
		out.println("<h2> �� ������ �� : "+count+"</h2>");
		a=0;b=0;c=0;d=0;e=0;
		//����
		for (int r = 0; r < age.size(); r++) {
		 	switch(age.get(r)){
		 		case "20��" :a++; break;
		 		case "30��" :b++;break;
		 		case "40��" :c++;break;
		 		case "50��" :d++;break;
		 		case "60��" :e++;break;
		 	}
		}
		out.println("<h3> 1. �����ڵ��� ���ɴ�</h3>");
		out.println("20�� : "+a);out.println("<br>");
		out.println("30�� : "+b);out.println("<br>");
		out.println("40�� : "+c);out.println("<br>");
		out.println("50�� : "+d);out.println("<br>");
		out.println("60�� : "+e);out.println("<br>");
		
		a=0;b=0;c=0;d=0;e=0;
		// ��� ��
	 	for (int r = 0; r < live.size(); r++) {
		 	switch(live.get(r)){
		 		case "���ϵ�" :a++; break;
		 		case "���ϼ�" :b++;break;
		 		case "������" :c++;break;
		 		case "������" :d++;break;
		 	}
		}
	 	out.println("<h3> 2. �����ڵ��� ��� ����</h3>");
		out.println("���ϵ�(����, ����, ���, ����, ���빮, ����, ����, �߶���): "+a);out.println("<br>");
		out.println("���ϼ�(����, ���빮, ����, ���, ����, �߱�): "+b);out.println("<br>");
		out.println("������(����, ����, ����, ���ı�): "+c);out.println("<br>");
		out.println("������(����, ����, ����, ��õ, ����, ��õ, ��������): "+d);out.println("<br>");
		
		// ����
		a=0;b=0;c=0;d=0;e=0;
		for (int r = 0; r < gender.size(); r++) {
			switch(gender.get(r)){
				case "��" :a++; break;
				case "��" :b++; break;
				}
			}
		out.println("<h3> 3. �����ڵ��� ����</h3>");
		out.println("�� : "+a);out.println("<br>");
		out.println("�� : "+b);out.println("<br>");
		
		//���� 1
		a=0;b=0;c=0;d=0;e=0;
		for (int r = 0; r < Q1.size(); r++) {
			switch(Q1.get(r)){
				case "a1" :a++; break;
				case "a2" :b++; break;
				case "a3" :c++; break;
				case "a4" :d++; break;
				case "a5" :e++; break;
				}
			}
		out.println("<h3> ���� 1. ����� �̹� ���漱�ſ� ��ǥ�Ͻ� ������ �󸶳� �ǽʴϱ�?</h3>");
		out.println("�ݵ�� ��ǥ�Ѵ� : "+a);out.println("<br>");
		out.println("�����ϸ� ��ǥ�� �����̴� : "+b);out.println("<br>");	
		out.println("��ǥ�� ������ ���� : "+c);out.println("<br>");	
		out.println("���� ��ǥ�� ������ ����: "+d);out.println("<br>");	
		out.println("�߸𸣰ڴ� : "+e);out.println("<br>");	

		//����2
		a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=0;i=0;j=0;
		for (int r = 0; r < Q2.size(); r++) {
			switch(Q2.get(r)){
				case "aa1" :a++; break;
				case "aa2" :b++; break;
				case "aa3" :c++; break;
				case "aa4" :d++; break;
				case "aa5" :e++; break;
				case "aa6" :f++; break;
				case "aa7" :g++; break;
				case "aa8" :h++; break;
				case "aa9" :i++; break;
				case "aa10" :j++; break;
				}
			}
		out.println("<h4> ���� 2. ���� 6�� ġ���� �� 7ȸ �������漱�ſ��� ����������� ��õ�� Ȯ���ǰų� �⸶�� �ŷеǴ� �ι� �� �������� ��ǥ�Ͻðڽ��ϱ�? </h4>");
		out.println("���Ҿ� ���ִ� - �ڿ��� : "+a);out.println("<br>");
		out.println("�����ѱ��� - �蹮��: "+b);out.println("<br>");	
		out.println("�ٸ��̷��� - ��ö��: "+c);out.println("<br>");	
		out.println("������ȭ�� - ��ȣ��: "+d);out.println("<br>");	
		out.println("���Ǵ� - ������ : "+e);out.println("<br>");	
		out.println("���ߴ� - ������ : "+f);out.println("<br>");
		out.println("���Ѿֱ��� - ������: "+g);out.println("<br>");	
		out.println("��Ÿ�ĺ� : "+h);out.println("<br>");	
		out.println("��ǥ�� �ĺ��� ���� : "+i);out.println("<br>");	
		out.println("�� �𸣰ڴ� : "+j);out.println("<br>");	

		//����3
		a=0;b=0;c=0;d=0;
		for (int r = 0; r < Q3.size(); r++) {
			switch(Q3.get(r)){
				case "n1" :a++; break;
				case "n2" :b++; break;
				case "n3" :c++; break;
				case "n4" :d++; break;
				}
			}
		out.println("<h3> ���� 3.�� �ڿ��� ��������� ������� ���ؼ��� ��� �����Ͻʴϱ�?</h3>");
		out.println("���ϰ� �ִ� : "+a);out.println("<br>");
		out.println("�����̴�: "+b);out.println("<br>");	
		out.println("�� ���ϰ��ִ� : "+c);out.println("<br>");	
		out.println("�� �𸣰ڴ� : "+d);out.println("<br>");	
		
		//����4
		a=0;b=0;c=0;d=0;
		for (int r = 0; r < Q3.size(); r++) {
			switch(Q4.get(r)){
				case "nn1" :a++; break;
				case "nn2" :b++; break;
				case "nn3" :c++; break;
				case "nn4" :d++; break;
				}
			}
		out.println("<h3> ���� 4. ������ ������� ���� ������ ��� ���Ͻʴϱ�?</h3>");
		out.println("���ϰ� �ִ� : "+a);out.println("<br>");
		out.println("�����̴�: "+b);out.println("<br>");	
		out.println("�� ���ϰ��ִ� : "+c);out.println("<br>");	
		out.println("�� �𸣰ڴ� : "+d);out.println("<br>");	
		
		//����5
		a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=0;
		for (int r = 0; r < Q3.size(); r++) {
			switch(Q5.get(r)){
				case "s1" :a++; break;
				case "s2" :b++; break;
				case "s3" :c++; break;
				case "s4" :d++; break;
				case "s5" :e++; break;
				case "s6" :f++; break;
				case "s7" :g++; break;
				case "s8" :h++; break;
				}
			}
		out.println("<h3> ���� 5. ����� ���� ��� ������ �����Ͻʴϱ�?</h3>");
		out.println("���Ҿ� ���ִ� : "+a);out.println("<br>");
		out.println("�����ѱ���: "+b);out.println("<br>");	
		out.println("�ٸ��̷��� : "+c);out.println("<br>");	
		out.println("������ȭ�� : "+d);out.println("<br>");	
		out.println("���Ǵ� : "+e);out.println("<br>");
		out.println("��Ÿ����: "+f);out.println("<br>");	
		out.println("���������̾��� : "+g);out.println("<br>");	
		out.println("�� �𸣰ڴ� : "+h);out.println("<br>");	
		
}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>