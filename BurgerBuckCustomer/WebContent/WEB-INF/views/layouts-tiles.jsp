<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<html>

<title>BurgerBucks Customer</title>

<tiles:insertAttribute name="header"/>

</head>
<body class="fix-header fix-sidebar">

<!-- Main wrapper  --> 
<div id="main-wrapper">
  
  <div class="header" data-interval="false">
    <tiles:insertAttribute name="header"/>
  </div>
  
  <div class="top_menu">
    <tiles:insertAttribute name="top_menu"/>
  </div>
  
  <div class="left_main">
    <tiles:insertAttribute name="left_main"/>
  </div>    
  
  <div class="main" data-interval="false">
    <tiles:insertAttribute name="main"/>
  </div>      
  
  <div class="footer">
    <tiles:insertAttribute name="footer"/>    
  </div>
  
</div>


</body>

</html>



