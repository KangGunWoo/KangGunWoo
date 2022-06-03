<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.List"%>
<%@page import="com.exam.dto.MycartDto"%>
<%@page import="com.exam.dao.MycartDao"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@page import="com.exam.controller.CartController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>order</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript" ></script>

<style>

#coded{
display: block;
    background-color: white;
    border: white;
}


body{min-height: 100vh;
background-image:url('Sonny/images/totlogo.png');
	 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
    
    vertical-align: middle;
    display: flex;
    font-family: 'raleway', sans-serif;
    font-size: 0.8rem;
    font-weight: bold;
}
.title{
    margin-bottom: 5vh;
}
.card{
    margin: auto;
    width: 100%;
    box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius: 1rem;
    border: transparent;
}
@media(max-width:767px){
    .card{
        margin: 3vh auto;
    }
}
.cart{
    background-color: #fff;
    padding: 4vh 5vh;
    border-bottom-left-radius: 1rem;
    border-top-left-radius: 1rem;
}
@media(max-width:767px){
    .cart{
        padding: 4vh;
        border-bottom-left-radius: unset;
        border-top-right-radius: 1rem;
    }
}
.summary{
    background-color: #ddd;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;
    padding: 4vh;
    color: rgb(65, 65, 65);
}
@media(max-width:767px){
    .summary{
    border-top-right-radius: unset;
    border-bottom-left-radius: 1rem;
    }
}
.summary .col-2{
    padding: 0;
}
.summary .col-10
{
    padding: 0;
}.row{
    margin: 10px;
}
.title b{
    font-size: 1.5rem;
    float:left;
}
.main{
    margin: 0;
    padding: 2vh 0;
    width: 100%;
}
.col-2, .col{
    padding: 0 1vh;

}W
a{
    padding: 0 1vh;
}
.close{
    margin-left: auto;
    font-size: 0.7rem;
}
img{
    width: 6.5rem;
}
.back-to-shop{
    margin-top: 4.5rem;
}
h5{
    margin-top: 4vh;
}
hr{
    margin-top: 1.25rem;
}
form{
    padding: 2vh 0;
}
select{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1.5vh 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input:focus::-webkit-input-placeholder
{
      color:transparent;
}
.btn{
    background-color: #000;
    border-color: #000;
    color: white;
    width: 100%;
    font-size: 0.7rem;
    margin-top: 4vh;
    padding: 1vh;
    border-radius: 0;
}
.btn:hover{
cursor: pointer;
}

.btn:focus{
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none; 
}
.btn:hover{
    color: white;
}
a{
    color: black; 
}
a:hover{
    color: black;
    text-decoration: none;
}
.dlt, .dlt3:hover{
cursor: pointer;}

.dlt{
background-color: #000;
    border-color: #000;
    color: white;
    font-size: 0.7rem;
    margin-left: 4vh;
    padding: 1vh;
    border-radius: 0;
    
}
.dlt2{
background-color: #000;
    border-color: #000;
    color: white;
    font-size: 0.7rem;
    padding: 0.5vh;
    border-radius: 5px;
    
}
.dlt3{
float:right;
background-color: #000;
    border-color: #000;
    color: white;
    font-size: 0.7rem;
    margin-left: 4vh;
    padding: 1vh;
    border-radius: 0;
    
}
 #code{
    background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253) , rgba(255, 255, 255, 0.185)), url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
    background-repeat: no-repeat;
    background-position-x: 95%;
    background-position-y: center;
}
#order{
cursor: pointer;
}
.car{
width:150px;
float:left;
}
.hidden{
display: none;}

</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
$(function(){

	  $('.dlt').click(function(){
	    alert("찜 전체 삭제")
	  
});
});



</script>
</head>
<body>

<%
MycartDao cartDao = MycartDao.getInstance();
List<MycartDto> list = cartDao.selectList();
int ab = 0;
int abc=0;
for(int i=0; i<list.size(); i++){
abc += Integer.parseInt(list.get(i).getPrice());
}
%>

