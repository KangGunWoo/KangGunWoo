<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<c:if test='${joinResult==1}'> 
<script>

function add(){
	alert("가입완료"); // 경고창
	location.href="home.do"
}
</script>
</c:if>







<body onload = "add()">
</body>
</html>