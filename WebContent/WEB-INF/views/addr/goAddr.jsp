<%@page import="java.util.List"%>
<%@page import="bb.com.a.model.Bb_MemberDto"%>
<%@page import="bb.com.a.model.Bb_AddrDto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>Insert title here</title>
<%
/* Bb_MemberDto member = (Bb_MemberDto)request.getAttribute("member"); */
List<Bb_AddrDto> addrList = (List<Bb_AddrDto>)request.getAttribute("list"); 
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>

<div align="center" style="margin-top:20px">
<div style="width:1000px; background-color:white;">
<div style="display:block; width:600px; float: left; border-radius: 4px;">

<form action="" id="_frmForm" method="post" action="">
<h2>주소록 </h2>
<table id="" style="width:600px; background-color:white; border:1px solid #999999;">
<col number="4">
<tr>
<th style="background-color:#eee; padding:3px;">no.</th>
<th style="background-color:#eee; padding:3px;">주소</th>
<th style="background-color:#eee; padding:3px;">배달 시 유의사항</th>
<th style="background-color:#eee; padding:3px;"></th>
</tr>
<c:forEach var="addr" items="${list}" varStatus="vs">
<tr>
<td style="padding:3px;">${addr.seq}</td>
<td style="padding:3px;">${addr.address}</td>
<td style="padding:3px;">${addr.memo}</td>
<td style="padding:3px;">
<a href='addrUpdate.do?seq=${addr.seq}'>수정</a>
<a href="#" onclick="confirmChoice();<!--  return false; -->">삭제<input type="hidden" value="${addr.seq}" name="seq"></a></td>

<!-- 테이블의 몇번째 주소를 수정하려고 하는지 seq값을 가지고 넘어감  -->
</tr>
</c:forEach>
</table>
</form>

<script type="text/javascript">
	function confirmChoice(){
		var answer = confirm("정말 삭제하시겠습니까?");
		if(answer !=0){
			$("#_frmForm").attr({ "target":"_self", "action":"addrDelete.do" }).submit();	
		}
	}
</script>

<br>
<div align="right">
<input type="button" id="_btnNew" value="주소 새로 추가하기">
<input type="button" id="_btnMain" value="메인화면 가기">
</div>
</div>
</div>
</div>


<br><br><br>
<div style="display:block; padding:20px; margin-left:50px; height: 200px; width:300px; float: left; background-color:white; border-radius: 4px;">
<h4>안녕하세요<%--  <%=member.getName()%> --%>--- 님<br>
다음주소로 배달됩니다.<br><br>
<select style="font-size:1.7pt;">
<%for(Bb_AddrDto addr:addrList){ %>
<option><%=addr.getAddress()%></option>
<%}%>
</select>
</h4><br>
<div style="text-align:right">
<h4><a href="./addAddr.do">주소 추가하기</a></h4> 
<h4><a href="./addAddr.do">새로 주문하기</a></h4> 
</div>
</div>

<script type="text/javascript">
$("#_btnNew").click(function(){
	alert("새로 추가하기!");
	location.href = "addrAdd.do";
})
</script>
</body>
</html>
