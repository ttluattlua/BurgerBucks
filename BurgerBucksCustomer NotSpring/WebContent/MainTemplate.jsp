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
      <font style="cursor: default;">│</font> 
      <a class="flat_a" style="color: lightgray;" href="#">English</a>
    </div>
    
    <!-- Login and Register -->
    <div style="float: right;">
      <a class="flat_a" style="color: lightgray;" href="#" data-toggle="modal" data-target="#loginModal">Login</a>
      <font style="cursor: default;">│</font> 
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
  <div style="background: linear-gradient(#5b5b5b, #333333); padding: 0; margin: 0 auto; height:80px; width: 1000px; border: 1px solid #999999; border-radius: 4px; box-shadow: 0px 4px 4px #bbbbbb;">
    <div style="background: linear-gradient(#ad3b29, #771e10); padding:10px; height:100%; width: 80px; border-right: 2px ridge #7a7979; display: block; float: left; border-top-left-radius: 3px; border-bottom-left-radius: 3px;">
      <a href="#">
        <img src="./UI/BB_Symbol.png" style="width: 60px; height: 60px; margin: 0 auto;">
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a" style="color: #ffe25f;"  href="#">
        <h4 style="size: 28px; margin-top: 30px;">메뉴</h4>
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a" style="color: #ededed;" href="#" data-toggle="modal" data-target="#burgerModal">
        <h4 style="size: 28px; margin-top: 30px;">DIY햄버거</h4>
      </a>
    </div>
    <div class="dropdown" style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a dropdown-toggle" data-toggle="dropdown" >
        <h4 style="cursor:pointer; size: 28px; margin-top: 30px; color: #ededed; size: 28px; margin-top: 30px;">마이 페이지 ▼</h4>
      </a>
      <ul class="dropdown-menu">
        <li><a href="#">주문 내역</a></li>
        <li><a href="#">즐겨찾기</a></li>
        <li><a href="#">주소록</a></li>
        <li><a href="#">내 정보</a></li>
      </ul>
    </div>
    <div class="dropdown" style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a dropdown-toggle" data-toggle="dropdown" >
        <h4 style="cursor:pointer; size: 28px; margin-top: 30px; color: #ededed; size: 28px; margin-top: 30px;">기타 페이지 ▼</h4>
      </a>
      <ul class="dropdown-menu">
        <li><a href="#">이용약관</a></li>
        <li><a href="#">원산지 표시</a></li>
        <li><a href="#">FAQ</a></li>
        <li><a href="#">문의하기</a></li>
      </ul>
    </div>
  </div>
  
  <!-- DIY Burger Modal -->
  <div class="modal fade" id="burgerModal" role="dialog" align="center" style="margin: auto; margin-top:100px; overflow: hidden;">
    
    <!-- Modal Part -->
    <div style="height:600px; width: 800px; background-color: #f3f3f3; border-radius: 4px;">
      
      <!-- Modal Explanation -->
      <div style="width: 800px; height: 40px; padding: 10px;">
        <label style="float: left;">나만의 햄버거 제작</label>
        <a onclick="initBurgerModal()" data-dismiss="modal" style="float: right;"><label style="cursor:pointer;">X</label></a>
      </div> 
      
      <!-- Modal Contents -->
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
          
          <!-- Burger Ingredient -->
          <div style="height:440px; width: 780px; margin-top:10px;">
          
            <!-- Ingredient List -->
            <div style="height:440px; width: 320px; float: left;">
              <div id="ingredientList" style="border:1px solid green; height:440px; width: 320px; vertical-align: bottom; display: table-cell;" align="center">            
	              
	              <div style="height:30px; width: 318px; margin-bottom: 30px; z-index: 0; position: relative; display: block;">
	                <div style="height:30px; width: 140px; float:left;" align="center">
	                  <img src="./Ingredient/bread_homil.png" id="bread_down" style="height: 50px; width: 100px; margin-top:-10px;">
	                </div>
	                <div style="height:30px; width: 120px; float:left; padding-top:5px;" align="center">
	                  <p>호밀빵</p>
	                </div>
	                <div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">
	                </div>
	              </div>
	              
	             </div>
            </div>
            
            <!-- Ingredient Select -->
            <div style="border:1px solid green; height:440px; width: 450px; float: right; display: inline-block;">
              
              <!-- Bread and Meat Select -->
              <div style="height:220px; width: 440px;">
                <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">햄버거 번</label><br>
                  <select class="form-control" id='breadSelect' name='breadSelect' style="width: 180px; float:left;" size="8">
                    <option value='호밀번' selected>호밀번</option>
                    <option value='밀번'>밀번</option>
                    <option value='흑미번'>흑미번</option>
                  </select>
                </div>
                
                <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">패티</label><br>
                  <select class="form-control" id='meatSelect' name='meatSelect' style="width: 180px; float:left;" size="8">
                    <option value='소고기패티'>소고기패티</option>
                    <option value='스테이크패티'>스테이크 패티</option>
                    <option value='치킨패티'>치킨패티</option>
                  </select>
                </div>
              </div>
              
              <!-- Lettuce and Etc Select -->
              <div style="height:220px; width: 440px;">
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">채소</label><br>
                  <select class="form-control" id='vegeSelect' name='vegeSelect' style="width: 180px; float:left;" size="8">
                    <option value='상추'>상추</option>
                    <option value='양파'>양파</option>
                    <option value='치즈'>치즈</option>
                  </select>
                </div>
                
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">기타</label><br>
                  <select class="form-control" id='etcSelect' name='etcSelect' style="width: 180px; float:left;" size="8">
                  </select>
                </div>
              </div>
              
            </div>
          </div>
          
          <div style="border:1px solid green; width: 780px; margin-top:10px; height: 40px;">
          </div>
          
        </form>
      </div>
        
    </div>
    
    <!-- Script Part -->
    <script type="text/javascript">
    var ingredientList = [];
    var divIdList = [];
    var ingredientIdCount = 0;
    var ingredientCount = 0;
    
    $(document).ready(function () {
      
      //빵 선택
      $("#breadSelect").click(function(){
        var selectedBread = $("#breadSelect option:selected").val(); 
                
        switch (selectedBread) {
        case "호밀번": var breadImgSrc = "./Ingredient/bread_homil.png"; break;
        case "흑미번": var breadImgSrc = "./Ingredient/bread_mil.png"; break;
        case "밀번": var breadImgSrc = "./Ingredient/bread_black.png"; break;
        default : alert("잘못된 선택입니다."); break;
        }
        
        $("#bread_down").attr("src", breadImgSrc);
        $("#bread_top").attr("src", breadImgSrc); 
        
      });
      
      //고기 선택
      $("#meatSelect").click(function(){
        
        if (ingredientCount>=9) {alert("더 이상 재료를 추가할 수 없습니다."); return;}
        
        var ingredientImgSrc;
        var ingredientID = "ing" + ingredientIdCount;
        var selectedMeat = $("#meatSelect option:selected").val();
        ingredientList.push(selectedMeat);
        divIdList.push("div"+ingredientID);
         
        switch (selectedMeat) {
        case "소고기패티": ingredientImgSrc = "./Ingredient/meat_beaf.png"; break;
        case "스테이크패티": ingredientImgSrc = "./Ingredient/meat_steak.png"; break;
        case "치킨패티": ingredientImgSrc = "./Ingredient/meat_chicken.png" ; break;
        default : alert("잘못된 선택입니다."); return; break;
        }
                
        var newIngredient = '<div id="div' + ingredientID + '" style="height:30px; width: 318px; margin-top: 5px; z-index:' + (ingredientCount+1) + '; position: relative; display: block;">';
        
        newIngredient += '<div style="height:30px; width: 140px; float:left;" align="center">';
        newIngredient += '<img id="' + ingredientID + '" src="' + ingredientImgSrc + '" style="height: 50px; width: 100px; margin-top:-110px; opacity:0.2;">';
        newIngredient += '</div>';
        
        newIngredient += '<div style="height:30px; width: 120px; float:left; padding-top: 5px;" align="center">';
        newIngredient += '<p>' + selectedMeat + '</p>';
        newIngredient += '</div>';
        
        newIngredient += '<div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">';
        newIngredient += '<button style="height:20px; width: 20px; padding:0px;" class="btn btn-danger glyphicon glyphicon-remove" onclick="delRow(this)" type="button"></button>';
        newIngredient += '</div>';
        
        newIngredient += '</div>';
        
        $('#ingredientList').prepend(newIngredient);
        $('#'+ingredientID).animate({marginTop: "+=100px", opacity: "1"});
        
        ingredientCount ++;
        ingredientIdCount ++;
        $("#meatSelect option:selected").prop("selected", false);
      });
      
    });
    
    //행 삭제
    function delRow (button){
      ingredientCount --;
      $(button).parent().parent().remove();
    }
    
    //햄버거 모달 초기화
    function initBurgerModal() {
      
      for (var i = 0; i < divIdList.length; i++) {
        $("#"+divIdList[i]).remove();
      }
      
      ingredientList = [];
      divIdList = [];
      ingredientIdCount = 0;
      ingredientCount = 0;
    }
    </script>
  </div>
        
  <!-- Login and Notice -->
  <div style="padding: 0; margin: 0 auto; margin-top:20px; height: 300px; width: 1000px;">
  
    <!-- Carousel --> 
    <div id="transition-timer-carousel"  class="carousel slide transition-timer-carousel"  data-ride="carousel" data-interval="4000" 
    style="display:block; height: 300px; width:700px; float: left; border: 1px solid #999999; border-radius: 4px;">
        
        <!-- Carousel Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#transition-timer-carousel" data-slide-to="0" class="active" style="border: 1px solid #7a7979;"></li>
          <li data-target="#transition-timer-carousel" data-slide-to="1" style="border: 1px solid #7a7979;"></li>
          <li data-target="#transition-timer-carousel" data-slide-to="2" style="border: 1px solid #7a7979;"></li>
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
    <div style="margin-left:10px; display:block; height: 300px; width:290px; float: left;">
      
      <!-- Login Form -->
      <div style="background-color: white; border: 1px solid #999999; border-radius: 4px; height: 200px; width:290px; padding: 10px;" align="center">
        <form>
        
	        <p style="width: 240px; margin-top:10px;">로그인</p>
	        
	        <div class="input-group" style="width: 240px; margin-top:20px;">
	          <span class="input-group-addon" style="width:50px;">ID</span> 
	          <input id="name" name="name" type="text" class="form-control" placeholder="아이디를 입력해주세요" required>
	        </div>
	        
	        <div class="input-group" style="width: 240px; margin-top:10px;">
	          <span class="input-group-addon" style="width:50px;">PW</span> 
	          <input id="name" name="name" type="text" class="form-control" placeholder="비밀번호를 입력해주세요" required>
	        </div>
	        
          <button class="btn btn-success" style="width: 240px; margin-top:15px;" type="submit">로그인</button>
        
        </form>
      </div>
      
      <!-- ID/PW Find Button -->
      <div style="margin-top:10px;">
        <button class="btn btn-success" style="width: 290px; border: 1px solid #999999; border-radius: 4px; height: 40px;">ID/PW 찾기</button>
      </div>
      
      <!-- Regist Button -->
      <div style="margin-top:10px;">
        <button class="btn btn-success" style="width: 290px; border: 1px solid #999999; border-radius: 4px; height: 40px;">회원 가입</button>
      </div>
     
    </div>
  </div>

  <!-- Guide -->
  <div style="width: 1000px; height: 400px; background: white; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;">
    <img src="./UI/Deliever.png" style="width: 1000px; height: 400px; border: 1px solid #999999; border-radius: 4px;">
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