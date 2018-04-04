
<%@page import="java.util.List"%>
<%@page import="bb.com.a.model.Bb_MemberDto"%>
<%@page import="bb.com.a.model.Bb_AddrDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
Bb_MemberDto member = (Bb_MemberDto)request.getAttribute("member");
List<Bb_AddrDto> AddrList = (List<Bb_AddrDto>)request.getAttribute("addr"); %>
</head>
<body>


<div style="width:50%; height:50%; text-align: left;" align="center">
<h3>안녕하세요 <%=member.getName()%>님<br>
다음주소로 배달됩니다.<br>
<select>
<option><%=AddrList.get(0).getAddress() %></option>
<option><%=AddrList.get(1).getAddress() %></option>
</select>
</h3>

<h2><a href="./addaddress.do"><h2>주소 추가하기</h2> </a>
</div>
</body>
</html>
