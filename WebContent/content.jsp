<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/lib/w3.css">
<title>Insert title here</title>
<style>
.mySlides {display:none;}
</style>
</head>
<body>
<br><br><br>
<center>
<iframe width="560" height="315" src="https://www.youtube.com/embed/YiDd369Vbd8"  frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
<br><br><div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="img/1.jpg" style="width:100%">
  <img class="mySlides" src="img/2.jpg" style="width:100%">
  <img class="mySlides" src="img/3.jpg" style="width:100%">
  <img class="mySlides" src="img/4.jpg" style="width:100%">
</div>
<br><br><br>
<figure><a href="http://www.nec.go.kr/portal/main.do"><img src="img/55.png"></a><figcaption> ▲ 중앙선거관리위원회 홈페이지 바로가기</figcaption></figure>

</center>
<script>
var myIndex = 0;
carousel();
function carousel() {
    var i;
    var a = 10;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 2 seconds
}
</script>

</body>
</html>