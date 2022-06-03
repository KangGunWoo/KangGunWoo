<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.List"%>
<%@page import="com.exam.dto.WriteDto"%>
<%@page import="com.exam.dao.WriteDao"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@page import="com.exam.controller.WriteController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 

            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>

    <title>게시판 목록</title>

    <!-- CSS 영역 -->

    <style type="text/css">

        * {font-size: 9pt;
        	margin: 0 auto;
        	padding:10px 10px;
        	text-decoration: none;
        	
        
        }

        p {width: 600px; text-align: right;}

        table thead tr th {background-color: #fd5258;}
        
        .wrap{
        width:100%
        }
        .view{
        background:none;
        border:none
        }
        .view:hover {
	cursor: pointer;
}
.search{
border:4px solid #fd5258;
}
.searc{
border:4px solid #fd5258;
background: #fd5258;
}
#sear{
background: #fd5258;}
.que{
font-size: 16px;
font-weight: bold;

}
.page{
text-align: center;
}
    </style>

    <!-- //CSS 영역 -->

    <!-- 자바스크립트 영역 -->

    <script type="text/javascript">

        function goUrl(url) {

           location.href=url;

          {
			
		}
        }

    </script>



    </head>

    <body>
    <%
WriteDao writeDao = WriteDao.getInstance();
List<WriteDto> listt = writeDao.selectList();
int ab=0;
int pnum= 1;

%>
    
    
    
<div class="wrap">

<div class="table">
       <form name="searchForm" action="" method="get">

       <p>

           <select class="search" name="searchType">

               <option value="ALL">전체검색</option>

               <option value="SUBJECT">제목</option>

               <option value="WRITER">작성자</option>

               <option value="CONTENTS">내용</option>

           </select>

           <input class="search" type="text" name="searchText" value="" />

           <input class="search" id="sear" type="submit" value="검색" />

       </p>

       </form>

  

       <table summary="게시판 목록">

           <caption class="que">문의 사항</caption>

           <colgroup>

               <col width="50" />

               <col width="300" />

               <col width="80" />

               <col width="100" />

               <col width="70" />

           </colgroup>  

           <thead>

               <tr>

                    <th>번호</th>

                    <th>제목</th>

                    <th>작성자</th>

                    <th>작성일</th>

                    <th>조회수</th>

               </tr>

           </thead>

           <tbody>
     <c:if test="<%=listt.size()==0  %>">
          <td align="center" colspan="5">등록된 게시물이 없습니다.</td>
             </c:if> 
             
                  <c:if test="<%=listt.size()>0 %>">
            <c:forEach begin="1" end="<%=listt.size()%>" var="i">
               <tr>

                    <td align="center"><%=listt.get(ab).getIdx() %></td>
				
                   <td align="center"><form action="boardView.do"><input type="hidden" name="Idx" value="<%=listt.get(ab).getIdx()%>"><input type="hidden" name="Con" value="<%=listt.get(ab).getContent()%>"><input type="hidden" name="Tit" value="<%=listt.get(ab).getTitle() %>"><input class="view" type="submit" value="<%=listt.get(ab).getTitle() %>"></input></input></input></input></form></td>
					
                    <td align="center"><%=listt.get(ab).getWriter() %></td>

                    <td align="center"><%=listt.get(ab).getData() %></td>

                    <td align="center"><%=listt.get(ab).getHit() %></td>
<%ab+=1; 
if(session.getAttribute("sessionID")==null){
	ab=0;
}
%>
               </tr>

               

               </tr>
          </c:forEach>
                            	     
                   </c:if> 
           
           </tbody>

           <tfoot>

               <tr>
				
    

               </tr>

           </tfoot>

       </table>

<div class="page"><a href="#"><a href="#"><</a><a href="#"><%=pnum %></a><a href="#"><%=pnum+1 %></a><a href="#"><%=pnum+2 %></a><a href="#"><%=pnum+3 %></a><a href="#"><%=pnum+4 %></a><a href="#">></a></div>
       <p>

           <input type="button" class="searc" value="목록" onclick="goUrl('Board.do');" />

	<% 
		if(session.getAttribute("sessionID") != null){
			 %>
		 <input type="button" class="searc" " value="글쓰기" onclick="goUrl('boardlist.do');" />

<% }%>
       </p>

</div></div>
    </body>

    </html>

 