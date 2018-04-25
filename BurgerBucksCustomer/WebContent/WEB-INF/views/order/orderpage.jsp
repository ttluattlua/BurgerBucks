<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

  <!-- Guide -->
  <div style="width: 1000px; height: 30px; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;" align="center">
    <div style="width: 600px; height: 30px; background-color: white; border: 1px solid #999999; border-radius: 4px; padding: 5px;">
      <p>메뉴를 만들어서 장바구니에 추가해주세요</p>
    </div>
  </div>
        
  <!-- Order and Cart and Pay -->
  <div style="padding: 0; margin: 0 auto; margin-top:20px; height: 800px; width: 1000px; margin-bottom: 20px;">
  
    <!-- Order --> 
    <div style="display:block; height: 800px; width:640px; float: left;">
      
      <!-- Select Menu Div -->
      <div id="selectMenuDiv" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" >
        
        <div style="height: 300px; width:640px; padding-top: 60px;" align="center">
          <a class="flat_a" onclick='newMenu()' style="cursor: pointer;">
            <font size="14px;" color="#a31c04">새로운 메뉴 추가하기</font><br>
            <span style="font-size: 40px; color: #a31c04; margin-top: 20px;" class="glyphicon glyphicon-plus-sign"></span>
          </a>
        </div>
        
        <!-- <div style="height: 500px; width:640px;" align="center">
          <div style="height: 480px; width:620px; border: 1px solid #999999; border-radius: 4px; padding: 10px;" align="left"> 
          <font>즐겨찾기</font>
          </div>
        </div> -->
        
      </div>
      
      <!-- Select Burger Div -->
      <div id="selectBurgerDiv" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        
        <!-- Cancel Button -->
        <div style="height: 30px; width:620px; margin: 10px; margin-top: 10px;">
          <span style="height: 30px; width: 30px; font-size: 20px; float: right; cursor: pointer;" onclick='cancelMenu()' class="glyphicon glyphicon-remove"></span>
        </div>
        
        <!-- Menu Name -->
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 10px;">
          <div class="input-group" style="width: 300px;">
            <span class="input-group-addon">메뉴 이름</span>
            <input type="text" class="form-control menu_name" placeholder="메뉴의 이름을 입력하세요" onblur="saveMenuName(this)" style="width: 200px;">
          </div>
        </div>
        
        <!-- Step Indication -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 20px;">
          <div style="height: 60px; width:160px; border: 2px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <b>
              <p>1단계 : 버거 선택</p>
              <p class="selectedBurger">-</p>
            </b>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>2단계 : 사이드 선택</p>
            <p class="selectedSide">-</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>3단계 : 음료 선택</p>
            <p class="selectedBeverage">-</p>
          </div>
        </div>
        
        <!-- Selected Burger Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 30px;">
        
          <!-- Preview Menu -->
          <div style="height: 220px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block; float: left" align="center">
            <div style="height: 120px; width:120px; border: 1px solid #999999; border-radius: 4px;  margin-top: 10px;">
              <img id="previewBurgerImg" alt="이미지 없음" src="" style="width:120px; height:120px; border-radius: 4px;">
            </div>
            <div style="height: 60px; width:140px; margin-top: 10px;">
              <div style="height: 60px; width:100px; display: inline-block; float: left;" align="left">
                <b><p id="previewBurgerName" style="font-size: 12px; margin-bottom: 5px;"></p></b>
                <p id="previewBurgerPrice" style="font-size: 8px; margin-bottom: 5px;"></p>
                <p id="previewBurgerCal" style="font-size: 8px;  margin: 0px;"></p>
              </div>
              <div style="height: 60px; width:40px; display: inline-block; float: left; ">
                <button id="previewBurgerDelete" onclick="deleteBurger()" class="btn btn-danger" style="font-size: 8px; width:40px; height: 40px; padding-left: 8px; margin-top:10px; display: none;">삭제</button>
              </div>
            </div>
          </div>
          
          <!-- DIY Burger Carousel -->
          <div style="height: 220px; width:420px; margin-left: 20px;  display: inline-block; float: left">
          
            <div style="height: 18px; width:420px;"><p style="font-size: 10px;">DIY 버거</p></div>
            
            <div id="diyBurgerCarousel" class="carousel slide" style="height: 200px; width:420px; border: 1px solid #383838; border-radius: 4px; background-color: #383838;">
                        
              <!-- Carousel items -->
              <div class="carousel-inner">
              <c:if test="${fn:length(BurgerListDiy) eq 0}">           
                  <div class="item active" style="height: 200px; width:420px;">
                    
                  </div>
              </c:if>
                
              <c:forEach var="diyBurgerDto" items="${BurgerListDiy}" varStatus="status">
                
                <c:if test="${status.count%3 eq 1 and status.count eq 1}">           
                  <div class="item active" style="height: 200px; width:420px;">
                </c:if>
                <c:if test="${status.count%3 eq 1 and status.count ne 1}">           
                  <div class="item" style="height: 200px; width:420px;">
                </c:if>
                
                    <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; background-color: #e0e0e0; cursor: pointer;" align="center" onclick="saveBurger(${diyBurgerDto.seq}, ${diyBurgerDto.name}, ${diyBurgerDto.price}, ${diyBurgerDto.cal}, 'http://192.168.10.26:8090/upload/'${diyBurgerDto.image_Src})">
                      <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                      <img id="BurgerImg${diyBurgerDto.seq}" alt="이미지 없음" src="http://192.168.10.26:8090/upload/${diyBurgerDto.image_Src}" style="width:100px; height:100px; border-radius: 4px;">
                    </div>
                    <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                        <b><p id="BurgerName${diyBurgerDto.seq}" style="font-size: 12px; margin-bottom: 3px;">${diyBurgerDto.name}</p></b>
                      <p id="BurgerPrice${diyBurgerDto.seq}" style="font-size: 8px; margin-bottom: 3px;">${diyBurgerDto.price}</p>
                      <p id="BurgerCal${diyBurgerDto.seq}" style="font-size: 8px;  margin: 0px;">${diyBurgerDto.cal}</p>
                      </div>
                    </div>
                
                <c:if test="${status.count%3 eq 0}">
                  </div> 
                </c:if>
                <c:if test="${status.count%3 eq 1 and status.count eq fn:length(BurgerListDiy)}">           
                  </div>
                </c:if>
                <c:if test="${status.count%3 eq 2 and status.count eq fn:length(BurgerListDiy)}">
                  </div>      
                </c:if>
              </c:forEach>
            
              </div>
              
              <a data-slide="prev" href="#diyBurgerCarousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
              <a data-slide="next" href="#diyBurgerCarousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>
  
            </div>
          </div>
        </div>
        
        <!-- Select Burger Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 10px;">
          
            <div style="height: 18px; width:620px;"><p style="font-size: 10px;">버거벅스 버거</p></div>
            
            <div id="BurgerCarousel" class="carousel slide" style="height: 200px; width:620px; border: 1px solid #999999; border-radius: 4px; background-color: #383838; padding-left: 30px;">
                     
              <!-- Carousel items -->
              <div class="carousel-inner">
              <c:forEach var="defaultBurgerDto" items="${BurgerListDefault}" varStatus="status">
                
                <c:if test="${status.count%4 eq 1 and status.count eq 1}">           
                  <div class="item active" style="height: 200px; width:620px;">
                </c:if>
                <c:if test="${status.count%4 eq 1 and status.count ne 1}">           
                  <div class="item" style="height: 200px; width:620px;">
                </c:if>
                
                    <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; background-color: #e0e0e0; cursor: pointer;" align="center" onclick="saveBurger(${defaultBurgerDto.seq})">
                      <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                        <img id="BurgerImg${defaultBurgerDto.seq}" alt="이미지 없음" src="http://192.168.10.26:8090/upload/${defaultBurgerDto.image_Src}" style="width:100px; height:100px; border-radius: 4px;">
                      </div>
                      <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                        <b><p id="BurgerName${defaultBurgerDto.seq}" style="font-size: 12px; margin-bottom: 3px;">${defaultBurgerDto.name}</p></b>
                        <p id="BurgerPrice${defaultBurgerDto.seq}" style="font-size: 8px; margin-bottom: 3px;">${defaultBurgerDto.price}</p>
                        <p id="BurgerCal${defaultBurgerDto.seq}" style="font-size: 8px;  margin: 0px;">${defaultBurgerDto.cal}</p>
                      </div>
                    </div>
                
                <c:if test="${status.count%4 eq 0}">
                  </div> 
                </c:if>
                <c:if test="${status.count%4 eq 1 and status.count eq fn:length(BurgerListDefault)}">           
                  </div>
                </c:if>
                <c:if test="${status.count%4 eq 2 and status.count eq fn:length(BurgerListDefault)}">
                  </div>      
                </c:if>
                <c:if test="${status.count%4 eq 3 and status.count eq fn:length(BurgerListDefault)}">
                  </div>      
                </c:if>
              </c:forEach>
              </div>
              
              <a data-slide="prev" href="#BurgerCarousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
              <a data-slide="next" href="#BurgerCarousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>
            </div> 
            
        </div>
        
        <!-- Add DIY Burger Button -->
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 10px;" align="right">
          <button class="btn btn-warning" data-toggle="modal" data-target="#burgerModal2">나만의 버거 만들기</button>
        </div>
        
        <!-- Next & Previous Step -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 40px;" align="center">
          <button type="button" class="btn btn-info" onclick='$("#selectBurgerDiv").attr("hidden","hidden"); $("#selectSideDiv").removeAttr("hidden");'>
            <span class="glyphicon glyphicon-chevron-right"></span><br>
            <font>사이드 메뉴 선택</font>
          </button>
        </div>
               
      </div>
      
      <!-- Select Side Div -->
      <div id="selectSideDiv" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        
        <!-- Cancel Button -->
        <div style="height: 30px; width:620px; margin: 10px; margin-top: 10px;">
          <span style="height: 30px; width: 30px; font-size: 20px; float: right; cursor: pointer;" onclick='cancelMenu()' class="glyphicon glyphicon-remove"></span>
        </div>
        
        <!-- Menu Name -->
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 10px;">
          <div class="input-group" style="width: 300px;">
            <span class="input-group-addon">메뉴 이름</span>
            <input type="text" class="form-control menu_name" placeholder="메뉴의 이름을 입력하세요" onblur="saveMenuName(this)" style="width: 200px;">
          </div>
        </div>
        
        <!-- Step Indication -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 20px;">
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>1단계 : 버거 선택</p>
            <p class="selectedBurger">-</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 2px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <b>
              <p>2단계 : 사이드 선택</p>
              <p class="selectedSide">-</p>
            </b>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>3단계 : 음료 선택</p>
            <p class="selectedBeverage">-</p>
          </div>
        </div>
        
        <!-- Selected Side Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 30px;">
        
          <!-- Preview Menu -->
          <div style="height: 220px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block; float: left" align="center">
            <div style="height: 120px; width:120px; border: 1px solid #999999; border-radius: 4px;  margin-top: 10px;">
              <img id="previewSideImg" alt="이미지 없음" src="" style="width:120px; height:120px; border-radius: 4px;">
            </div>
            <div style="height: 60px; width:140px; margin-top: 10px;">
              <div style="height: 60px; width:100px; display: inline-block; float: left;" align="left">
                <b><p id="previewSideName" style="font-size: 12px; margin-bottom: 5px;"></p></b>
                <p id="previewSidePrice" style="font-size: 8px; margin-bottom: 5px;"></p>
                <p id="previewSideCal" style="font-size: 8px;  margin: 0px;"></p>
              </div>
              <div style="height: 60px; width:40px; display: inline-block; float: left; ">
                <button id="previewSideDelete" onclick="deleteSide()" class="btn btn-danger" style="font-size: 8px; width:40px; height: 40px; padding-left: 8px; margin-top:10px; display: none;">삭제</button>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Select Side Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 10px;" >
          
            <div style="height: 18px; width:620px;"><p style="font-size: 10px;">버거벅스 사이드 메뉴</p></div>
            
            <div id="SideCarousel" class="carousel slide" style="height: 200px; width:620px; border: 1px solid #999999; border-radius: 4px; background-color: #383838; padding-left: 30px;">
                     
              <!-- Carousel items -->
              <div class="carousel-inner">
              
              <c:forEach var="SideDto" items="${SideList}" varStatus="status">
                <c:if test="${status.count%4 eq 1 and status.count eq 1}">           
                  <div class="item active" style="height: 200px; width:620px;">
                </c:if>
                <c:if test="${status.count%4 eq 1 and status.count ne 1}">           
                  <div class="item" style="height: 200px; width:620px;">
                </c:if>
                
                    <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; background-color: #e0e0e0; cursor: pointer;" align="center" onclick="saveSide(${SideDto.seq})">
                      <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                        <img id="SideImg${SideDto.seq}" alt="이미지 없음" src="http://192.168.10.26:8090/upload/${SideDto.image_Src}" style="width:100px; height:100px; border-radius: 4px;">
                      </div>
                      <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                        <b><p id="SideName${SideDto.seq}" style="font-size: 12px; margin-bottom: 3px;">${SideDto.name}</p></b>
                        <p id="SidePrice${SideDto.seq}" style="font-size: 8px; margin-bottom: 3px;">${SideDto.price}</p>
                        <p id="SideCal${SideDto.seq}" style="font-size: 8px;  margin: 0px;">${SideDto.cal}</p>
                      </div>
                    </div>
                
                <c:if test="${status.count%4 eq 0}">
                  </div> 
                </c:if>
                <c:if test="${status.count%4 eq 1 and status.count eq fn:length(SideList)}">           
                  </div>
                </c:if>
                <c:if test="${status.count%4 eq 2 and status.count eq fn:length(SideList)}">
                  </div>      
                </c:if>
                <c:if test="${status.count%4 eq 3 and status.count eq fn:length(SideList)}">
                  </div>      
                </c:if>
              </c:forEach>
              
              </div>
              
              <a data-slide="prev" href="#SideCarousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
              <a data-slide="next" href="#SideCarousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>
            </div> 
            
        </div>                
        
        <!-- Next & Previous Step -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 90px;" align="center">
          <button type="button" class="btn btn-info" onclick='$("#selectSideDiv").attr("hidden","hidden"); $("#selectBurgerDiv").removeAttr("hidden");'>
            <span class="glyphicon glyphicon-chevron-left"></span><br>
            <font>버거 메뉴 선택</font>
          </button>
          
          <button type="button" class="btn btn-info" onclick='$("#selectSideDiv").attr("hidden","hidden"); $("#selectBeverageDiv").removeAttr("hidden");'>
            <span class="glyphicon glyphicon-chevron-right"></span><br>
            <font>음료 메뉴 선택</font>
          </button>
        </div>
                
      </div>
      
      <!-- Select Beverage Div -->
      <div id="selectBeverageDiv" style="height: 800px; width:640px; border: 1px solid #999999; border-radius: 4px;" hidden="hidden">
        
        <!-- Cancel Button -->
        <div style="height: 30px; width:620px; margin: 10px; margin-top: 10px;">
          <span style="height: 30px; width: 30px; font-size: 20px; float: right; cursor: pointer;" onclick='cancelMenu()' class="glyphicon glyphicon-remove"></span>
        </div>
        
        <!-- Menu Name -->
        <div style="height: 40px; width:620px; margin: 10px; margin-top: 10px;">
          <div class="input-group" style="width: 300px;">
            <span class="input-group-addon">메뉴 이름</span>
            <input type="text" class="form-control menu_name" placeholder="메뉴의 이름을 입력하세요" onblur="saveMenuName(this)" style="width: 200px;">
          </div>
        </div>
        
        <!-- Step Indication -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 20px;">
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>1단계 : 버거 선택</p>
            <p class="selectedBurger">-</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <p>2단계 : 사이드 선택</p>
            <p class="selectedSide">-</p>
          </div>
          <div style="height: 60px; width:60px; display: inline-block;">
            <span style="height: 60px; width:40px; font-size: 40px; margin-left: 10px;" class="glyphicon glyphicon-menu-right"></span>
          </div>
          <div style="height: 60px; width:160px; border: 2px solid #999999; border-radius: 4px; display: inline-block;" align="center">
            <b>
              <p>3단계 : 음료 선택</p>
              <p class="selectedBeverage">-</p>
            </b>
          </div>
        </div>
        
        <!-- Selected Beverage Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 30px;">
        
          <!-- Preview Menu -->
          <div style="height: 220px; width:160px; border: 1px solid #999999; border-radius: 4px; display: inline-block; float: left" align="center">
            <div style="height: 120px; width:120px; border: 1px solid #999999; border-radius: 4px;  margin-top: 10px;">
              <img id="previewBeverageImg" alt="이미지 없음" src="" style="width:120px; height:120px; border-radius: 4px;">
            </div>
            <div style="height: 60px; width:140px; margin-top: 10px;">
              <div style="height: 60px; width:100px; display: inline-block; float: left;" align="left">
                <b><p id="previewBeverageName" style="font-size: 12px; margin-bottom: 5px;"></p></b>
                <p id="previewBeveragePrice" style="font-size: 8px; margin-bottom: 5px;"></p>
                <p id="previewBeverageCal" style="font-size: 8px;  margin: 0px;"></p>
              </div>
              <div style="height: 60px; width:40px; display: inline-block; float: left; ">
                <button id="previewBeverageDelete" onclick="deleteBeverage()" class="btn btn-danger" style="font-size: 8px; width:40px; height: 40px; padding-left: 8px; margin-top:10px; display: none;">삭제</button>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Select Beverage Menu -->
        <div style="height: 220px; width:620px; margin: 10px; margin-top: 10px;">
          
            <div style="height: 18px; width:620px;"><p style="font-size: 10px;">버거벅스 음료 메뉴</p></div>
            
            <div id="BeverageCarousel" class="carousel slide" style="height: 200px; width:620px; border: 1px solid #999999; border-radius: 4px; background-color: #383838; padding-left: 30px;">
                     
              <!-- Carousel items -->
              <div class="carousel-inner">
              
              <c:forEach var="BeverageDto" items="${BeverageList}" varStatus="status">
                <c:if test="${status.count%4 eq 1 and status.count eq 1}">           
                  <div class="item active" style="height: 200px; width:620px;">
                </c:if>
                <c:if test="${status.count%4 eq 1 and status.count ne 1}">           
                  <div class="item" style="height: 200px; width:620px;">
                </c:if>
                
                    <div style="height: 180px; width:120px; display: inline-block; margin:8px; border: 1px solid #424242; border-radius: 4px; background-color: #e0e0e0; cursor: pointer;" align="center" onclick="saveBeverage(${BeverageDto.seq})">
                      <div style="height: 100px; width:100px; border: 1px solid #999999; border-radius: 4px; margin-top: 10px;">
                        <img id="BeverageImg${BeverageDto.seq}" alt="이미지 없음" src="http://192.168.10.26:8090/upload/${BeverageDto.image_Src}" style="width:100px; height:100px; border-radius: 4px;">
                      </div>
                      <div style="height: 60px; width:110px; margin-top: 10px;" align="left">
                        <b><p id="BeverageName${BeverageDto.seq}" style="font-size: 12px; margin-bottom: 3px;">${BeverageDto.name}</p></b>
                        <p id="BeveragePrice${BeverageDto.seq}" style="font-size: 8px; margin-bottom: 3px;">${BeverageDto.price}</p>
                        <p id="BeverageCal${BeverageDto.seq}" style="font-size: 8px;  margin: 0px;">${BeverageDto.cal}</p>
                      </div>
                    </div>
                
                <c:if test="${status.count%4 eq 0}">
                  </div> 
                </c:if>
                <c:if test="${status.count%4 eq 1 and status.count eq fn:length(BeverageList)}">           
                  </div>
                </c:if>
                <c:if test="${status.count%4 eq 2 and status.count eq fn:length(BeverageList)}">
                  </div>      
                </c:if>
                <c:if test="${status.count%4 eq 3 and status.count eq fn:length(BeverageList)}">
                  </div>      
                </c:if>
              </c:forEach>
              
              </div>
              
              <a data-slide="prev" href="#BeverageCarousel" class="left carousel-control" style="width: 30px;"><font size="50px;">‹</font></a>
              <a data-slide="next" href="#BeverageCarousel" class="right carousel-control" style="width: 30px;"><font size="50px;">›</font></a>
            </div> 
            
        </div>                
        
        <!-- Next & Previous Step -->
        <div style="height: 60px; width:620px; margin: 10px; margin-top: 90px;" align="center">
          <button type="button" class="btn btn-info" onclick='$("#selectBeverageDiv").attr("hidden","hidden"); $("#selectSideDiv").removeAttr("hidden");'>
            <span class="glyphicon glyphicon-chevron-left"></span><br>
            <font>사이드 메뉴 선택</font>
          </button>
          
          <button type="button" class="btn btn-info" onclick='saveCart()'>
            <span class="glyphicon glyphicon glyphicon-shopping-cart"></span><br>
            <font>장바구니에 저장</font>
          </button>
        </div>
                
      </div>
      
      <!-- Add Cart Script -->
      <script type="text/javascript">
      
      var cartHeight = 1;
      var menuName = null;
      var burgerSeq = null, sideSeq = null, beverageSeq = null;
      var burgerPrice = null, sidePrice = null, beveragePrice = null;
      var burgerCal = null, sideCal = null, beverageCal = null;
      
      var orderCount = 0;
      var orderMenuArray = new Array();
      
      var totalPrice = 0;
      var totalCal = 0;
      
      function saveMenuName(input){
        menuName = input.value;
        $(".menu_name").val(input.value);
      }
      
      function saveBurger(inputSeq){
        burgerSeq = inputSeq;
        burgerPrice = $("#BurgerPrice" + inputSeq).text();
        burgerCal = $("#BurgerCal" + inputSeq).text();        
        
        $("#previewBurgerDelete").css("display", "");
        
        $(".selectedBurger").text($("#BurgerName" + inputSeq).text() + "(" + $("#BurgerPrice" + inputSeq).text() + "원)");
        
        $("#previewBurgerImg").attr("src", $("#BurgerImg" + inputSeq).attr("src"));
        $("#previewBurgerName").text($("#BurgerName" + inputSeq).text());
        $("#previewBurgerPrice").text($("#BurgerPrice" + inputSeq).text());
        $("#previewBurgerCal").text($("#BurgerCal" + inputSeq).text());
      }
      
      function deleteBurger(){
        burgerSeq = null;
        burgerPrice = null;
        burgerCal = null;
        
        $("#previewBurgerDelete").css("display", "none");
        
        $(".selectedBurger").text("-");
        
        $("#previewBurgerImg").attr("src", "");
        $("#previewBurgerName").text("");
        $("#previewBurgerPrice").text("");
        $("#previewBurgerCal").text("");
      }
      
      function saveSide(inputSeq){
        sideSeq = inputSeq;
        sidePrice = $("#SidePrice" + inputSeq).text();
        sideCal = $("#SideCal" + inputSeq).text(); 
        
        $("#previewSideDelete").css("display", "");
        
        $(".selectedSide").text($("#SideName" + inputSeq).text() + "(" + $("#SidePrice" + inputSeq).text() + "원)");
        
        $("#previewSideImg").attr("src", $("#SideImg" + inputSeq).attr("src"));
        $("#previewSideName").text($("#SideName" + inputSeq).text());
        $("#previewSidePrice").text($("#SidePrice" + inputSeq).text());
        $("#previewSideCal").text($("#SideCal" + inputSeq).text());
      }
      
      function deleteSide(){
        sideSeq = null;
        sidePrice = null;
        sideCal = null; 
        
        $("#previewSideDelete").css("display", "none");
        
        $(".selectedSide").text("-");
        
        $("#previewSideImg").attr("src", "");
        $("#previewSideName").text("");
        $("#previewSidePrice").text("");
        $("#previewSideCal").text("");
      }
      
      function saveBeverage(inputSeq){
        beverageSeq = inputSeq;
        beveragePrice = $("#BeveragePrice" + inputSeq).text();
        beverageCal = $("#BeverageCal" + inputSeq).text(); 
        
        $("#previewBeverageDelete").css("display", "");
        
        $(".selectedBeverage").text($("#BeverageName" + inputSeq).text() + "(" + $("#BeveragePrice" + inputSeq).text() + "원)");
        
        $("#previewBeverageImg").attr("src", $("#BeverageImg" + inputSeq).attr("src"));
        $("#previewBeverageName").text($("#BeverageName" + inputSeq).text());
        $("#previewBeveragePrice").text($("#BeveragePrice" + inputSeq).text());
        $("#previewBeverageCal").text($("#BeverageCal" + inputSeq).text());
      }
      
      function deleteBeverage(){
        beverageSeq = null;
        beveragePrice = null;
        beverageCal = null;
        
        $("#previewBeverageDelete").css("display", "none");
        
        $(".selectedBeverage").text("-");
        
        $("#previewBeverageImg").attr("src", "");
        $("#previewBeverageName").text("");
        $("#previewBeveragePrice").text("");
        $("#previewBeverageCal").text("");
      }
      
      function newMenu() {
        if (cartHeight >= 7){
          alert("장바구니가 가득차서 새로운 메뉴를 추가할 수 없습니다.");
          return;
        }
        
        $("#selectMenuDiv").attr("hidden","hidden");
        $("#selectBurgerDiv").removeAttr("hidden");
        
      }
      
      function cancelMenu() {
        
        menuName = null;
        
        burgerSeq = null;
        burgerPrice = null;
        burgerCal = null;
        
        sideSeq = null;
        sidePrice = null;
        sideCal = null; 
        
        beverageSeq = null;
        beveragePrice = null;
        beverageCal = null;
        
        $("#previewBurgerDelete").css("display", "none");
        $("#previewSideDelete").css("display", "none");
        $("#previewBeverageDelete").css("display", "none");
        
        $(".selectedBurger").text("-");
        $(".selectedSide").text("-");
        $(".selectedBeverage").text("-");
        
        $("#previewBurgerImg").attr("src", "");
        $("#previewBurgerName").text("");
        $("#previewBurgerPrice").text("");
        $("#previewBurgerCal").text("");
        
        $("#previewSideImg").attr("src", "");
        $("#previewSideName").text("");
        $("#previewSidePrice").text("");
        $("#previewSideCal").text("");
        
        $("#previewBeverageImg").attr("src", "");
        $("#previewBeverageName").text("");
        $("#previewBeveragePrice").text("");
        $("#previewBeverageCal").text("");
        
        $("#selectBurgerDiv").attr("hidden","hidden");
        $("#selectBeverageDiv").attr("hidden","hidden");
        $("#selectSideDiv").attr("hidden","hidden");
        $("#selectMenuDiv").removeAttr("hidden");
        
      }

      
      function saveCart(){
        if(menuName == "" || menuName == null) {
          alert("메뉴 이름을 입력해주세요.");
          return;
        }
        
        if(burgerSeq == null || beverageSeq == null || sideSeq == null) {
          alert("선택되지 않은 메뉴가 존재합니다.");
          return;
        }
        addCart();
      }
      
      function addCart(){
        var price = Number(burgerPrice) + Number(beveragePrice) + Number(sidePrice);
        var cal = Number(burgerCal) + Number(beverageCal) + Number(sideCal);
        
        orderMenuArray[orderCount] = new Array();
        orderMenuArray[orderCount][0] = burgerSeq;
        orderMenuArray[orderCount][1] = sideSeq;
        orderMenuArray[orderCount][2] = beverageSeq;
        orderMenuArray[orderCount][3] = menuName;
        orderMenuArray[orderCount][4] = ${login.seq};
        orderMenuArray[orderCount][5] = price;
        orderMenuArray[orderCount][6] = cal;
        
        var cart = "";
        cart += "<div style='margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;'>";
        cart += "  <div style='height: 30px; width:330px; padding-left: 10px; padding-right: 10px;'>";
        cart += "    <font style='float: left;'>" + menuName + "</font>";
        cart += "    <font style='float: right;'>" + price + "원</font>";
        cart += "  </div>";
        /* cart += "  <div style='height: 30px; width:330px; padding-left: 10px; padding-right: 10px;'>";
        cart += "    <button style='float: left;'>편집</button>";
        cart += "    <button style='float: left;'>삭제</button>";
        cart += "    <button style='float: right;'>+</button>";
        cart += "    <font style='float: right; margin-right:10px; margin-left:10px;'>" + 1 + "</font>";
        cart += "    <button style='float: right;'>-</button>";
        cart += "  </div>"; */
        cart += "</div>";
        
        $("#cartDiv").height(40+(cartHeight*70));
        $("#cartList").append(cart);
        
        cartHeight++;
        orderCount++;
        
        totalPrice += price;
        $("#totalPrice").text(totalPrice);
        $(".menu_name").text("");
        
        cancelMenu();
      }
      
      function orderEnd() {
        
        if(orderMenuArray.length == 0) {
          alert("주문하려는 상품이 존재하지 않습니다.");
          return;
        }
        
        var orderSequence = 0;
        
        var data = {};
        var addrVal = $("#memberAddrSeq").val();
        
        data["seq"]= 0;
        data["member_seq"]=  ${login.seq};
        data["member_addr"]= addrVal;
        data["store_seq"]= 0;
        data["price"]= totalPrice;
        data["order_date"]= "SYSDATE";
        data["status"]= 0;
        data["del"]= 0;

        
        $.ajax({
          contentType:'application/json',
          dataType:'json',
          data:JSON.stringify(data),       //JavaScript 값을 JSON으로 변환 한다
          url:"orderEnd.do",         // store
          type:'POST',
          success:function(data){
            orderSequence = data;
            for (var i = 0; i < orderMenuArray.length; i++) {
              menuEnd(orderSequence, i);
            }
          },
          error:function(req, status, error){
             alert("error");
          }
        });
        
        alert("주문이 완료되었습니다.");
        location.href="home.do";
        
      }
      
      function menuEnd(orderSequence, i) {
        var menuSeq = 0;
        var data = {};
        
        data["burgerSeq"]= orderMenuArray[i][0];
        data["sideSeq"]=  orderMenuArray[i][1];
        data["beverageSeq"]= orderMenuArray[i][2];
        data["menuName"]= orderMenuArray[i][3];
        data["userSeq"]= orderMenuArray[i][4];
        data["price"]= orderMenuArray[i][5];
        data["cal"]= orderMenuArray[i][6];
        data["orderSeq"]= orderSequence;

        
        $.ajax({
          contentType:'application/json',
          dataType:'json',
          data:JSON.stringify(data),       //JavaScript 값을 JSON으로 변환 한다
          url:"menuEnd.do",         // store
          type:'POST',
          success:function(data){
            menuSeq = data;
            orderMenuEnd(menuSeq, orderSequence, i);
          },
          error:function(req, status, error){
             alert("error2");
          }
        });
         
      }
      
      function orderMenuEnd(menuSeq, orderSequence, i) {
        
        var data = {};
        
        data["menuSeq"]= menuSeq;
        data["orderSeq"]= orderSequence;
        data["price"]= orderMenuArray[i][5];
        data["cal"]= orderMenuArray[i][6];
        

        $.ajax({
          contentType:'application/json',
          dataType:'json',
          data:JSON.stringify(data),       //JavaScript 값을 JSON으로 변환 한다
          url:"orderMenuEnd.do",         // store
          type:'POST',
          success:function(data){
            alert(data);
          },
          error:function(req, status, error){
             /* alert("error3"); */
          }
        });
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
            <select id="memberAddrSeq" style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px; float: left;">
              <c:forEach var="AddrDto" items="${AddrList}" varStatus="status">
              <option value="${AddrDto.seq}">${AddrDto.address}</option>
              </c:forEach>
            </select>
            <a href="goAddr.do" style="font-size: 12px;">변경</a>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">예정 도착 시각</label><br>
          <div style="margin-top: 5px; padding-top: 5px;">
            <div style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px;  float: left; padding:3px;">
             <font style="float:left;" id="time_now">2018/04/05 14:05</font>
            </div>
            <!-- <a href="#" style="font-size: 12px;">변경</a> -->
          </div>
        </div>
        
        <!-- Timer Script -->
        <script type="text/javascript">
        $(document).ready(function () {
         
          var dateTimer = new Date();
          var dateYear = dateTimer.getFullYear();
          var dateMonth = dateTimer.getMonth() + 1;
          var dateDate = dateTimer.getDate();
          var dateHour = dateTimer.getHours();
          var dateMinute = dateTimer.getMinutes() + 30;
          
          $("#time_now").text(dateYear + "/" + dateMonth + "/" + dateDate + " " + dateHour + ":" + dateMinute);
          
          setInterval(function() {
            var dateTimer = new Date();
            var dateYear = dateTimer.getFullYear();
            var dateMonth = dateTimer.getMonth() + 1;
            var dateDate = dateTimer.getDate();
            var dateHour = dateTimer.getHours();
            var dateMinute = dateTimer.getMinutes() + 30;
            $("#time_now").text(dateYear + "/" + dateMonth + "/" + dateDate + " " + dateHour + ":" + dateMinute);
            }, 1000);
        });
        </script>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">결제 금액</label><br>
          <div style="margin-top: 5px; height: 30px; width:330px; padding-right: 10px;" align="right">
            <font id="totalPrice" style="font-size: 20px;">0</font>
            <label style="font-size: 20px;">원</label>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <button class="btn btn-success" style="width: 240px; height:26px; margin-top:10px; padding-top: 2px;" type="button" onclick="orderEnd()">주문하기</button>
        
      </div>
      
    </div>
  </div>
  
  <!-- DIY Burger Modal -->
  <div class="modal fade" id="burgerModal2" role="dialog" align="center" style="margin: auto; margin-top:100px; overflow: hidden;">
    
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
                    <img src="http://192.168.10.26:8090/upload/${first_bun.image_Src }" id="bread_down" style="height: 50px; width: 100px; margin-top:-10px;">
                  </div>
                  <div style="height:30px; width: 120px; float:left; padding-top:5px;" align="center">
                    <p id="bread_down_name">${first_bun.name }</p>
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
                    <c:forEach var="bunDto" items="${bun_list}" varStatus="status">
                      <option onclick="changeBun(this)" value="http://192.168.10.26:8090/upload/${bunDto.image_Src}" id="${bunDto.seq}">${bunDto.name}</option>
                    </c:forEach>
                  </select>
                </div>
                
                <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">패티</label><br>
                  <select class="form-control" id='pattySelect' name='pattySelect' style="width: 180px; float:left;" size="8">
                    <c:forEach var="pattyDto" items="${patty_list}" varStatus="status">
                      <option onclick="addIngredient(this)" value="http://192.168.10.26:8090/upload/${pattyDto.image_Src}" id="${pattyDto.seq}">${pattyDto.name}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              
              <!-- Lettuce and Etc Select -->
              <div style="height:220px; width: 440px;">
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">채소</label><br>
                  <select class="form-control" id='vegeSelect' name='vegeSelect' style="width: 180px; float:left;" size="8">
                    <c:forEach var="vegeDto" items="${vege_list}" varStatus="status">
                      <option onclick="addIngredient(this)" value="http://192.168.10.26:8090/upload/${vegeDto.image_Src}" id="${vegeDto.seq}">${vegeDto.name}</option>
                    </c:forEach>
                  </select>
                </div>
                
                <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                  <label class="control-label">기타</label><br>
                  <select class="form-control" id='etcSelect' name='etcSelect' style="width: 180px; float:left;" size="8">
                    <c:forEach var="etcDto" items="${etc_list}" varStatus="status">
                      <option onclick="addIngredient(this)" value="http://192.168.10.26:8090/upload/${etcDto.image_Src}" id="${etcDto.seq}">${etcDto.name}</option>
                    </c:forEach>
                  </select>
                </div>
              </div>
              
            </div>
          </div>
          
          <div style="width: 780px; margin-top:10px; height: 40px; padding-top: 2px;" align="center">
            <button id="save_burger" class="btn btn-success" onclick="alert('준비중입니다.'); return;">햄버거 저장</button>
          </div>
          
        </form>
      </div>
        
    </div>
            
    <!-- Burger Edit Script Part -->
    <script type="text/javascript">
    var ingredientList = [];
    var ingredientIdCount = 0;
    var ingredientCount = 0;
    
    function changeBun(option) {
      $("#bread_down").attr("src", option.value);
      $("#bread_down_name").text(option.text);
    }
    
    function addIngredient(option) {
      if (ingredientCount>=9) {alert("더 이상 재료를 추가할 수 없습니다."); return;}
      
      ingredientIdCount += 1;
      ingredientCount += 1;
      
      var newIngredient = '<div id="div' +ingredientIdCount+ '" style="height:30px; width: 318px; margin-top: 5px; z-index:' + ingredientIdCount + '; position: relative; display: block;">';
      
      newIngredient += '<div style="height:30px; width: 140px; float:left;" align="center">';
      newIngredient += '<img id="img' +ingredientIdCount+ '" src="' +option.value+ '" style="height: 50px; width: 100px; margin-top:-110px; opacity:0.2;">';
      newIngredient += '</div>';
      
      newIngredient += '<div style="height:30px; width: 120px; float:left; padding-top: 5px;" align="center">';
      newIngredient += '<p>' +option.text+ '</p>';
      newIngredient += '</div>';
      
      newIngredient += '<div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">';
      newIngredient += '<button name="div' +ingredientIdCount+ '" style="height:20px; width: 20px; padding:0px;" class="btn btn-danger glyphicon glyphicon-remove" onclick="delRow(this)" type="button"></button>';
      newIngredient += '</div>';
      
      newIngredient += '</div>';
      
      $('#ingredientList').prepend(newIngredient);
      $('#img'+ingredientIdCount).animate({marginTop: "+=100px", opacity: "1"});
      
      $("#pattySelect option:selected").prop("selected", false);
      $("#vegeSelect option:selected").prop("selected", false);
      $("#etcSelect option:selected").prop("selected", false);
      
      ingredientList += ("div" + ingredientIdCount);
    }
  
    //행 삭제
    function delRow (button){
      ingredientCount -= 1;
      alert($('#'+button.name));
      $(button).parent().parent().remove();
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
      $('#burgerModal2').modal('toggle');
      return false;
    });
    </script>

  </div>
   