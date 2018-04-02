<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/Necessary.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<title>Insert title here</title>

</head>

<body style="background-color: #f3f3f3;">


	<!-- Top Space Div -->
	<div style="margin: 0 auto; height: 30px; width: 1000px; padding-top:5px;">
	  <!-- Language -->
	  <div style="float: left;">
	    <a class="flat_a" style="color: black;" href="#">한국어◀</a>
	     │ 
	    <a class="flat_a" style="color: lightgray;" href="#">English</a>
	  </div>
	  
	  <!-- Login and Register -->
	  <div style="float: right;">
	    <a class="flat_a" style="color: lightgray;" href="#" data-toggle="modal" data-target="#loginModal">Login</a>
	     │ 
	    <a class="flat_a" style="color: lightgray;" href="#">Regist</a>
	  </div>
	  
	  <!-- Modal -->
	  <div class="modal fade" id="loginModal" role="dialog" align="center" style="width: 600px; margin: auto; margin-top:100px; overflow: hidden;">
	    <div class="modal-content">
	      <button type="button" class="close" data-dismiss="modal" style="margin: 10px; color: white;">×</button>
	      
	      <div style="width:240px; margin: auto; padding-top: 40px;">
	        <form action="UserController" method="post" name="loginuserInfo" onsubmit="return logincheckValue()">
	          <input type="hidden" name="command" value="login">
	          <h1 style="color: white; opacity: 1;">로그인</h1>
	          
	          <div class="input-group" style="margin-top: 20px;">
	             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	             <input id="id" type="text" class="form-control" name="id" placeholder="ID를 입력하세요" required>
	           </div>
	           
	           <div class="input-group" style="margin-top: 10px;">
	             <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	             <input id="pw" type="text" class="form-control" name="pw" placeholder="Password를 입력하세요" required>
	           </div>
	           
	           <div style="margin-top: 20px;">
	            <button class="btn btn-primary" type="submit"> 로그인 </button>
	            <button class="btn btn-primary" onclick="location.href='UserController?command=regist'">회원가입</button>
	           </div>
	           
	        </form>
	      </div>
	    </div>

	  </div>
	</div>
	
	<!-- Button Div -->
	<div style="background: linear-gradient(#c76050, #a33b2b); padding: 0; margin: 0 auto; height:80px; width: 1000px; border: 1px solid #999999; border-radius: 4px; box-shadow: 0px 4px 4px #bbbbbb;">
    <div style="padding:10px; height:100%; width: 80px; border-right: 1px ridge #555555; display: block; float: left;">
      <a href="#">
        <img src="./UI/BB_Symbol.png" style="width: 60px; height: 60px; margin: 0 auto;">
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 1px ridge #555555; display: block; float: left;" align="center">
      <a class="flat_a" style="color: #ffe25f;" href="#">
        <h3>메뉴</h1>
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 1px ridge #555555; display: block; float: left;" align="center">
      <a class="flat_a" style="color: #ffe25f;" href="#" data-toggle="modal" data-target="#burgerModal">
        <h3>DIY햄버거</h1>
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 1px ridge #555555; display: block; float: left;" align="center">
      <a class="flat_a" style="color: #ffe25f;" href="#">
        <h3>기타</h1>
      </a>
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="burgerModal" role="dialog" align="center" style="margin: auto; margin-top:100px; overflow: hidden;">
    <div style="height:600px; width: 800px; background-color: #f3f3f3; border-radius: 4px;">
      
      <div style="width: 800px; height: 40px; padding: 10px;">
        <label style="float: left;">나만의 햄버거 제작</label>
        <a data-dismiss="modal" style="float: right;"><label>X</label></a>
      </div> 
      
      <div style="width: 800px; height: 560px; padding:10px;">
        <form action="BurgerCont" method="get" name="burgerInfo" onsubmit="return logincheckValue()">
          
          <!-- Name input-->
	        <div style="border:1px solid green;  width: 780px; height: 40px;">
	          <div class="input-group" style="width: 300px; float:left;">
	            <span class="input-group-addon">이름</span> 
	            <input id="id" name="id" type="text" class="form-control" 
	            placeholder="햄버거의 이름을 입력해주세요" required>
	          </div>
	        </div>
          
          <div style="height:440px; width: 780px; margin-top:10px;">
            <div style="border:1px solid green; height:440px; width: 320px; float: left; display: inline-block;"></div>
            <div style="border:1px solid green; height:440px; width: 450px; float: right; display: inline-block;"></div>
          </div>
          
          <div style="border:1px solid green; width: 780px; margin-top:10px; height: 40px;">
          </div>
          
        </form>
      </div>
        
    </div>
  </div>
      
  
  <!-- Login and Notice -->
  <div style="padding: 0; margin: 0 auto; margin-top:20px; height: 300px; width: 1000px;">
	
	<!-- Carousel --> 
    <div id="transition-timer-carousel"  class="carousel slide transition-timer-carousel"  data-ride="carousel" data-interval="4000" 
    style="display:block; height: 300px; width:700px; float: left; border: 1px solid #999999; border-radius: 4px;">
        
        <!-- Carousel Indicators -->
        <ol class="carousel-indicators">
			    <li data-target="#transition-timer-carousel" data-slide-to="0" class="active" style="background-color: #a33b2b; border-color: #c11900;"></li>
			    <li data-target="#transition-timer-carousel" data-slide-to="1" style="color: #a33b2b;"></li>
			    <li data-target="#transition-timer-carousel" data-slide-to="2" style="color: #a33b2b;"></li>
			  </ol>
        
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="./UI/3.jpg" style="height: 298px; border-radius: 4px;" />
          </div>

          <div class="item">
            <img src="./UI/3.jpg" style="height: 298px; border-radius: 4px;" />
          </div>

          <div class="item">
            <img src="./UI/3.jpg" style="height: 298px; border-radius: 4px;" />
          </div>
        </div>
        
	  </div>
	  
	  <!-- Login -->
	  <div style="margin-left:10px; display:block; height: 300px; width:290px; background-color: black;  float: left; border: 1px solid #999999; border-radius: 4px;">
	  
	  </div>
  </div>
  
  <!-- Guide -->
  <div style="width: 1000px; height: 400px; border: 1px solid lightgray; border-radius: 4px; background: white; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;">
  </div>
  
  <!-- Footer -->
  <footer class="container-fluid text-center" style="background-color: #212121; padding: 25px;">
    <div class="row" style="width: 1000px; margin: auto; color: #CFCFCF;" align="center;">
      <div class="col-sm-5" style="text-align: left;">
       <h4>Customer Center</h4>
       <h3>1544-0044</h3>
       <h6>OPEN : 10시 ~ 12시 / 14시 ~ 18시</h6>
       <h6>HOLIDAY, WEEKEND OFF</h6>
      </div>
      <div class="col-sm-3" style="text-align: left;">
       <h4>Bank Info</h4>
       <h6>신한은행 : 111-111-111111</h6>
       <h6>농협은행 : 888-8888-888-8888</h6>
       <h6>국민은행 : 222222-22-222222</h6>
       <h6>우리은행 : 6666-666-666666</h6>
       
      </div>
      <div class="col-sm-4" style="text-align: left;"> 
       <h4>Return Address</h4>
       <h6>서울 강남구 역삼동 테헤란로 2길</h6>
       <h6>KH프라자 2층 - A동 </h6><br>
       <h6>대표 : 이서원 / 사원 : 김형섭 / 사원 : 최홍순</h6>
       <h6>사원 : 한범희 / 사원 : 윤병준</h6>
      </div>
    </div> 
  </footer>
  


</body>
</html>