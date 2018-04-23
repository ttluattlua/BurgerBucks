<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

  <!-- Guide -->
  <div style="width: 1000px; height: 30px; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;" align="center">
    <div style="width: 600px; height: 30px; background-color: white; border: 1px solid #999999; border-radius: 4px; padding: 5px;">
      <p>2. 메뉴 선택</p>
    </div>
  </div>
        
  <!-- Order and Cart and Pay -->
  <div style="padding: 0; margin: 0 auto; margin-top:20px; height: 800px; width: 1000px; margin-bottom: 20px;">
  
    <!-- Order --> 
    <div style="display:block; height: 800px; width:640px; float: left;">
      
      <!-- Select Menu Div -->
      <div id="selectMenu" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;">
        <h2>메뉴 선택 및 새로운 메뉴 추가 DIV 영역</h2>
        <button onclick='newMenu()'>새로운 메뉴 추가하기</button>
      </div>
      
      <!-- Select Burger Div -->
      <div id="selectBurger" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        
        <!-- Cancel Button -->
        <div style="height: 30px; width:620px; margin: 10px; margin-top: 10px;">
          <a onclick='cancelMenu()' style="height: 40px; width: 20px; float: right;"><span class="glyphicon glyphicon-remove"></span></a>
        </div>
        
        <!-- Menu Name -->
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 10px;">
	        <div class="input-group" style="width: 300px;">
	          <span class="input-group-addon">메뉴 이름</span>
	          <input id="login_id" type="text" class="form-control menu_name" placeholder="메뉴의 이름을 입력하세요" onblur="saveMenuName(this)" style="width: 200px;">
	        </div>
        </div>
        
        <!-- Step Indication -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 20px;">
          <div style="height: 60px; width:160px; border: 2px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <b>
	            <p>1단계 : 버거 선택</p>
	            <p id="selectedBurger">햄버거 이름 (0원)</p>
            </b>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>2단계 : 사이드 선택</p>
            <p id="selectedSide">사이드 이름 (0원)</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>3단계 : 음료 선택</p>
            <p id="selectedBeverage">음료 이름 (0원)</p>
          </div>
        </div>
        
        <!-- Selected Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 30px;">
        
          <!-- Preview Menu -->
          <div style="height: 220px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block; float: left" align="center">
            <div style="height: 120px; width:120px; border: 1px solid #999999; border-radius: 4px;  margin-top: 10px;">
              <img id="previewBurgerImg" alt="" src="">
            </div>
            <div style="height: 40px; width:120px; margin-top: 10px;">
              <div style="height: 40px; width:80px; display: inline-block;">
              </div>
              <div style="height: 40px; width:40px; display: inline-block;">
              </div>
            </div>
          </div>
         
          <div style="height: 220px; width:420px; margin-left: 20px;  display: inline-block; float: left">
          
            <div style="height: 18px; width:420px;"><p>DIY 버거</p></div>
            
            <div style="height: 200px; width:420px; border: 1px solid #999999; border-radius: 4px;">
              
		        </div>
          </div>
        </div>
        
        <!-- Select Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 10px;">
          
	        <div class="col-md-12 carousel slide" style="height: 200px; background-color: #999999;">
                        
            <!-- Carousel items -->
            <div class="carousel-inner">
            
	            <div class="item active">
	              <div class="row">
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	              </div>
	            </div>
           
	            <div class="item">
	              <div class="row">
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	              </div>
	            </div>
           
	            <div class="item">
	              <div class="row">
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	                <div class="col-md-3"><a href="#" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"></a></div>
	              </div>
	            </div>
          
             </div>
             
             <a data-slide="prev" href="#Carousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
             <a data-slide="next" href="#Carousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>

	        </div>
        </div>
        
        <!-- Add DIY Burger Button -->
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 10px;" align="right">
          <button class="btn btn-warning" data-toggle="modal" data-target="#burgerModal" onclick="loadBurger()">나만의 버거 만들기</button>
        </div>
        
        <!-- Next & Previous Step -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 40px;" align="center">
          <button type="button" class="btn btn-info" onclick='$("#selectBurger").attr("hidden","hidden"); $("#selectSide").removeAttr("hidden");'>
            <span class="glyphicon glyphicon-chevron-right"></span><br>
            <font>사이드 메뉴 선택</font>
          </button>
        </div>
               
      </div>
      
      <!-- Select Side -->
      <div id="selectSide" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 30px;">
          <div style="display: inline-block; float: left;">
            <div class="input-group" style="width: 300px;">
              <span class="input-group-addon">메뉴 이름</span>
              <input id="login_id" type="text" class="form-control menu_name" placeholder="메뉴의 이름을 입력하세요" onblur="saveMenuName(this)" style="width: 200px;">
            </div>
          </div>
          
          <a onclick='cancelMenu()' style="height: 40px; width: 20px; display: inline-block; float: right;"><span class="glyphicon glyphicon-remove"></span></a>
          
        </div>
        
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 30px;">
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>1단계 : 버거 선택</p>
            <p id="selectedBurger">햄버거 이름 (0원)</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 2px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <b>
	            <p>2단계 : 사이드 선택</p>
	            <p id="selectedSide">사이드 이름 (0원)</p>
            </b>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>3단계 : 음료 선택</p>
            <p id="selectedBeverage">음료 이름 (0원)</p>
          </div>
        </div>
        
        <div style="height: 400px; width:620px; margin: 10px; margin-top: 30px;">
        </div>
        
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 20px;">
          <button onclick='$("#selectSide").attr("hidden","hidden"); $("#selectBurger").removeAttr("hidden");'>버거 선택</button>
          <button onclick='$("#selectSide").attr("hidden","hidden"); $("#selectBeverage").removeAttr("hidden");'>음료 선택</button>
        </div>
                
      </div>
      
      <!-- Select Beverage -->
      <div id="selectBeverage" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 30px;">
          <div style="display: inline-block; float: left;">
            <div class="input-group" style="width: 300px;">
              <span class="input-group-addon">메뉴 이름</span>
              <input id="login_id" type="text" class="form-control menu_name" placeholder="메뉴의 이름을 입력하세요" onblur="saveMenuName(this)" style="width: 200px;">
            </div>
          </div>
          
          <a onclick='cancelMenu()' style="height: 40px; width: 20px; display: inline-block; float: right;"><span class="glyphicon glyphicon-remove"></span></a>
          
        </div>
        
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 30px;">
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
	          <p>1단계 : 버거 선택</p>
	          <p id="selectedBurger">햄버거 이름 (0원)</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>2단계 : 사이드 선택</p>
            <p id="selectedSide">사이드 이름 (0원)</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 2px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <b>
		          <p>3단계 : 음료 선택</p>
		          <p id="selectedBeverage">음료 이름 (0원)</p>
            </b>
          </div>
        </div>
        
        <div style="height: 400px; width:620px; margin: 10px; margin-top: 30px;">
        </div>
        
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 20px;">
          <button onclick='$("#selectBeverage").attr("hidden","hidden"); $("#selectSide").removeAttr("hidden");'>사이드 메뉴 선택</button>  
          <button onclick="addCart()">메뉴 구성 완료</button>
        </div>
        
      </div>
      
      <div id="orderMenu" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        <p>결제 DIV 영역</p>
      </div>
      
      <!-- Add Cart Script -->
      <script type="text/javascript">
      var cartHeight = 1;
      var menuName = null;
      var burgerSeq = null, burgerName = null, burgerPrice = null, burgerCal = null;
      var sideSeq = null, sideName = null, sidePrice = null, sideCal = null;
      var beverageSeq = null, beverageName = null, beveragePrice = null, beverageCal = null;
      
      function saveMenuName(input){
        menuName = input.value;
        $(".menu_name").val(input.value);
      }
      
      function saveBurger(){
        menuName = input.value;
        $(".menu_name").val(input.value);
      }
      
      function saveSide(){
        menuName = input.value;
        $(".menu_name").val(input.value);
      }
      
      function saveBevarage(){
        menuName = input.value;
        $(".menu_name").val(input.value);
      }
      
      function newMenu() {
        if (cartHeight >= 7){
          alert("장바구니가 가득 차서 상품을 담을 수 없습니다.");
          return;
        }
        
        menuName = null;
        
        $("#selectMenu").attr("hidden","hidden");
        $("#selectBurger").removeAttr("hidden");
        
      }
      
      function cancelMenu() {
        
        menuName = null;
        
        $("#selectBurger").attr("hidden","hidden");
        $("#selectBeverage").attr("hidden","hidden");
        $("#selectSide").attr("hidden","hidden");
        $("#selectMenu").removeAttr("hidden");
        
      }
      
			function addCart(){
			  $("#cartList").append("<div style='margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;'></div>");
        $("#cartDiv").height(40+(cartHeight*70));
        cartHeight ++;
        
        $("#selectBeverage").attr("hidden","hidden");
        $("#selectMenu").removeAttr("hidden");
			}
      </script>     
    </div>
    
    <!-- Cart and Pay -->
    <div style="margin-left:10px; display:block; height: 800px; width:350px; float: left;">
      
      <!-- Cart -->
      <div id="cartDiv" style="border: 1px solid #999999; border-radius: 4px; height: 60px; width:350px; padding: 10px;" align="center">
        <div>장바구니</div>
        <hr style="margin-top:10px; width: 300px; border-color: #aaaaaa;">
        <div id="cartList">
        </div>
      </div>
      
      <!-- Pay -->
      <div style="margin-top:20px; border: 1px solid #999999; border-radius: 4px; height: 300px; width:350px; padding: 10px;" align="center">
        
        <div>내 주문 정보</div>
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">주소지</label><br>
          <div style="margin-top: 5px; height : 30px; width:330px; padding-top: 5px;">
            <select style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px; float: left;">
              <option>주소지 1</option>
              <option>주소지 2</option>
              <option>주소지 3</option>
            </select>
            <a href="#" style="font-size: 12px;">변경</a>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">예정 도착 시각</label><br>
          <div style="margin-top: 5px; padding-top: 5px;">
            <div style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px;  float: left; padding:3px;">
             <font style="float:left;">2018/04/05 14:05</font>
            </div>
            <a href="#" style="font-size: 12px;">변경</a>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">결제 금액</label><br>
          <div style="margin-top: 5px; height: 30px; width:330px; padding-right: 10px;" align="right">
            <font style="font-size: 20px;">0</font>
            <label style="font-size: 20px;">원</label>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <button class="btn btn-success" style="width: 240px; height:26px; margin-top:10px; padding-top: 2px;" type="button">주문하기</button>
        
      </div>
      
    </div>
  </div>
 
  <!-- Burger Modal -->
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
        <form action="BurgerController" method="get" name="burgerInfo">
          <input id="saveburgertype" type="hidden" name="command" value="addBurger">
          
          <!-- Name input-->
          <div style="width: 780px; height: 40px;">
            <div class="input-group" style="width: 300px; float:left;">
              <span class="input-group-addon">이름</span> 
              <input id="burgername" name="burgername" type="text" class="form-control" 
              placeholder="햄버거의 이름을 입력해주세요" required>
            </div>
          </div>
          
          <!-- Burger Ingredient -->
          <div style="height:440px; width: 780px; margin-top:10px;">
          
            <!-- Ingredient List -->
            <div style="height:440px; width: 320px; float: left;">
              <div id="ingredientList" style="border:1px solid lightgray; border-radius: 4px; height:440px; width: 320px; vertical-align: bottom; display: table-cell;" align="center">            
                
                <div style="height:30px; width: 318px; margin-bottom: 30px; z-index: 0; position: relative; display: block;">
                  
                </div>
                
               </div>
            </div>
            
            <!-- Ingredient Select -->
            <div style="border:1px solid lightgray; border-radius: 4px; height:440px; width: 450px; float: right; display: inline-block;">
              
              <!-- Bread and Meat Select -->
              <div style="height:220px; width: 440px;">
                
              </div>
              
              <!-- Lettuce and Etc Select -->
              <div style="height:220px; width: 440px;">
                
              </div>
              
            </div>
          </div>
          
          <div style="width: 780px; margin-top:10px; height: 40px; padding-top: 2px;" align="center">
            <button id="save_burger" class="btn btn-success" type="submit">햄버거 저장</button>
          </div>
          
        </form>
      </div>
        
    </div>
            
    <!-- Burger Edit Script Part -->
    <script type="text/javascript">
    var ingredientList = [];
    var idCount = 0;
    var ingredientCount = 0;
    
    function changeBun(option) {
      $("#bread_down").attr("src", option.value);
      $("#bread_down_name").text(option.text);
    }
    
    function addIngredient(option) {
      if (ingredientCount>=9) {alert("더 이상 재료를 추가할 수 없습니다."); return;}
      
      idCount += 1;
      ingredientCount += 1;
      
      var newIngredient = '<div id="div' +idCount+ '" style="height:30px; width: 318px; margin-top: 5px; z-index:' + idCount + '; position: relative; display: block;">';
      
      newIngredient += '<div style="height:30px; width: 140px; float:left;" align="center">';
      newIngredient += '<img id="img' +idCount+ '" src="' +option.value+ '" style="height: 50px; width: 100px; margin-top:-110px; opacity:0.2;">';
      newIngredient += '</div>';
      
      newIngredient += '<div style="height:30px; width: 120px; float:left; padding-top: 5px;" align="center">';
      newIngredient += '<p>' +option.text+ '</p>';
      newIngredient += '</div>';
      
      newIngredient += '<div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">';
      newIngredient += '<button name="div' +idCount+ '" style="height:20px; width: 20px; padding:0px;" class="btn btn-danger glyphicon glyphicon-remove" onclick="delRow(this)" type="button"></button>';
      newIngredient += '</div>';
      
      newIngredient += '</div>';
      
      $('#ingredientList').prepend(newIngredient);
      $('#img'+idCount).animate({marginTop: "+=100px", opacity: "1"});
      
      $("#pattySelect option:selected").prop("selected", false);
      $("#vegeSelect option:selected").prop("selected", false);
      $("#etcSelect option:selected").prop("selected", false);
      
      ingredientList += ("div" + idCount);
    }
  
    //행 삭제
    function delRow (button){
      ingredientCount -= 1;
      alert($('#'+button.name));
      $(button).parent().parent().remove();
    }
    
    //버거 모달 로딩
    function loadBurger() {
    }
    
    //버거 모달 초기화
    function initBurgerModal() {
      
      for (var i = 0; i < divIdList.length; i++) {
        $("#"+divIdList[i]).remove();
      }
      
      ingredientList = [];
      divIdList = [];
      ingredientIdCount = 0;
      ingredientCount = 0;
    }
        
    $('#save_burger').submit(function(e) {
      e.preventDefault();
      $('#burgerModal').modal('toggle');
      return false;
    });
    </script>

  </div>
   