

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
    <title>SignUp</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>

    
        .container {
        
        position:absolute;
            width: 589px;
            height:832px;
            margin: 40px auto;
            line-height: 16px;
            top:-2%;

        }
        h5 {
            text-align: center;
        }
        h5 span {
            color: teal;
        }
        .n {
            font-size: 13px;
        }
        #signup {
            border-right: 1px solid #0b0e1e;
            background-color: #0b0e1e;
            color: white;
            border: 0;
            border-radius: 5px;
            padding: 10px 150px;

            
        }
        .bottom input {
        
            background-color: white;
            border: 0;
            color: teal;
            font-size: 16px;
        }
        i {
            color: lightgray;
        }
        #imail {
            position: absolute;
            top: 110px;
            margin: 0 470px;
        }
        #iperson1 {
        top:50px;
            position: absolute;
            top: 160px;
            margin: 0 470px;
        }
        #iperson2 {
            position: absolute;
            top: 210px;
            margin: 0 470px;
        }
        #ipw {
            position: absolute;
            top: 260px;
            margin: 0 470px;
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
 src="https://www.youtube.com/embed/?1rel=0&loop=1&playlist=ae8JCs2tRmg&autoplay=1" allow="autoplay; encrypted-media" allowfullscreen>
</iframe>

</div>

    <div class="container">

    <div class=cont>



        <form action="join.do" method="post" >
            <input type="text" placeholder="아이디" name="id" required style="height:30px; width: 350px" /><br /><br />
            <input type="password" placeholder="비밀번호" name="pw" required style="height:30px; width: 350px" /><br /><br />
            <input type="email" placeholder="이메일 주소" name="email" required style="height:30px; width: 350px" /><br /><br />
            <input type="text" placeholder="이름" name="name" required style="height:30px; width: 350px" /><br />
            <p>
            <input type="submit" value="간편가입" id="signup" /><br /><br />
            </p>

        </form>

        
        <hr />
        </div>
    </div>
</body>
</html>