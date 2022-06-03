<%@page import="com.exam.dao.MycartDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE HTML>

<head>

	<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Tottenham ShoppingMall</title>

	<!-- Latest compiled and minified CSS -->

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

	<!-- Google Font -->

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" type="text/css">

    <!-- Theme Stylesheet -->


    <link rel="stylesheet" href="Sonny/css/style.css">

    <link rel="stylesheet" href="Sonny/css/responsive.css">
<style>
.Sce{
min-width:200px;
position:absolute;
left:1600px;

}

.last{
display:contents;
}


#Xbox4{
	width:25px;
	height:25px;
    position: absolute;
    right:0px;
}

#kan2{
height:220px;}
.Kane{
    width: 275px;
    height: 220px;
    min-width: 200px;
    position: relative;
    top: 20px;
}

.bts {
    display: contents;
    margin-bottom: 0;
    font-size: 18px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}



.product-hover ul li a {
    color: #fff;
    background: radial-gradient(#0b0eb1e, transparent);
    padding: 8px;
    font-size: 15pt;
}


.product-description {
   background: white;
}
.header {
	background-image:url('Sonny/images/bgt.jpg');
	opacity:0.94;
	height:300px;
	 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
    min-height: 200px;
}

#Soon {
background-image:url('Sonny/images/small-11.jpg');
}
#Soon:hover {
transition:0.5s;
background-image:url('Sonny/images/son2.jpg');
}



@-webkit-keyframes itema {
  0% {
    margin-left:360px;
  }
  100% {
    margin-left:-360px;
  }
}



</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">


$(function(){
	  $('#Xbox').click(function(){
	    $('#Xbox').hide();
	    $('#sonn').hide();
	  });
	});
	
	
	
$(function(){
	  $('#Xbox2').click(function(){
	    $('#Xbox2').hide();
	    $('#sonn2').hide();
	  });
	});
$(function(){
	  $('#Xbox3').click(function(){
	    $('#Xbox3').hide();
	    $('#sonn3').hide();
	  });
	});
$(function(){
	  $('#Xbox4').click(function(){
	    $('#Xbox4').hide();
	    $('#Kan2').hide();
	  });
	});
	
$(function(){
	  $('.logout').click(function(){
	alert("로그아웃 성공")
	  });
	});
	
$(function(){
		<c:if test='${sessionID!=null}'> 
		  $('.Mca').click(function(){
		    alert("장바구니 추가")
		    </c:if> 
	  });
	});

</script>

</head>

<body>





    <div class="top-bar">

        <div class="container">

            <div class="row">

                <div class="col-md-6">

           

                </div>

                <div class="col-md-6">

                    <div class="action pull-right">

                        <ul>

<c:if test='${sessionID==null}'> 
<li><a href="login.do"><i class="fa fa-user"></i> ${sessionID}님 로그인</a></li>
</c:if> 





<c:if test="${sessionID!=null}">
<li><a href="Mycart.do"><i class="fa fa-user"></i> ${sessionID}님 찜 상품</a></li>
<li><a href="Mycart.do"><i class="fa fa-user"></i> 마이페이지</a></li>

