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
		out.println("<h2> 총 응답자 수 : "+count+"</h2>");
		a=0;b=0;c=0;d=0;e=0;
		//나이
		for (int r = 0; r < age.size(); r++) {
		 	switch(age.get(r)){
		 		case "20대" :a++; break;
		 		case "30대" :b++;break;
		 		case "40대" :c++;break;
		 		case "50대" :d++;break;
		 		case "60대" :e++;break;
		 	}
		}
		out.println("<h3> 1. 응답자들의 연령대</h3>");
		out.println("20대 : "+a);out.println("<br>");
		out.println("30대 : "+b);out.println("<br>");
		out.println("40대 : "+c);out.println("<br>");
		out.println("50대 : "+d);out.println("<br>");
		out.println("60대 : "+e);out.println("<br>");
		
		a=0;b=0;c=0;d=0;e=0;
		// 사는 곳
	 	for (int r = 0; r < live.size(); r++) {
		 	switch(live.get(r)){
		 		case "강북동" :a++; break;
		 		case "강북서" :b++;break;
		 		case "강남동" :c++;break;
		 		case "강남서" :d++;break;
		 	}
		}
	 	out.println("<h3> 2. 응답자들이 사는 지역</h3>");
		out.println("강북동(강북, 광진, 노원, 도봉, 동대문, 성동, 성북, 중랑구): "+a);out.println("<br>");
		out.println("강북서(마포, 서대문, 은평, 용산, 종로, 중구): "+b);out.println("<br>");
		out.println("강남동(강남, 강동, 서초, 송파구): "+c);out.println("<br>");
		out.println("강남서(강서, 관악, 구로, 금천, 동작, 양천, 영등포구): "+d);out.println("<br>");
		
		// 성별
		a=0;b=0;c=0;d=0;e=0;
		for (int r = 0; r < gender.size(); r++) {
			switch(gender.get(r)){
				case "남" :a++; break;
				case "여" :b++; break;
				}
			}
		out.println("<h3> 3. 응답자들의 성별</h3>");
		out.println("남 : "+a);out.println("<br>");
		out.println("여 : "+b);out.println("<br>");
		
		//질문 1
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
		out.println("<h3> 질문 1. 당신은 이번 지방선거에 투표하실 의향이 얼마나 되십니까?</h3>");
		out.println("반드시 투표한다 : "+a);out.println("<br>");
		out.println("가능하면 투표할 생각이다 : "+b);out.println("<br>");	
		out.println("투표할 생각이 없다 : "+c);out.println("<br>");	
		out.println("전혀 투표할 생각이 없다: "+d);out.println("<br>");	
		out.println("잘모르겠다 : "+e);out.println("<br>");	

		//질문2
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
		out.println("<h4> 질문 2. 오는 6월 치러질 제 7회 동시지방선거에서 서울시장으로 공천이 확정되거나 출마가 거론되는 인물 중 누구에게 투표하시겠습니까? </h4>");
		out.println("더불어 민주당 - 박원순 : "+a);out.println("<br>");
		out.println("자유한국당 - 김문수: "+b);out.println("<br>");	
		out.println("바른미래당 - 안철수: "+c);out.println("<br>");	
		out.println("민주평화당 - 정호준: "+d);out.println("<br>");	
		out.println("정의당 - 김종민 : "+e);out.println("<br>");	
		out.println("민중당 - 김진숙 : "+f);out.println("<br>");
		out.println("대한애국당 - 인지연: "+g);out.println("<br>");	
		out.println("기타후보 : "+h);out.println("<br>");	
		out.println("투표할 후보가 없다 : "+i);out.println("<br>");	
		out.println("잘 모르겠다 : "+j);out.println("<br>");	

		//질문3
		a=0;b=0;c=0;d=0;
		for (int r = 0; r < Q3.size(); r++) {
			switch(Q3.get(r)){
				case "n1" :a++; break;
				case "n2" :b++; break;
				case "n3" :c++; break;
				case "n4" :d++; break;
				}
			}
		out.println("<h3> 질문 3.현 박원순 서울시장의 시정운영에 대해서는 어떻게 생각하십니까?</h3>");
		out.println("잘하고 있다 : "+a);out.println("<br>");
		out.println("보통이다: "+b);out.println("<br>");	
		out.println("잘 못하고있다 : "+c);out.println("<br>");	
		out.println("잘 모르겠다 : "+d);out.println("<br>");	
		
		//질문4
		a=0;b=0;c=0;d=0;
		for (int r = 0; r < Q3.size(); r++) {
			switch(Q4.get(r)){
				case "nn1" :a++; break;
				case "nn2" :b++; break;
				case "nn3" :c++; break;
				case "nn4" :d++; break;
				}
			}
		out.println("<h3> 질문 4. 문재인 대통령의 국정 수행을 어떻게 평가하십니까?</h3>");
		out.println("잘하고 있다 : "+a);out.println("<br>");
		out.println("보통이다: "+b);out.println("<br>");	
		out.println("잘 못하고있다 : "+c);out.println("<br>");	
		out.println("잘 모르겠다 : "+d);out.println("<br>");	
		
		//질문5
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
		out.println("<h3> 질문 5. 당신은 현재 어느 정당을 지지하십니까?</h3>");
		out.println("더불어 민주당 : "+a);out.println("<br>");
		out.println("자유한국당: "+b);out.println("<br>");	
		out.println("바른미래당 : "+c);out.println("<br>");	
		out.println("민주평화당 : "+d);out.println("<br>");	
		out.println("정의당 : "+e);out.println("<br>");
		out.println("기타정당: "+f);out.println("<br>");	
		out.println("지지정당이없다 : "+g);out.println("<br>");	
		out.println("잘 모르겠다 : "+h);out.println("<br>");	
		
}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>