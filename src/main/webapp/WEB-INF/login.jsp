

<%@page import="com.exam.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LogIn</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>

    .container {
        
        position:absolute;
            width: 589px;
            height:832px;
            margin: 40px auto;
            line-height: 50px;
           top:-2%;

        }

h5 {
	text-align: center;
}

h5 span {
	color: teal;
}

.login {
	background-color: #0b0e1e;
	color: white;
	border-radius: 5px;
	border: 0;
	padding: 10px 172px;
}

#signup {
	background-color: white;
	color: teal;
	border: 0;
	font-size: 17px;
}

p {
	text-align: center;
}

i {
	color: lightgray;
}

#imail {
	position: absolute;
	top: 130px;
	margin: 0 355px;
}

#ipw {
	position: absolute;
	top: 180px;
	margin: 0 355px;
}

input {
	border: 1px solid lightgray;
	border-radius: 3px;
}
</style>
</head>

<body>



<div style="position: fixed; z-index: -99; width: 100%; height: 100%">

<iframe frameborder="0" height="100%" width="100%" 
 src="https://www.youtube.com/embed/VXznaWl2iSw?autoplay=1&amp:loop=1" allow="autoplay; encrypted-media" allowfullscreen>
</iframe>

</div>


	<div class="container">
  
  
        <hr />
        
        
      <form action="login.do" method="post">
            <input type="text" placeholder="아이디" name="id" required style="height:30px; width: 380px" /><br />
            <input type="password" placeholder="비밀번호" name="pw" required style="height:30px; width: 380px" /><br />
            <input type="submit" value="로그인" class="login" />
            <button onclick="location.href='home.do';" class="login" >HOME</button>
        </form>
        <hr />
      

    </div>

</body>
</html>