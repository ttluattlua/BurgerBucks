<%@page import="kh.com.a.model.Bb_AddrDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%Bb_AddrDto dto = new Bb_AddrDto(); %>
<body>
<form action="addaddressAf.do">
<%=dto.getAddress() %>
<button>새로운 주소 추가하기 </button>
</form>

<script type="text/javascript">



</script>
</body>
</html>