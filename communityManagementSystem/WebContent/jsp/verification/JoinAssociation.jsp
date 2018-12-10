<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3;url=jsp/AssOfMathInformationSocieties/AssMathInfSocieties.jsp">
<title>Insert title here</title>
<script type="text/javascript">
function info() {
//循环执行,1秒执行一次
window.setInterval("daojishi()", 1000);
}
function daojishi() {
if(document.getElementById("msg").innerHTML!=1){
document.getElementById("msg").innerHTML=document.getElementById("msg").innerHTML-1;
}
}
</script>
</head>
<body onload="info()" >	
<div style=" text-align:center">加入协会成功,<span id="msg">3</span>秒返回社团页面</div>
<div style=" text-align:center"><a href="jsp/AssOfMathInformationSocieties/AssMathInfSocieties.jsp">点击立即返回</a></div>
</body>
</html>
