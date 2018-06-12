<%@ page 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    session="true"
    isThreadSafe="true"
%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function conform(){
		 if (confirm('죄송합니다. 조사대상이 아닙니다.')) {
		       setTimeout('go_url()',2000)  // 5초후 go_url() 함수를 호출한다.
        } else {           
			}
		}
	 function go_url(){
         location.href="main.jsp"
      }
	 var bDisplay = true;
	 function doDisplay(){
		    var con = document.getElementById("myDIV");
		    if(con.style.display=='block'){
		        con.style.display = 'none';
		    }else{
		        con.style.display = 'block';
		    }
		}
	 
		</script>
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
<form action="formSave.jsp" method="post">
<fieldset>
   <legend><h2>서울시장 후보 지지도 여론조사</h2></legend>
   <div>
   	<h3>당신의 올해 만 나이를 선택해 주세요.</h3>
    <label for="teen"><input type="radio" id="teen" name="radio1서" onclick="conform()"> 만 18세 이하</label><br>
    <label for="two"><input type="radio" id="two" name="radio1" value="20대"> 19세 ~ 29세</label><br>
    <label for="three"><input type="radio" id="three" name="radio1" value="30대"> 30대</label><br>
    <label for="four"><input type="radio" id="four" name="radio1" value="40대"> 40대</label><br>
     <label for="five"><input type="radio" id="five" name="radio1" value="50대"> 50대</label><br>
     <label for="six"><input type="radio" id="six" name="radio1" value="60대"> 60대</label><br>
  </div>
    <div>
   	<h3>당신은 어느 지역에 거주하고 계신가요?</h3>
    <label for="1"><input type="radio" id="1" name="radio2" value="강북동"> 1. 강북동 : 강북, 광진, 노원, 도봉, 동대문, 성동, 성북, 중랑구</label><br>
    <label for="2"><input type="radio" id="2" name="radio2"  value="강북서"> 2. 강북서 : 마포, 서대문, 은평, 용산, 종로, 중구</label><br>
    <label for="3"><input type="radio" id="3" name="radio2"  value="강남동"> 3. 강남동 : 강남, 강동, 서초, 송파구</label><br>
    <label for="4"><input type="radio" id="4" name="radio2"  value="강남서"> 4. 강남서 : 강서, 관악, 구로, 금천, 동작, 양천, 영등포구</label><br>
     <label for="5"><input type="radio" id="5" name="radio2" onclick="conform()"> 5. 그 외 지역</label><br>
  </div>
    <div>
   	<h3>당신의 성별은 무엇인가요?</h3>
    <label for="man"><input type="radio" id="man" name="radio3"  value="남"> 남</label><br>
    <label for="woman"><input type="radio" id="woman" name="radio3"  value="여"> 여</label><br>
     </div> 
     <center><a href="javascript:doDisplay();"><input type="button" class="button button2" value="다음으로 넘어가기"></input></a></center>
  </fieldset>
   <div id="myDIV" style="display:none">
    <fieldset>
	    <div>
		   	<h3>1. 당신은 이번 지방선거에 투표하실 의향이 얼마나 되십니까?</h3>
		    <label for="q1"><input type="radio" id="q1" name="radio4" value="a1"> ① 반드시 투표한다.</label><br>
		    <label for="q2"><input type="radio" id="q2" name="radio4" value="a2"> ② 가능하면 투표할 생각이다.</label><br>
		    <label for="q3"><input type="radio" id="q3" name="radio4" value="a3"> ③ 투표할 생각이 없다.</label><br>
		    <label for="q4"><input type="radio" id="q4" name="radio4" value="a4"> ④ 전혀 투표할 생각이 없다.</label><br>
		    <label for="q5"><input type="radio" id="q5" name="radio4" value="a5"> ⑤ 잘 모르겠다.</label><br>
		</div>
		<div>
		   	<h4>2. 오는 6월에 치러질 제 7회 동시지방선거에서 서울시장으로 공천이 확정 되거나 출마가 거론되는 인물 중 누구에게 투표하시겠습니까?</h4>
		    <label for="qq1"><input type="radio" id="qq1" name="radio5" value="aa1"> ① 더불어 민주당 박원순</label><br>
		    <label for="qq2"><input type="radio" id="qq2" name="radio5" value="aa2"> ② 자유한국당 김문수</label><br>
		    <label for="qq3"><input type="radio" id="qq3" name="radio5" value="aa3"> ③ 바른미래당 안철수</label><br>
		    <label for="qq4"><input type="radio" id="qq4" name="radio5" value="aa4"> ④ 민주평화당 정호준</label><br>
		    <label for="qq5"><input type="radio" id="qq5" name="radio5" value="aa5"> ⑤ 정의당 김종민</label><br>
		    <label for="qq6"><input type="radio" id="qq6" name="radio5" value="aa6"> ⑥ 민중당 김진숙</label><br>
		    <label for="qq7"><input type="radio" id="qq7" name="radio5" value="aa7"> ⑦ 대한애국당 인지연</label><br>
		    <label for="qq8"><input type="radio" id="qq8" name="radio5" value="aa8"> ⑧ 기타후보</label><br>
		    <label for="qq9"><input type="radio" id="qq9" name="radio5" value="aa9"> ⑨ 투표할 후보가 없다 </label><br>
		    <label for="qq10"><input type="radio" id="qq10" name="radio5" value="aa10"> ⑩ 잘 모르겠다</label><br>
		</div>
		<div>
		   	<h3>3. 현 박원순 서울시장의 시정운영에 대해서는 어떻게 생각하십니까?</h3>
		    <label for="e1"><input type="radio" id="e1" name="radio6" value="n1"> ① 잘하고 있다.</label><br>
		    <label for="e2"><input type="radio" id="e2" name="radio6" value="n2"> ② 보통이다.</label><br>
		    <label for="e3"><input type="radio" id="e3" name="radio6" value="n3"> ③ 잘 못하고 있다.</label><br>
		    <label for="e4"><input type="radio" id="e4" name="radio6" value="n4"> ④ 잘 모르겠다.</label><br>
		</div>
		<div>
		   	<h3>4. 문재인 대통령의 국정 수행을 어떻게 평가하십니까?</h3>
		    <label for="ee1"><input type="radio" id="ee1" name="radio7" value="nn1"> ① 잘하고 있다.</label><br>
	   <label for="ee2"><input type="radio" id="ee2" name="radio7" value="nn2"> ② 보통이다.</label><br>
		    <label for="ee3"><input type="radio" id="ee3" name="radio7" value="nn3"> ③ 잘 못하고 있다.</label><br>
		    <label for="ee4"><input type="radio" id="ee4" name="radio7" value="nn4"> ④ 잘 모르겠다.</label><br>
		</div>
		<div>
		   	<h3>5. 당신은 현재 어느 정당을 지지하십니까?</h3>
		   <label for="u1"><input type="radio" id="u1" name="radio8" value="s1"> ① 더불어 민주당 </label><br>
		    <label for="u2"><input type="radio" id="u2" name="radio8" value="s2"> ② 자유한국당 </label><br>
		    <label for="u3"><input type="radio" id="u3" name="radio8" value="s3"> ③ 바른미래당 </label><br>
		    <label for="u4"><input type="radio" id="u4" name="radio8" value="s4"> ④ 민주평화당 </label><br>
		    <label for="u5"><input type="radio" id="u5" name="radio8" value="s5"> ⑤ 정의당 </label><br>
		    <label for="u6"><input type="radio" id="u6" name="radio8" value="s6"> ⑥ 기타정당</label><br>
		    <label for="u7"><input type="radio" id="u7" name="radio8" value="s7"> ⑦ 지지정당이 없다</label><br>
		    <label for="u8"><input type="radio" id="u8" name="radio8" value="s8"> ⑧ 잘 모르겠다</label><br>
		</div>
		<center><input type="submit" class="button button2" value="제출하기"></input></center>
   </fieldset>
</div>
</form>
</body>
</html>