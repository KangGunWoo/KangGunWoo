<%@page import="com.exam.dao.MycartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width-device-width", initial-scale="1">

<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
<style>
     * {font-size: 9pt;
        	margin: 0 auto;
        	padding:10px 10px;
        	text-decoration: none;
        	
        
        }

        p {width: 600px; text-align: right;}

        table thead tr th {background-color: #dfdfdf;}
        
        .wrap{
        width:100%
        position:absolute;
        }
        .write{
        position:relative;
        margin-left:23%;
        }
        
</style>
</head>
<body>
	
	<!-- 네비게이션 영역 끝 -->
	<div class="wrap">
	<div class="table">
	<!-- 게시판 글쓰기 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<form method="post" action="BoardUpdate.do">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="10" style="background-color: #fd5258; text-align: center;">게시판 글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" name="reTit" maxlength="50" value="${tit }" style="width:500px; "></td>
						</tr>
						<tr>
							<td><textarea class="form-control" name="reConte" maxlength="2048" style="height: 400px; width:500px;'">${con }</textarea></td>
						
						</tr>
				
					</tbody>
						
				</table>

		<div class="write"><input type="submit" class="btn btn-primary pull-right" value="수정완료"></div>
			</form>
			
		</div>
	</div>

	</div>
	</div>
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>