<li><a class="logout" href="logout.do"><i class="fa fa-user"></i> 로그아웃</a></li>
</c:if> 







                            <li><a href="join.do"><i class="fa fa-lock"></i> 회원가입</a></li>

                        </ul>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="header" style="">

        <div class="container">

            <div class="row">

                <div class="col-md-3 col-sm-4">

                    <div class="logo">

                        <a href="index.html">

               

                        </a>

                    </div>

                </div>

                <div class="col-md-7 col-sm-5">

                    <div class="search-form">

                    
                    </div>

                </div>

                <div class="col-md-2 col-sm-3">

                  

                </div>

            </div>

        </div>

    </div>

    <div class="navigation">
    
    
    
    

        <nav class="navbar navbar-theme">

          <div class="container">
          
          
     
          
          

            <!-- Brand and toggle get grouped for better mobile display -->

            <div class="navbar-header">

              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">

                <span class="sr-only">Menu</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

              </button>

            </div>

            <div class="shop-category nav navbar-nav navbar-left">

                <!-- Single button -->

                <div class="btn-group">

                  <button type="button" class="btn btn-shop-category dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                    전체 <span class="caret"></span>

                  </button>

                  <ul class="dropdown-menu">

                    <li><a href="">남성용</a></li>

                    <li><a href="">여성용</a></li>

                    <li><a href="">유아용</a></li>

                    <li role="separator" class="divider"></li>

                    <li><a href="">상의</a></li>

                    <li><a href="">하의</a></li>

                  </ul>

                </div>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->

            <div class="collapse navbar-collapse" id="navbar">
            
          

              <ul class="nav navbar-nav navbar-right">

                <li><a href="https://www.tottenhamhotspur.com/kr/">구단홈</a></li>

                <li><a href="https://twitter.com/SpursOfficial">블로그</a></li>

                <li><a href="#">선수별</a></li>

                <li><a href="#">유니폼</a></li>

                <li><a href="#">축구화</a></li>

                <li><a href="#">안내</a></li>

                <li><a href="Board.do">문의</a></li>
                
                <li class="bta"><a href="#"><button  class="bts" type="text"><i id="fafa" class="fa fa-search"></i></button></a>                
                <li>   <form action=""><input class="inp" type="text" placeholder="검색" name="search">
   </form></li></li>

		
              </ul>
              
              
              

            </div><!-- /.navbar-collapse -->

          </div><!-- /.container-fluid -->

        </nav>

    </div>

    <div class="slider">
<div id="LT"><img src="Sonny/images/LT.PNG"></div>
<div id="superson"><img id="sonn" src="Sonny/images/super.gif"><a href="#"><img id="Xbox" src="Sonny/images/X.png"></a></div>

