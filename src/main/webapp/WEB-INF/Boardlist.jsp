<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        position:absolute;
       left:30%;
        }
        .write{
        position:relative;
       
        }
        
</style>
</head>
<body>
	

	<div class="wrap">
	<div class="table">

	<div class="container">
		<div class="row">
			<form method="post" action="Write.do">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="10" style="background-color: #fd5258; text-align: center;">${sessionID}님의 글</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="글 제목" name="Tit" maxlength="50" style="width:500px;"></td>
							<input type="hidden" name="writer" value="${sessionID}">
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용" name="Conte" maxlength="2048" style="height: 400px; width:500px;'"></textarea></td>
							
						</tr>
				
					</tbody>
						
				</table>

		<div class="write"><input style="background-color:#fd5258; border:#fd5258; border-radious:20px;" type="submit" class="btn btn-primary pull-right" value="글쓰기"></div>
			</form>
			
		</div>
	</div>

	</div>
	</div>
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>