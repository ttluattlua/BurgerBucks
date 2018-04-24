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
    	<li><h4>기타페이지</h4></li>
    	<li><a href="terms_and_conditions.do" class="text-muted">이용약관</a></li>
    	<li><a href="faq.do" class="text-muted">FAQ</a></li>
    	<li><a href="customer_inquiry.do" class="text-muted">문의하기</a></li>
    
    </ul>

