<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="bb.com.a.model.Bb_MemberDto"%>
<%@page import="bb.com.a.model.Bb_AddrDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>goAddr</title>
<%
/* Bb_MemberDto member = (Bb_MemberDto)request.getAttribute("member"); */
List<Bb_AddrDto> addrList = (List<Bb_AddrDto>)request.getAttribute("addrList");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div style="width:700px;">
<h2>주소록 </h2>

<form name="frmForm" id="_frmForm" method="post" action="addrUpdate.do">
<table id="" style="background-color: white; border-radius:4px; border:1px solid #999999;">
<%-- <input type="hidden" name="seq" value="${addrList.seq}"/>--%>
<col number="4">
<tr><th>no.</th><th>주소</th><th>배달 시 유의사항</th><th></th></tr>
<%-- <%for(Bb_AddrDto addr:addrList){ %> --%>
<c:forEach items="${addrList}" var="addr"><!-- 아 이부분 모르겟군.. -->
<tr>
<td><%-- <%=addr.getSeq()%> --%>${addrList.seq}</td>
<td><%-- <%=addr.getAddress()%> --%>""</td>
<td><%-- <%=addr.getMemo()%> --%></td>
<td><%-- <a href='addAddr.do?seq=<%=addr.getSeq()%>'>수정</a>/<a href="addrDelete.do">삭제</a> --%></td>
</tr>
</c:forEach>
</table>
</form>

<br>
<div align="right">
<button>주소 추가하기</button>
<button>메인화면으로 이동</button>
</div>
</div>
<br>
<div style="background-color: white; border: 1px solid #999999; border-radius: 4px; height: 200px; width:320px; padding: 10px;" align="center">
<div style="text-align: left;">
<h4>안녕하세요<%--  <%=member.getName()%> --%>--- 님<br>
다음주소로 배달됩니다.<br><br>

<select style="font-size:1.7pt;">
<%for(Bb_AddrDto addr:addrList){ %>
<option><%=addr.getAddress()%></option>
<%}%>
</select>
</h4>

<h4><a href="./addAddr.do">주소 추가하기</a></h4> 
<h4><a href="./addAddr.do">새로 주문하기</a></h4> 
</div>
</div>
</body>
</html>
