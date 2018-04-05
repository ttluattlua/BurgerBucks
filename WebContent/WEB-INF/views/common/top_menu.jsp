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