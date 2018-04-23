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
<<<<<<< HEAD
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
=======
    <div style="display:block; height: 800px; width:640px; float: left; border: 1px solid #999999; border-radius: 4px;">
>>>>>>> parent of c7cf759... 주문 부분 합치기 거의 완료
                
    </div>
    
    <!-- Cart and Pay -->
    <div style="margin-left:10px; display:block; height: 800px; width:350px; float: left;">
      
      <!-- Cart -->
      <div style="border: 1px solid #999999; border-radius: 4px; height: 480px; width:350px; padding: 10px;" align="center">
        <div>장바구니</div>
        <hr style="margin-top:10px; width: 300px; border-color: #aaaaaa;">
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
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
  