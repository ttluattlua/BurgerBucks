<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<html>
<title>BurgerBucks</title>
<style>

.mypage_common{
    display: inline-block;
    margin-top: 10px; 
    padding: 10px;
    float: left;
    
}
</style>
<tiles:insertAttribute name="header"/>

</head>
<body style="background-color: #f3f3f3;">

		<div>
			<tiles:insertAttribute name="top_menu"/>
		</div>
		

		<!--main-->
		<div style="padding: 0; margin: 0 auto; margin-top:20px; margin-bottom:20px; height: 700px; width: 1000px;  background: #E4DFDE;  border-radius: 1em;">
			<div class="mypage_common" >
				<tiles:insertAttribute name="left_side"/>
			</div>
			<div class="mypage_common" style="margin-left: 20px; margin-top: 30px;" >
				<tiles:insertAttribute name="main_side"/>
			</div>
			
		</div>			
		<!--footer-->
		<div>
			<tiles:insertAttribute name="footer"/>		
		</div>			



</body>

</html>



