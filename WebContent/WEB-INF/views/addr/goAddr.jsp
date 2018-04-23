<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>Insert title here</title>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

<div style="width: 750px; height: 620px;">

<form id="_frmForm" method="post" action="">
<h2>주소록 </h2>
<table id="" style="width:750px; background-color:white; border:1px solid #999999;">
<thead>
<tr>
	<th style="background-color:#eee; padding:3px;">no.</th>
	<th style="background-color:#eee; padding:3px;">주소</th>
	<th style="background-color:#eee; padding:3px;">배달 시 유의사항</th>
	<th style="background-color:#eee; padding:3px;"></th>
</tr>
</thead>

<tbody>
<!-- list가 empty일때 -->
<c:if test="${empty list}">
<tr>
	<td colspan="4">저장된 주소가 없습니다.</td>
</tr>	
</c:if>
<!-- list가 있을때 -->
<c:if test="${list.size() != 0 }">
<c:forEach var="addr" items="${list}" varStatus="vs">
<tr>
	<td>${vs.count}</td> 
	<td style="padding:3px;">${addr.address}</td>
	<td style="padding:3px;">${addr.memo}</td>
	<td style="padding:3px;">
	<a href='addrUpdate.do?seq=${addr.seq}'>수정</a>
	<a href='addrDelete.do?seq=${addr.seq}'>삭제</a> 
	</td>
</tr>
</c:forEach>
</c:if>
</tbody>
</table>
</form>
<br>
<div align="right">
<input type="button" id="_btnNew" value="주소 새로 추가하기">
<input type="button" id="_btnMain" value="메인화면 가기">
</div>
</div>

<script type="text/javascript">
$("#_btnNew").click(function(){
	alert("새로 추가하기!");
	location.href = "addrAdd.do";
});
$("#_btnMain").click(function(){
	alert("메인으로 고고!");
	location.href = "home.do"; //**메인에 주소 안뜸 	
});
</script>


