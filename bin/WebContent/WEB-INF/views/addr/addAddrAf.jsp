<%@page import="bb.com.a.model.Bb_AddrDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%Bb_AddrDto addr = (Bb_AddrDto)request.getAttribute("addr"); %>
<body>
<table border="1px solid black collapse">
<col number="3" >
<th>no.</th><th>member_seq </th><th>address </th>
<tr>
<td><%=addr.getSeq() %></td><td><%=addr.getMember_seq() %></td><td><%=addr.getAddress() %></td>
</tr>
</table>

</body>
</html>