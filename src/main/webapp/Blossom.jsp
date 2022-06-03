<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.List"%>
<%@page import="com.exam.dto.WriteDto"%>
<%@page import="com.exam.dao.WriteDao"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@page import="com.exam.controller.WriteController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width", initial-scale="1">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
<style>
     * {font-size: 9pt;
        	margin: 0 auto;
        	padding:10px 10px;
        	text-decoration: none;
        	
        
        }

.row{
position:absolute;
    left: 55%;
}
        p {width: 600px; text-align: right;}

        table thead tr th {background-color: #dfdfdf;}
        
        .wrap{
            height: 100%;
    width: 1080px;
        position:absolute;
        }
        .write{
        position:relative;

        width:50px;
        padding-top:5px;
        height:20px;
        
        }
        .C1{
    width: 510px;
    height: 140px;
    background-color: red;
    position: absolute;
       top: 80px;
    left: 30px;
  	background-image:url('Sonny/images/aqua.gif');
  		 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
        }
        .C2{
            width: 510px;
    height: 140px;
    background-color: red;
    position: absolute;
    top: 255px;
    left: 30px;
  	background-image:url('Sonny/images/blossom.gif');
  		 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
        }
        
        .her2{
            width: 1080px;
    height: 1000px;
    background-color: red;
    position: relative;
    bottom: 500px;
    right: 300px;}
        
        .her{
            font-size: 20pt;
    margin: 0 auto;
    padding: 10px 10px;
    text-decoration: none;
    font-family: emoji;
    display:none;
    color: pink;
    }
   
        .C2:hover .her{
        transition:0.9s;
         display:block;

        }

        
                .C3{
            width: 510px;
    height: 140px;
    background-color: red;
    position: absolute;
    top: 430px;
    left: 30px;
  	background-image:url('Sonny/images/tirano.gif');
  		 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
        }
        
                        .C4{
            width: 510px;
    height: 140px;
    background-color: red;
    position: absolute;
    top: 605px;
    left: 30px;
  	background-image:url('Sonny/images/scream.gif');
  		 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
        }
</style>

</head>
<body>
 




	<div class="wrap">
	<div class="table">

	<div class="container">
		<div class="row">
		
			<form method="post" action="Write.do">
				<table class="table table-striped" style="border: 1px solid #dddddd; width: 550px; height:700px;">
				
					<thead>
						<tr>
						
							<th colspan="10" style="background-color: #fd5258;">시나리오 선택</th>
						
										<div class="C1"></div>

										<div class="C2"> <a href="blossom2.jsp"><div class="her">그녀를 위해서...</div></a></div>
										
										<div class="C3"></div>	
												<div class="C4"></div>	
						
						</tr>
				
					</thead>
					<tbody>
		
						<tr>
									<td class="form-control" style="width:500px; height:680px;">${con }</td>
						
						</tr>
			
					</tbody>
						
				</table>

	
			</form>

		</div>
	</div>

	</div>
	</div>
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>