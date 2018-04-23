
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

<!--datatable위한 자바스크립트 및 css -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap.min.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css">
<!--주문조회-->

	<%
	List<String> terms_text = txtReader.txt_readTerms("D:/BurgerBucks/BurgerBucksCustomer/WebContent/Terms/Terms.txt");
	%>

  <div style="padding-top:10px; width: 750px; height: 620px;">

		<h1>이용약관</h1>
		
		<textarea rows="25" cols="100" style="margin-top:10px; resize: none; border-radius: 4px; background-color: #f2f2f2; ">
		<%for(int i=0; i<terms_text.size(); i++){ %>
    <%=terms_text.get(i) %>
    <%} %>
		</textarea>

	</div>
	
