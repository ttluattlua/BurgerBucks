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
        
        <div style="height: 300px; width:640px; padding-top: 60px;" align="center">
	        <a class="flat_a" onclick='newMenu()' style="cursor: pointer;">
	          <font size="14px;" color="#a31c04">새로운 메뉴 추가하기</font><br>
	          <span style="font-size: 40px; color: #a31c04; margin-top: 20px;" class="glyphicon glyphicon-plus-sign"></span>
	        </a>
        </div>
        
        <div style="height: 500px; width:640px;" align="center">
          <div style="height: 480px; width:620px; border: 1px solid #999999; border-radius: 4px; padding: 10px;" align="left"> 
          <font>즐겨찾기</font>
          </div>
          
        </div>
        
      </div>
      
      <!-- Select Burger Div -->
      <div id="selectBurger" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        
        <!-- Cancel Button -->
        <div style="height: 30px; width:620px; margin: 10px; margin-top: 10px;">
          <span style="height: 30px; width: 30px; font-size: 20px; float: right; cursor: pointer;" onclick='cancelMenu()' class="glyphicon glyphicon-remove"></span>
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
            <div style="height: 60px; width:140px; margin-top: 10px;">
              <div style="height: 60px; width:100px; display: inline-block; float: left;" align="left">
                <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 5px;">버거 이름</p></b>
                <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 5px;">버거 가격</p>
                <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
              </div>
              <div style="height: 60px; width:40px; display: inline-block; float: left; ">
                <button id="previewBurgerDelete" onclick="deleteBurger()" class="btn btn-danger" style="font-size: 8px; width:40px; height: 40px; padding-left: 8px; margin-top:10px;" hidden="hidden">삭제</button>
              </div>
            </div>
          </div>
          
          <!-- DIY Burger Carousel -->
          <div style="height: 220px; width:420px; margin-left: 20px;  display: inline-block; float: left">
          
            <div style="height: 18px; width:420px;"><p style="font-size: 10px;">DIY 버거</p></div>
            
            <div id="diyBurgerCarousel" class="carousel slide" style="height: 200px; width:420px; border: 1px solid #999999; border-radius: 4px; background-color: #999999;">
                        
	            <!-- Carousel items -->
	            <div class="carousel-inner">
	            
	              <div class="item active" style="height: 200px; width:420px; ">
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
			              <img src="http://placehold.it/100x100" style="border-radius: 4px;">
			            </div>
			            <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
		                <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
		                <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
	              </div>
	           
	              <div class="item" style="height: 200px; width:420px; ">
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                </div>
	          
	            </div>
	            
	            <a data-slide="prev" href="#diyBurgerCarousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
	            <a data-slide="next" href="#diyBurgerCarousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>
	
		        </div>
          </div>
        </div>
        
        <!-- Select Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 10px;">
          
            <div style="height: 18px; width:620px;"><p style="font-size: 10px;">버거벅스 버거</p></div>
            
            <div id="BurgerCarousel" class="carousel slide" style="height: 200px; width:620px; border: 1px solid #999999; border-radius: 4px; background-color: #999999; padding-left: 30px;">
                        
              <!-- Carousel items -->
              <div class="carousel-inner">
              
                <div class="item active" style="height: 200px; width:620px; ">
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                </div>
                
                <div class="item" style="height: 200px; width:620px; ">
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                  
                  <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; cursor: pointer;" align="center" onclick='alert("asd");'>
                    <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                    <img src="http://placehold.it/100x100" style="border-radius: 4px;">
                  </div>
                  <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                      <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 3px;">버거 이름</p></b>
                    <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 3px;">버거 가격</p>
                    <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;">버거 칼로리</p>
                    </div>
                  </div>
                </div>
            
              </div>
              
              <a data-slide="prev" href="#BurgerCarousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
              <a data-slide="next" href="#BurgerCarousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>
  
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
      
      <!-- Order End -->
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
      
      function orderMenu() {
        
        menuName = null;
        
        $("#selectMenu").attr("hidden","hidden");
        $("#selectBurger").attr("hidden","hidden");
        $("#selectBeverage").attr("hidden","hidden");
        $("#selectSide").attr("hidden","hidden");
        $("#orderMenu").removeAttr("hidden");  
        
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
        <button class="btn btn-success" style="width: 240px; height:26px; margin-top:10px; padding-top: 2px;" type="button" onclick="orderMenu()">주문하기</button>
        
      </div>
      
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
                  <div style="height:30px; width: 140px; float:left;" align="center">
                    <%-- <img src="<%=bun_list.get(0).getImage_Src()%>" id="bread_down" style="height: 50px; width: 100px; margin-top:-10px;"> --%>
                  </div>
                  <div style="height:30px; width: 120px; float:left; padding-top:5px;" align="center">
                    <%-- <p id="bread_down_name"><%=bun_list.get(0).getName()%></p> --%>
                  </div>
                  <div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">
                  </div>
                </div>
                
               </div>
            </div>
            
            <!-- Ingredient Select -->
            <div style="border:1px solid lightgray; border-radius: 4px; height:440px; width: 450px; float: right; display: inline-block;">
              
              <!-- Bread and Meat Select -->
              <div style="height:220px; width: 440px;">
                <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">햄버거 번</label><br>
                  <select class="form-control" id='bunSelect' name='bunSelect' style="width: 180px; float:left;" size="8">
                   <%--  <%for (int i=0; i<bun_list.size(); i++) { %>
                        <option onclick="changeBun(this)" value="<%=bun_list.get(i).getImage_Src()%>" id="<%=bun_list.get(i).getSeq()%>"><%=bun_list.get(i).getName()%></option>
                    <%}%> --%>
                  </select>
                </div>
                
                <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">패티</label><br>
                  <select class="form-control" id='pattySelect' name='pattySelect' style="width: 180px; float:left;" size="8">
                   <%--  <%for (int i=0; i<patty_list.size(); i++) { %>
                        <option onclick="addIngredient(this)" value="<%=patty_list.get(i).getImage_Src()%>" id="<%=patty_list.get(i).getSeq()%>"><%=patty_list.get(i).getName()%></option>
                    <%}%> --%>
                  </select>
                </div>
              </div>
              
              <!-- Lettuce and Etc Select -->
              <div style="height:220px; width: 440px;">
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">채소</label><br>
                  <select class="form-control" id='vegeSelect' name='vegeSelect' style="width: 180px; float:left;" size="8">
                    <%-- <%for (int i=0; i<vege_list.size(); i++) { %>
                        <option onclick="addIngredient(this)" value="<%=vege_list.get(i).getImage_Src()%>" id="<%=vege_list.get(i).getSeq()%>"><%=vege_list.get(i).getName()%></option>
                    <%}%> --%>
                  </select>
                </div>
                
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">기타</label><br>
                  <select class="form-control" id='etcSelect' name='etcSelect' style="width: 180px; float:left;" size="8">
                    <%-- <%for (int i=0; i<etc_list.size(); i++) { %>
                        <option onclick="addIngredient(this)" value="<%=etc_list.get(i).getImage_Src()%>" id="<%=etc_list.get(i).getSeq()%>"><%=etc_list.get(i).getName()%></option>
                    <%}%> --%>
                  </select>
                </div>
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
  
  
  <!-- Carousel Control -->
  <script>
  $('.carousel').carousel({
    interval: false;
  }); 
  </script> 