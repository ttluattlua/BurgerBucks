<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>layouts-tiles</title>
</head>
<tiles:insertAttribute name="header"/>

<body style="background-color: #f3f3f3;">
		<!--header-->
		<div>
			<tiles:insertAttribute name="top_menu"/>
		</div>
		
		<%-- <div  class="left-sidebar">
			<tiles:insertAttribute name="left_main"/>
		</div>		 --%>
		
		<!--main-->
		<div style="height:1000px">
			<tiles:insertAttribute name="main"/>
		</div>			
		<!--footer-->
		<div>
			<tiles:insertAttribute name="footer"/>		
		</div>		
</body>

</html>



