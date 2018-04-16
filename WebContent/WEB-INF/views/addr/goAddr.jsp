<%@page import="java.util.List"%>
<%@page import="bb.com.a.model.Bb_MemberDto"%>
<%@page import="bb.com.a.model.Bb_AddrDto"%>
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
<body>
<div style="width:700px;">
<h2>주소록 </h2>

<table id="" style="background-color: white; border-radius:4px; border:1px solid #999999;">
<col number="4">
<tr><th>no.</th><th>주소</th><th>배달 시 유의사항</th><th></th></tr>
<%-- <%for(Bb_AddrDto addr:addrList){ %> --%>
<c:forEach var="addr" items="${addrList}" varStatus="addrS">
<tr>
<%-- <td><%=addr.getSeq()%></td>
<td><%=addr.getAddress()%></td>
<td><%=addr.getMemo()%></td> --%>
<td>${addr.seq}</td>
<td>${addr.address}</td>
<td>${addr.memo}</td>
<td><a href='addrUpdate.do?seq=${addr.seq}'>수정</a>/<a href="addrDelete.do">삭제</a></td>
<!-- 테이블의 몇번째 주소를 수정하려고 하는지 seq값을 가지고 넘어가야함  -->
</tr>
<%} %>
</c:forEach>
</table>
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
