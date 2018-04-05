<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<html>
<title>layouts-tiles</title>

<tiles:insertAttribute name="header"/>

</head>
<body style="background-color: #f3f3f3;">
		<!--header-->
		<div>
			<tiles:insertAttribute name="top_menu"/>
		</div>
		
		<%-- <div  class="left-sidebar">
			<tiles:insertAttribute name="left_main"/>
		</div>		 --%>
		<!--main-->
		<div>
			<tiles:insertAttribute name="main"/>
		</div>			
		<!--footer-->
		<div>
			<tiles:insertAttribute name="footer"/>		
		</div>			



</body>

</html>



