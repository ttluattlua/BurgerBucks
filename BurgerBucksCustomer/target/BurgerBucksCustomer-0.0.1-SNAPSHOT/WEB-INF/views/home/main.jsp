<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 


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
    
    <c:if test="${login.id == null}">
    <!-- Login  하기전-->
    <div style="margin-left:10px; display:block; height: 300px; width:290px; float: left;" id="login_in_form">
      
      <!-- Login Form (로그인 하기 전에 입력 창 -->
      <div style="background-color: white; border: 1px solid #999999; border-radius: 4px; height: 200px; width:290px; padding: 10px;" align="center" >
        <form action="login.do" method="post">
        
	        <p style="width: 240px; margin-top:10px;">로그인</p>
	        
	        <div class="input-group" style="width: 240px; margin-top:20px;">
	          <span class="input-group-addon" style="width:50px;">ID</span> 
	          <input id="name" name="id" type="text" class="form-control" placeholder="아이디를 입력해주세요" required>
	        </div>
	        
	        <div class="input-group" style="width: 240px; margin-top:10px;">
	          <span class="input-group-addon" style="width:50px;">PW</span> 
	          <input id="name" name="password" type="text" class="form-control" placeholder="비밀번호를 입력해주세요" required>
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
    </c:if>
    
    
    <!--로그인 한후-->
    <c:if test="${login.id != null}">
    <div style="margin-left:10px; display:block; height: 300px; width:290px; float: left;" id="login_in_form">
      
      <!-- Login Form (로그인 하기 전에 입력 창 -->
      <div style="background-color: white; border: 1px solid #999999; border-radius: 4px; height: 200px; width:290px; padding: 10px;" align="center" >
        <form action="login.do" method="post">
        
	        <p style="width: 240px; margin-top:10px;"><h4>${login.name} 님 반갑습니다!</h4></p>
	        
	        <div class="input-group" style="width: 240px; margin-top:20px;">
			  <select  class="form-control">
			  </select>
	        </div>
	        
	        <div class="input-group" style="width: 240px; margin-top:10px;">
	           <button class="btn btn-success" style="width: 240px; margin-top:15px;">주문하러가기</button>
	        </div>
	        
	        <div class="input-group" style="width: 240px; margin-top:10px;">
	           <a class="flat_a" style="color: black;" href="#">주소추가</a>
		       <font style="cursor: default;">│</font>
		       <a class="flat_a" style="color: black;" href="#">주소수정</a>
	        </div>
        
        </form>
      </div>
      <!-- 내 주문 조회 Button -->
      <div style="margin-top:10px;">
        <button class="btn btn-success" style="width: 290px; border: 1px solid #999999; border-radius: 4px; height: 40px;" onclick="location.href='./order_inquiry.do'">내 주문 조회</button>
      </div>
      
      <!-- 내 정보 수정 Button -->
      <div style="margin-top:10px;">
        <button class="btn btn-success" style="width: 290px; border: 1px solid #999999; border-radius: 4px; height: 40px;" onclick="location.href='./updateProfile.do'">내 정보 수정</button>
      </div>
     
    </div>
    </c:if>
        
  </div>

  <!-- Guide -->
  <div style="width: 1000px; height: 400px; background: white; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;">
    <img src="./UI/Deliever.png" style="width: 1000px; height: 400px; border: 1px solid #999999; border-radius: 4px;">
  </div>