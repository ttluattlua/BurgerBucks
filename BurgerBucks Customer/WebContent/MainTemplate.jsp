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
	    <a class="flat_a" style="color: lightgray;" href="#">Login</a>
	     │ 
	    <a class="flat_a" style="color: lightgray;" href="#">Regist</a>
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
      <a class="flat_a" style="color: #ffe25f;" href="#">
        <h3>DIY햄버거</h1>
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 1px ridge #555555; display: block; float: left;" align="center">
      <a class="flat_a" style="color: #ffe25f;" href="#">
        <h3>기타</h1>
      </a>
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
  
  <!-- asdasd -->
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