<div class="card">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>${sessionID}님의 찜상품</b></h4></div>
                        <div><form action="Delete.do" method="POST"><button type="submit" class="dlt">찜 전부 삭제</button></form></div>
                         <div><form action="home.do" method="POST"><button type="submit" class="dlt3">홈 화면</button></form></div>
                         
                        </div>
                    </div>    
                           <div class="row border-top border-bottom">
                        <div class="row main align-items-center">
  



	
               <c:if test="<%=list.size()>=1 %>">
	        <c:forEach begin="1" end="<%=list.size()%>" var="i">
	  						
              				 <div class="car" id="car<%=ab%>">
                            <div class="col-2"><img class="img-fluid" src="<%=list.get(ab).getImg()%>"></div>
                            <div class="col">
                                <div class="row text-muted"><%=list.get(ab).getTitle()%></div>
                                <div class="row"><%=list.get(ab).getPrice()%>원 <%ab+=1; %>
                             <div><form action="DeletePer.do" method="POST"><button type="submit" name="ab" value="<%=ab-1 %>" class="dlt2">찜 삭제</button></form></div>
                                     </div>
                      

                                     
                          
                           </div>
                            </div>
                         
                         
                              </c:forEach>
                            	     
                   </c:if> 
               
 <input id="coded" placeholder="">
                   <div class="part"> </div>
                    <div><h5><b>주문사항</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="">주문 품목 수 : <%=list.size() %></div>
                        <div class="col text-right">총 가격 : <%=abc %>원</div>
                    </div>
                    <form>
                        <p>배송료(5만원 이상 무료)</p>
                    <c:if test="<%=abc<50000 %>">
                    <%=abc=abc+3000 %>
                        <select><option class="text-muted">3000원</option></select>
                             </c:if> 
                              <c:if test="<%=abc>=50000 %>">
                        <select><option class="text-muted">0원</option></select>
                             </c:if> 
                        <p>요청사항</p>
                        <input id="code" placeholder="요청사항">
                        
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">결제금액</div>
                        <div class="col text-right"><%=abc %>원</div>
                    </div>
         <button id="check_module" class="btn" type="button">주문</button>
                </div>
            </div>
           
        </div>




<script>
$("#check_module").click(function () {
var IMP = window.IMP; // 생략가능
IMP.init("imp99151903");
// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
IMP.request_pay({
pg: 'inicis', // version 1.1.0부터 지원.
/*
'kakao':카카오페이,
html5_inicis':이니시스(웹표준결제)
'nice':나이스페이
'jtnet':제이티넷
'uplus':LG유플러스
'danal':다날
'payco':페이코
'syrup':시럽페이
'paypal':페이팔
*/
pay_method: 'card',
/*
'samsung':삼성페이,
'card':신용카드,
'trans':실시간계좌이체,
'vbank':가상계좌,
'phone':휴대폰소액결제
*/
merchant_uid: 'merchant_' + new Date().getTime(),
/*
merchant_uid에 경우
https://docs.iamport.kr/implementation/payment
위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
참고하세요.
나중에 포스팅 해볼게요.
*/
name: '주문명:결제테스트',
//결제창에서 보여질 이름
amount:<%=abc%>,
//가격
buyer_email: 'iamport@siot.do',
buyer_name: '구매자이름',
buyer_tel: '010-1234-5678',
buyer_addr: '서울특별시 강남구 삼성동',
buyer_postcode: '123-456',
m_redirect_url: 'https://www.yourdomain.com/payments/complete'
/*
모바일 결제시,
결제가 끝나고 랜딩되는 URL을 지정
(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
*/
}, function (rsp) {
console.log(rsp);
if (rsp.success) {
var msg = '결제가 완료되었습니다.';
msg += '고유ID : ' + rsp.imp_uid;
msg += '상점 거래ID : ' + rsp.merchant_uid;
msg += '결제 금액 : ' + rsp.paid_amount;
msg += '카드 승인번호 : ' + rsp.apply_num;
} else {
var msg = '결제에 실패하였습니다.';
msg += '에러내용 : ' + rsp.error_msg;
}
alert(msg);
});
});
</script>


</body>
</html>