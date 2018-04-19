<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>    
 
 
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
      <c:if test="${login.id == null}">
      	  <a class="flat_a" style="color: lightgray;" href="#" data-toggle="modal" data-target="#loginModal">Login</a>
	      <font style="cursor: default;">│</font>
	      <a class="flat_a" style="color: lightgray;" href="regi.do">Regist</a>
      </c:if>
      
       <c:if test="${login.id != null}">
       	  <a class="flat_a" style="color: lightgray;">${login.name}님 반갑습니다.</a>
       	  <font style="cursor: default;">│</font>
       	  <a class="flat_a" style="color: lightgray;" href="#">My Order</a>
	      <font style="cursor: default;">│</font>
	      <a class="flat_a" style="color: lightgray;" href="logOut.do">LogOut</a>
	      
      </c:if>
      
    </div>
    
    <!-- 로그인  Modal -->
    <div class="modal fade" id="loginModal" role="dialog" align="center" style="width: 600px; margin: auto; margin-top:100px; overflow: hidden;">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" style="margin: 10px; color: white;">×</button>
        
        <div style="width:240px; margin: auto; padding-top: 40px;">
          <form action="login.do" method="post" name="loginuserInfo" onsubmit="return logincheckValue()">
            <h1 style="color: white; opacity: 1;">로그인</h1>
            
            <div class="input-group" style="margin-top: 20px;">
               <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
               <input id="id" type="text" class="form-control" name="id" placeholder="ID를 입력하세요" required>
             </div>
             
             <div class="input-group" style="margin-top: 10px;">
               <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
               <input id="pw" type="text" class="form-control" name="password" placeholder="Password를 입력하세요" required>
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
      <a href="home.do">
        <img src="./UI/BB_Symbol.png" style="width: 60px; height: 60px; margin: 0 auto;">
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a" style="color: #ffe25f;"  href="order.do">
        <h4 style="size: 28px; margin-top: 30px;">메뉴</h4>
      </a>
    </div>
    <div style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a" style="color: #ededed;" href="#" data-toggle="modal" data-target="#burgerModal">
        <h4 style="size: 28px; margin-top: 30px;">DIY햄버거</h4>
      </a>
    </div>
    <div class="dropdown" style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a dropdown-toggle" data-toggle="dropdown">
        <h4 style="cursor:pointer; size: 28px; margin-top: 30px; color: #ededed; size: 28px; margin-top: 30px;">마이 페이지 ▼</h4>
      </a>
      <ul class="dropdown-menu">
	      <li><a href="order_inquiry.do">주문 내역</a></li>
	      <li><a href="order_history.do">주문 조회</a></li>
	      <li><a href="#">즐겨찾기</a></li>
	      <li><a href="goAddr.do">주소록</a></li>
	      <li><a href="updateProfile.do">회원정보 수정</a></li>
	      <li><a href="changePwd.do">비밀번호 변경</a></li>
	    </ul>
    </div>
    <div class="dropdown" style="height:100%; width: 160px; border-right: 2px ridge #7a7979; display: block; float: left;" align="center">
      <a class="hover_a dropdown-toggle" data-toggle="dropdown" >
        <h4 style="cursor:pointer; size: 28px; margin-top: 30px; color: #ededed; size: 28px; margin-top: 30px;">기타 페이지 ▼</h4>
      </a>
      <ul class="dropdown-menu">
        <li><a href="terms_and_conditions.do">이용약관</a></li>
        <li><a href="faq.do">FAQ</a></li>
        <li><a href="customer_inquiry.do">문의하기</a></li>
      </ul>
    </div>
  </div>
  
  
  
  
  <!--==============================================DIY Burger Modal==================================================== -->  
  <div class="modal fade" id="burgerModal" role="dialog" align="center" style="margin: auto; margin-top:100px; overflow: hidden;">
    
    <!-- Modal Part -->
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
          
            <!-- Burger Animation -->
            <div style="border:1px solid green; height:440px; width: 320px; float: left; display: inline-block;" align="center">
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/bread_homil.png" id="bread01" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient01" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient02" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient03" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient04" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient05" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient06" style="height: 40px; width: 100px;">  
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient07" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient08" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/ing_none.png" id="ingredient09" style="height: 40px; width: 100px;">
              </div>
              <div style="height:40px; width: 320px;">
                <img src="./Ingredient/bread_black.png" id="bread02" style="height: 40px; width: 100px;">
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
                  <label class="control-label">햄버거 번</label><br>
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
                  <label class="control-label">햄버거 번</label><br>
                  <select class="form-control" id='vegeSelect' name='vegeSelect' style="width: 180px; float:left;" size="8">
                    <option value='상추'>상추</option>
                    <option value='양파'>양파</option>
                    <option value='치즈'>치즈</option>
                  </select>
                </div>
                
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">햄버거 번</label><br>
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
    var ingredientCount = 1;
    
    $(document).ready(function () {
            
      $("#breadSelect").click(function(){
        var selectedBread = $("#breadSelect option:selected").val(); 
                
        switch (selectedBread) {
        case "호밀번": 
          $("#bread01").attr("src", "./Ingredient/bread_homil.png");
          $("#bread02").attr("src", "./Ingredient/bread_homil.png"); 
          break;
        case "흑미번": 
          $("#bread01").attr("src", "./Ingredient/bread_mil.png");
          $("#bread02").attr("src", "./Ingredient/bread_mil.png");
          break;
        case "밀번": 
          $("#bread01").attr("src", "./Ingredient/bread_black.png"); 
          $("#bread02").attr("src", "./Ingredient/bread_black.png"); 
          break;
        default : break;
        }
      });
      
      $("#meatSelect").click(function(){
        var ingredient = document.getElementById("ingredient0" + ingredientCount);
        var selectedMeat = $("#meatSelect option:selected").val();
        
                
        switch (selectedMeat) {
        case "소고기패티": ingredient.src="./Ingredient/meat_beaf.png"; break;
        case "스테이크패티": ingredient.src="./Ingredient/meat_steak.png"; break;
        case "치킨패티": ingredient.src="./Ingredient/meat_chicken.png" ; break;
        default : break;
        }
        ingredient.opacity = 1;
        $(ingredient).animate({marginTop: "+=100px"});
        ingredientCount++;
        
        $("#meatSelect option:selected").prop("selected", false);
      });
      
    });
    </script>
  </div>
  
<!--==============================================로그인==================================================== -->  
