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

        p {width: 600px; text-align: right;}

        table thead tr th {background-color: #dfdfdf;}
        
        .wrap{
        width:100%
        position:absolute;
        }
        .write{
        position:relative;
	float:left;
        width:50px;
        padding-top:5px;
        height:20px;
        
        }
        .list{
        position:relative;
            left: 43%;
        }
</style>
</head>
<body>
    <%
WriteDao writeDao = WriteDao.getInstance();
List<WriteDto> listt = writeDao.selectList();


 %>




	<!-- 네비게이션 영역 끝 -->
	<div class="wrap">
	<div class="table">
	<!-- 게시판 글쓰기 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<form method="post" action="Write.do">
				<table class="table table-striped" style="border: 1px solid #dddddd;">
					<thead>
						<tr>
							<th colspan="10" style="background-color: #fd5258;">내가 쓴 글</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<td class="form-control" style="width:500px; border-bottom: 1px solid black;">제목 : ${tit }</td>
						</tr>
						<tr>
									<td class="form-control" style="width:500px; height:500px;">${con }</td>
						
						</tr>
				
					</tbody>
						
				</table>

	
			</form>
			<div class="list">
				<div class="write"><a href="Board.do">목록</a></div>
								<div class="write"><a href="BoardUpdate.do">수정</a></div>
		<div class="write"><a href="BoardDelete.do">삭제</a></div>
		</div>
		</div>
	</div>

	</div>
	</div>
	

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>