<div id="superson"><img id="sonn3" src="Sonny/images/sss2.gif"><img id="Xbox3" src="Sonny/images/X.png"></div>
<div id="superson"><img id="sonn2" src="Sonny/images/sss1.gif"><img id="Xbox2" src="Sonny/images/X.png"></div>
        <div class="container">
       
        <div class="container">

            <div class="row">
            <div class="Sce"><img id="Kan" src="Sonny/images/Sce.PNG">
            
            <div class="Kane"><img id="Kan2" src="Sonny/images/Kane.gif"><img id="Xbox4" src="Sonny/images/X.png"></div>
            </div>

                <div class="col-md-8 col-sm-8">

                    <div class="slider big-slider">

                        <div id="featured" class="carousel slide" data-ride="carousel">

                          <!-- Indicators -->

                          <ol class="carousel-indicators">

                            <li data-target="#featured" data-slide-to="0" class="active"></li>

                          </ol>



                          <!-- Wrapper for slides -->

                <div class="carousel-inner" role="listbox">

                            <div class="item active" id="Soon" style="">

                               <div class="carousel-caption">

                    

                                    <a href="" class="btn btn-theme">바로구매</a>

                                </div>

                            </div>

                          </div>

                        </div>

                    </div>

                </div>

                <div class="col-md-4 col-sm-4">

                    <div class="slider small-slider">

                        <div id="small-featured" class="carousel slide" data-ride="carousel">

                          <!-- Indicators -->

                          <ol class="carousel-indicators">

                            <li data-target="#small-featured" data-slide-to="0" class="active"></li>

                          </ol>



                          <!-- Wrapper for slides -->

                          <div class="carousel-inner" role="listbox">

                            <div class="item active" style="background-image:url('Sonny/images/slider-1.jpg')">
 				
                               <div class="carousel-caption">

                 

                                    <a href="" class="btn btn-theme">바로구매</a>

                                </div>
	 <div id="itema"></div>


                            </div>

                          </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="banner">

        <div class="container">

            <div class="row">

                <div class="col-md-4 col-sm-4">

                    <div class="single-banner" style="background-image:url(Sonny/images/banner-0.jpg)">
 

                       <div class="banner-caption">

                     

                            <a href="" class="btn btn-theme">바로구매</a>

                        </div>

                    </div>

                </div>

                <div class="col-md-4 col-sm-4">

                    <div class="single-banner" style="background-image:url(Sonny/images/banner-2.jpg)">

                       <div class="banner-caption">

                  

                            <a href="" class="btn btn-theme">바로구매</a>

                        </div>

                    </div>

                </div>

                <div class="col-md-4 col-sm-4">

                    <div class="single-banner" style="background-image:url(Sonny/images/banner-3.jpg)">

                       <div class="banner-caption">

               

                            <a href="" class="btn btn-theme">바로구매</a>
                    <div id="Movie"></div>

                        </div>

                    </div>

                </div>

            </div>

        </div>
        
    </div>


    <div class="popular-items">

        <div class="container" >

            <div class="row">

                <ul class="nav nav-tabs nav-product-tabs">

                    <li class="active"><a href="#popular" data-toggle="tab">인기제품</a></li>

                    <li><a href="#special" data-toggle="tab">베스트</a></li>

                    <li><a href="#price" data-toggle="tab">할인가</a></li>

                    <li class="pull-right collection-url"><a href="">전체제품 보기 <i class="fa fa-long-arrow-right"></i></a></li>

                </ul>

                <div class="tab-content">

                    <div class="tab-pane active" id="popular">

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-16.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">

                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">27,800원</span><span>17,800원</span></p>
                                   

                                    </div>

                                    <div class="product-hover">

                                        <ul>

                                            <li id="MC" class="Mca">
                                            <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-16.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="17000">
                                          </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-15.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">

                                        <p class="title">이달의 인기제품</p>

                                  <p class="price"><span class="sale">22,800원</span><span>15,800원</span></p>

                                    </div>
      
                                    <div class="product-hover">

                                        <ul>
                         <li id="MC" class="Mca">
                                            <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-15.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="15800">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-14.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">
                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">29,000원</span><span>21,800원</span></p>

                                    </div>

                                    <div class="product-hover">

                                        <ul>
								<li id="MC" class="Mca">
                                          <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-14.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="21800">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-13.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">
                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">41,800원</span><span>33,000원</span></p>

                                    </div>

                                    <div class="product-hover">

                                        <ul>

                                           		<li id="MC" class="Mca">
                                          <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-13.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="33000">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-12.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">
                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">75,000원</span><span>62,000원</span></p>

                                    </div>

                                    <div class="product-hover">

                                        <ul>

		<li id="MC" class="Mca">
                                          <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-12.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="62000">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-11.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">
                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">14,800원</span><span>9,500원</span></p>
                                    </div>

                                    <div class="product-hover">

                                        <ul>
		<li id="MC" class="Mca">
                                          <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-11.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="9500">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-10.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">

                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">35,000원</span><span>25,000원</span></p>

                                    </div>

                                    <div class="product-hover">

                                        <ul>

   		<li id="MC" class="Mca">
                                          <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-10.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="25000">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-3 col-sm-4">

                            <div class="single-product">

                                <div class="product-block">

                                    <img src="Sonny/images/product-9.jpg" alt="" class="thumbnail">

                                    <div class="product-description text-center">

                                        <p class="title">이달의 인기제품</p>

                                        <p class="price"><span class="sale">20,000원</span><span>14,000원</span></p>

                                    </div>

                                    <div class="product-hover">

                                        <ul>
		<li id="MC" class="Mca">
                                          <form name="frmLogin" method="post" action="Cart.do" enctype="UTF-8">
                                            <a><button style="width: 30px; background: none; border:none;" type="submit"  i class="fa fa-cart-arrow-down"></button>
                                                  <input type="hidden" name="img" value="Sonny/images/product-9.jpg">
      										  <input type="hidden" name="title" value="이달의 인기제품">
       						 				<input type="hidden" name="price" value="14000">
                                            </a></form></li>

                                            <li><a href=""><i class="fa fa-arrows-h"></i></a></li>

                                            <li><a href=""><i class="fa fa-heart-o"></i></a></li>

                                        </ul>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="tab-pane fade" id="special">

                        <div class="col-md-3 col-sm-4">



        </div>

    </div>

    <div class="blog">

        <div class="container">

            <div class="row">

                <div class="blog-title">

                    <h2 class="pull-left text-left">블로그 리뷰글 보기</h2>

                    <a href="" class="pull-right text-right">다른글 보기 <i class="fa fa-long-arrow-right"></i></a>

                </div>

                <div class="clearfix"></div>

                <div class="col-md-4 col-sm-4">

                    <div class="single-post">

                        <div class="post-inner">

                            <div class="post-thumbnail">

                                <img src="Sonny/images/post-1.jpg" alt="">

                                <a href="" class="read-more raleway">읽기 <i class="fa fa-long-arrow-right"></i>

                                </a>

                            </div>

              

                        </div>

                    </div>

                </div>

                <div class="col-md-4 col-sm-4">

                   <div class="single-post">

                        <div class="post-inner">

                            <div class="post-thumbnail">

                                <img src="Sonny/images/post-2.jpg" alt="">
                               

                                <a href="" class="read-more raleway">
                                    읽기 <i class="fa fa-long-arrow-right"></i>

                                </a>

                            </div>

          

                        </div>

                    </div>

                </div>

                <div class="col-md-4 col-sm-4">

                    <div class="single-post">

                        <div class="post-inner">

                            <div class="post-thumbnail">

                                <img src="Sonny/images/post-3.jpg" alt="">


                                <a href="" class="read-more raleway">
                                    읽기 <i class="fa fa-long-arrow-right"></i>

                                </a>

                            </div>


                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
