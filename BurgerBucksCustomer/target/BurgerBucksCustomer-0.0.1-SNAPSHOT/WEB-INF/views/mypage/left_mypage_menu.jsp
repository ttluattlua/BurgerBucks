<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 
<!-- 마이페이지 왼쪽 메뉴바 -->
<style>
ul, li, a.mypage_ul {
	list-style-type: none;
	padding: 10px;
	text-decoration: none; /*  링크의 밑줄이 사라진다 */
	color: black;
}

a{
	color: black;
}

</style>

	<ul class="mypage_ul">
    	<li><h4>마이페이지</h4></li>
    	<li><a href="order_inquiry.do" class="text-muted">주문조회</a></li>
    	<li><a href="order_history.do" class="text-muted">주문내역</a></li>
    	<li><a href="goAddr.do" class="text-muted">주소록</a></li>
    	<li><a href="updateProfile.do" class="text-muted">회원정보 수정</a></li>
    	<li><a href="changePwd.do" class="text-muted">비밀번호 변경</a></li>
    
    </ul>

