<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
	
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
        <!-- Bootstrap -->
    <link href="./css/nomalize.css" rel="stylesheet">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/jquery.fancybox.css" rel="stylesheet">
    <style>
      @import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400);
      @font-face{
      font-family:'NanumBarunGothic';
      src:url("../fonts/NanumBarunGothic.eot");
      src:local("☺"),url("../fonts/NanumBarunGothic.woff") format("woff");
      }
      a:hover { text-decoration: none;}      
      body {font-family: "NanumBarunGothic",  sans-serif; padding-top: 90px; }  
      .container-fluid { padding: 0;}
      /* nav bar customize */
      .navbar{ background-color: #fff; border: none; padding-bottom: 10px;  font-family: 'Source Sans Pro', sans-serif; font-weight: 300; font-size: 18px;height: 90px; text-transform: capitalize; border-bottom: 1px solid #AAAAAA}

      .navbar-toggle {position: relative;margin-top: 40px;top: 2px;}
      .navbar-nav { padding-right: 10px;margin-top: 20px; background-color: #fff}
      .navbar-nav li { margin:0 20px; }
      .navbar-brand { padding-left: 20px;}  
      .navbar-collapse { padding-top: 10px; background-color: #fff}
      .navbar-default .navbar-nav>li>a:hover { color: #FF8000} 
      .navbar-default .navbar-nav>li.active>a,
      .navbar-default .navbar-nav>li.active>a:hover,
      .navbar-default .navbar-nav>li.active>a:focus
       { color: #FF8000; background-color: #fff} 

      .control { position: inherit; top: 50%; z-index: 5; display: inline-block; right: 50%;} 
      @media (max-width: 320px)  {
        .navbar-brand img { width: 80%; height: auto; margin-top:-100px}  
      }
      @media (max-width: 980px) {
        .navbar-nav li { margin:0 10px;}
      }
    /* 아이콘 부분 */
    .service {margin: 40px 0;}
    .service a { display: block;}
    .icons {      
         float: left;
         display: block;
         font-size: 30px;
         color: #fff;
         background-color: #FF8000;
         border-radius: 50%;
         text-align: center;
         margin-right: 15px ;
         padding: 20px;
         border:4px solid #FF8040;
         transition: all 0.3s;
        }  

    .service a:hover .icons  { background-color:#0080C0;}
    .service a:hover .icontxt h4 { color: #0080FF; }
    .icontxt { display: block; color: #2E2F28; text-align: left; } 
    .icontxt h4 {font-weight: bold; font-family: 'Source Sans Pro'; font-size: 20px; text-transform: uppercase; text-align: left;}
    @media (min-width: 768px) {
      .icons { margin: 0 auto; position: relative; left: 30%;}
      .icontxt h4 { text-align: center;}
    }

    @media (max-width: 360px) {
      .icontxt p { display: none; }
      .icontxt {line-height:10px; padding: 0; margin: 0;}
      .icontxt h4 { display: none; }
      .icons { padding: 20px; margin: 10px 0 10px 20px; }
      .book img { width: 50%; height: auto;}
      .control { display: none;} 
    }

    /*헤더 태그 텍스트 처리 */
    header { color: #fff; text-align: center; padding: 40px 0;}
    header small { color: #fff}
    header p { color: #C0C0C0}      
    /*헤더 부분 백 그라운드 처리 */
    .content1 {
      background:url(./imgs/slide1_bg.jpg)  no-repeat center top fixed;
     background-size:cover; 
    }
    .about p { line-height: 1.8em; font-size: 15px; color: #282923}
    .about { padding: 50px 0;}
    .panel a {  display: block; color: #000}
    .panel a.collapsed { color: #0080C0 }
    .panel-body { color:#804000}
    /* 책 부분 속성 */
    .book{ margin-left: 10px;}
    .book2, .book3, .book4 { position: relative; float: left; }
    .book2 { z-index: 1; }
    .book3 { z-index: 10; margin-left: -100px; }
    .book4 { z-index: 20; margin-left: -100px;}  
/*포트폴리오 헤더 부분 */
    .content2 {
      background:url(./imgs/slide1_bg.jpg)  no-repeat center center fixed;
     background-size:cover; 
}
 /*포트폴리오 사이트 부분 */
  .site { height: 330px;}
  .site h4 { border-bottom: 1px solid #C0C0C0; font-size: 16px; padding-bottom: 5px }
  

/* Contact 와 footer 부분 */
  .contact { padding: 50px 0;}

  .content3 {
    background:url(./slide1_bg.jpg)  no-repeat center bottom fixed;
   background-size:cover; 
  }

  .form-group input[type="text"], .form-group textarea { border-radius: 0;}

  .required {
    background: url(./imgs/required.png) right top no-repeat;
  }

  button.send_btn {
    cursor: pointer;
    background:url(./imgs/pattern.png) repeat;
    color: #FFF;
    margin:0 10px 0 0;
    display: inline-block;
    padding: 0 20px;
    height:40px;
    line-height:40px;
    font-size: 14px;
    width: auto;
    border:0;
  }
  button.send_btn:hover {
     background-image:url(./imgs/color_pattern.png);
     text-decoration:none;
  }

  footer { padding: 40px 0; color: #fff}

    </style>
  </head>
  <body>
      <div class="container">
		<%-- header.jsp --%>
		<%@ include file="./header.jsp" %>		
     </div>
	      <div id="carousel-generic" class="carousel slide">
	      <!-- Indicators -->
	       <ol class="carousel-indicators">
	         <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
	         <li data-target="#carousel-generic" data-slide-to="1"></li>
	         <li data-target="#carousel-generic" data-slide-to="2"></li>
	         <li data-target="#carousel-generic" data-slide-to="3"></li>
	         <li data-target="#carousel-generic" data-slide-to="4"></li> 
	         <li data-target="#carousel-generic" data-slide-to="5"></li>
	         <li data-target="#carousel-generic" data-slide-to="6"></li>                
	       </ol>
	     <!-- Carousel items -->
	       <div class="carousel-inner">
	          <div class="item active">
	             <img src="./ch05/imgs/1.jpg" alt="First slide">
	          </div>
	          <div class="item">
	             <img src="./ch05/imgs/2.jpg" alt="Second slide">              
	          </div>
	          <div class="item">
	             <img src="./ch05/imgs/3.jpg" alt="Third slide">               
	          </div>
	          <div class="item">
	             <img src="./ch05/imgs/4.jpg" alt="Third slide">               
	          </div>
	          <div class="item">
	             <img src="./ch05/imgs/5.jpg" alt="Third slide">               
	          </div>                            
	          <div class="item">
	             <img src="./ch05/imgs/7.jpg" alt="Third slide">               
	          </div>                              
	       </div>
	      <!-- Controls -->
	        <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
	          <img src="./ch05/imgs/left.png" class="control">
	        </a>
	        <a class="right carousel-control" href="#carousel-generic" data-slide="next">
	          <img src="./ch05/imgs/right.png" class="control">
	        </a>
	      </div>     
    
            <hr>         
         <div class="row">
           <div class="col-md-6">
             <!-- 어코디언 -->
               <h3>Why 9pixelstudio? </h3>
                <div class="panel-group" id="accordion">
                    <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            <span class="glyphicon glyphicon-star"> </span> 18년 동안 웹 사이트를 전문적으로 제작해 왔습니다.
                          </a>
                        </h4>
                      </div>
                      <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                          두산 그룹 웹 사이트 부터 시작하여, 두산베어스, 국제유도연맹 및 대형 게임 사이트, 쇼핑몰  등  지금까지 50여개가 넘는 다양한  사이트를 작업해 왔으며 풍부한 실무 경험을 갖추고 있습니다.

                        </div>
                      </div>
                    </div>
                    <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            <span class="glyphicon glyphicon-star"> </span> HTML5와 CSS3와 관련된 서적만 4권을 집필하였습니다.
                          </a>
                        </h4>
                      </div>
                      <div id="collapseTwo" class="panel-collapse collapse ">
                        <div class="panel-body">
                            <div class="ip">
                                HTML5와 CSS3와 관련된 전문 서적을 4권이나 집필하여, 해당 분야에 대한 전문적인 지식을 보유하고 있습니다.
                                <div class="booklist">
                                    처음부터 다시 배우는 HTML5&#38;CSS3, 전면개정판 (2013년 9월) ,
                                    처음 시작하는 CSS&#38;워드프레스 (2012년 12월), 
                                    이제 실전이다 HTML5&#38;CSS3 사이트 제작의 모든 것 (2012년 4월), 
                                    처음부터 다시 배우는 HTML5&#38;CSS3 (2011년 9월)
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                            <span class="glyphicon glyphicon-star"> </span> 워드프레스 기반으로 사이트를 제작
                          </a>
                        </h4>
                      </div>
                      <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                             고객이 요구할 시에는 강력한 CMS(Content Management System)인 워드프레스 기반으로 사이트를 제작하여, 쉽고 빠르고 편리하게 웹 사이트를 관리 할 수 있습니다.           
                        </div>
                      </div>
                    </div>
                   <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapsefour">
                            <span class="glyphicon glyphicon-star"> </span> 쇼핑몰 사이트  제작 
                          </a>
                        </h4>
                      </div>
                      <div id="collapsefour" class="panel-collapse collapse ">
                        <div class="panel-body">
                             기업용 웹 사이트 뿐만 아니라, 쇼핑몰 사이트도 제작하며, cafe24, 메이크샵, 고도몰과 같은 쇼핑몰 호스팅에 맞는 최적화된 사이트를 제작해 드립니다.
                        </div>
                      </div>
                    </div> 
                   <div class="panel">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapsefive">
                            <span class="glyphicon glyphicon-star"> </span> 그래픽(인쇄) 디자인 및 북 디자인 
                          </a>
                        </h4>
                      </div>
                      <div id="collapsefive" class="panel-collapse collapse ">
                        <div class="panel-body">
                           9pixelstudio는 웹사이트 제작 뿐만 아니라, 다양한 그래픽 디자인도 가능합니다. 기업 홍보용 리플렛, 홍보용 책자 및 파워포인트 및 키노르를 이용한 프리젠테이션 까지 다양한 작업을 할 수 있습니다.  
                        </div>
                      </div>
                    </div>                                      
                </div>
             <!-- 어코디언 끝 -->
          
            </div>
          
             <div class="col-md-5  col-md-offset-1">
               <h3>공지사항</h3>
                   <table class="table" id="bbs" >
					  <thead>
					   <tr>
					     <th>번 호 </th>
					     <th>제 목</th>
					     <th>글쓴이</th>
					   </tr>
					   </thead>
					   <tr>
					     <td>1</td>
					     <td>테이블 테스트  테이블 테스트 테이블 테스트 </td>
					     <td>홍길동</td>
					   </tr>
					   <tr>
					     <td>2</td>
					     <td>테이블 테스트  테이블 테스트 테이블 테스트</td>
					     <td>임꺽정 </td>
					   </tr>
					   <tr>
					     <td>3</td>
					     <td>테이블 테스트  테이블 테스트 테이블 테스트</td>
					     <td>성춘향 </td>
					   </tr>      
					</table>
					<button class="btn btn-primary" id="testBtn">Click</button>
             </div>
           </div> <hr><hr><hr>
           

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">모달 제목 </h4>
		      </div>
		      <div class="modal-body">
		      <p>여기는 내용이 들어 가는 곳 </p>
		      
				    <h4 class="text-primary">부트스트랩을 이용하여 폼을 변형</h4>
				
				    <form role="form">  
				    <div class="form-group">   
				        <label for="Name">이름</label>
				        <input type="text" class="form-control" placeholder="이름"> 
				    </div>       
				    <div class="form-group">  
				
				        <label for="emailaddress">이메일</label>
				        <input type="email" class="form-control" placeholder="이메일"> 
				    </div> 
				    <div class="form-group">     
				        <button type="submit"> 확인</button>    
				    </div>    
				           
				    </form>
		        
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
		        <button type="button" class="btn btn-primary">변경 사항 저장</button>
		      </div>
		    </div> <!-- 모달 콘텐츠 -->
		  </div> <!-- 모달 다이얼로그 -->
		</div> <!-- 모달 전체 윈도우 -->


	<%@ include file="./footer.jsp" %>
	    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/jquery.fancybox.js"></script>
    <script>
      $('.carousel').carousel()
      $('.carousel2').carousel({interval: 3000 }) 
      //*  fancybox  실행 스크립트 */
      $(document).ready(function() {
        $("#testBtn").on("click",function(){
        	$("#bbs").empty();
        	$("#bbs").append("<input type='text'>");
        })
      });
    </script>
  </body>
</html>