<div id="footerup">
    <div class="footer">

        <div class="container">

            <div class="row">

                <div class="col-md-3 col-sm-3">

                    <div class="single-widget">

                        <h2 class="widget-title">쇼핑몰 정보</h2>

                        <div class="widget-inner">

                            <p>Office: GwangJu</p>

                            <p>Phone: 010 3453 2046</p>

                            <p>Fax: 062 625 2046</p>

                            <p>Email: kgw11723@naver.com</p>

             

                        </div>

                    </div>

                </div>

                <div class="col-md-3 col-sm-3">

                    <div class="single-widget">

                        <h2 class="widget-title">정보</h2>

                        <div class="widget-inner">

                            <ul>

                                <li><a href="">자주하는 질문</a></li>

                                <li><a href="">정보 사항</a></li>

                                <li><a href="">보안 정책</a></li>

                                <li><a href="">고객 서비스</a></li>

                                <li><a href="">배송 정보</a></li>

                                <li><a href="">구성품</a></li>

                            </ul>

                        </div>

                    </div>

                </div>

                <div class="col-md-3 col-sm-3">

                    <div class="single-widget">

                        <h2 class="widget-title">문의사항</h2>

                        <div class="widget-inner">

                            <ul>

                                <li><a href="">불만사항</a></li>

                                <li><a href="">사이트 정보</a></li>

                                <li><a href="">할인안내</a></li>

                                <li><a href="">실시간 문의</a></li>

                            </ul>

                        </div>

                    </div>

                </div>

                <div class="col-md-3 col-sm-3">

                    <div class="single-widget">

                        <h2 class="widget-title">서비스 내용</h2>

                        <div class="widget-inner">

                            <ul>

                                <li><a href="">반품안내</a></li>

                                <li><a href="">안전사항</a></li>

                                <li><a href="">국제배송</a></li>

                                <li><a href="">제휴사이트</a></li>

                                <li><a href="">연락</a></li>

                            </ul>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</div>
    <div class="copyright text-center">

        <div class="container">

            <div class="row">

                <p class="copyright"> Project by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">Me</a>
</p>

            </div>

        </div>

    </div>







	<!-- jQuery Library -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Script -->

	<script src="Sonny/js/script.js"></script>

</body>

</html>