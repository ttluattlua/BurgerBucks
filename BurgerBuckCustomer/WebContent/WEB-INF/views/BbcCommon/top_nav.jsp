<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>

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
  