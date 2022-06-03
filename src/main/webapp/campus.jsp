<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="jquery.fittext.js"></script>
<script>
  jQuery(".sec2").fitText();
</script>
    <title>Document</title>
    <style>

        .wrap{
          margin: 0 auto;
          padding: 10px 10px;
          list-style: none;
          text-decoration: none;
          width: 940px;
          height: 770px;
          position:absolute;  
          left:25%;
          min-width: 700px;
          min-height: 1000px;
        }


        .header{
        width: 940px;
        height:100px;
        }
        .campus{
            width: 200px;
            height: 50px;
           	background-image:url('Sonny/images/mycampus.png');
           	  		 background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  float:left;
        }
        .screen{
            width: 400px;
            height: 200px;
           float: right;
           font-size:20px;
           font-weight:bold;
           
           text-align: right;
        }
        .sec1{
        
    background-image: url(Sonny/images/dung11.jpg);
        width:100%;
        height:400px;
          background-position: center;
    border-radius: 40px

        }
        .sec2{
          background-position: center;
            background-image: url(Sonny/images/newep.jpg);
        width:100%;
        height:100px;
        font-size: 5vh;
        text-align: center;
        font-weight: bold;
   
        }
		.footer{
		width:100%;
		height:150px;
		   margin-top: 20px;
		}
.pre {
    width: 10%;
    height: 70px;
    float: left;
    background-color: darkgray;
    border-radius: 20px;
    text-align: center;
            font-weight:bold;
                margin-top: 20px;
		}
				.levelsec{
		width:100%;
		height:50px;
		}
		
		.level{
		width:80%;
		height:50px;
		float:left;
		}
			.next{
    width: 10%;
    height: 70px;
    float: left;
    background-color: darkgray;
    border-radius: 20px;
        text-align: center;
        font-weight:bold;
            margin-top: 20px;
		}
		.que{
		text-align: center;
	         font-size:20px;
           font-weight:bold;
           color:lawngreen;
           
		}
		.footerImg{
		width:100%;
		height:150px;
	            background-image: url(Sonny/images/bottom.png);
		       margin-top: 60px;
		}

    </style>
</head>
<body>
    <div class="wrap">
        <div class="header">
            <div class="campus"></div>
            <div class="screen"><p>전개화면</p></div>
        </div>
        <div class="sec1"></div>
        <div class="sec2">글씨크기</div>

        <div class="footer">
            <div class="levelsec">
                <div class="pre"><br>Prev</div>
                <div class="level"><p class="que">Q3</p><p class="que">○  ●  ○  ○  ○  ○  ○  ○  ○  ○</p></div>
                <div class="next"><br>Next</div>
              

            </div>
            <div class="footerImg"></div>
        </div>
     
    </div>
</body>
</html>
