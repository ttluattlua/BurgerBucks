<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.diy-box {
	float: left;
	display: inline-block;
	height: 280px;
	width: 220px;
	margin: 1em;
	background-color:white;
}
.diy-detail{
	height: 200px;
	width: 200px;
	padding: 10px;
	background-color:gray;
	margin: 0 auto;
	margin-top: 10px;
}
.text-left{
	float:left;
	display: inline-block;
	height: 70px;
	width: 80px;
	margin-left: 10px;
	background-color:yellow;
}
.text-right{
	float: left;
	display: inline-block;
	height: 80px;
	width: 120px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div class="diy-box">
	<div class="diy-detail">1</div>
	<p class="text-left">치킨버거<br>4,000</p>
	<div class="text-right">
		<input type="button" id="_order" value="주문">
		<input type="button" id="_detail" value="상세"><br>
		<a href="#" id="likeBtn">
		<%-- <%if(checkLikes){ %> <!--이미 전에 클릭했으면   --> --%>
		<img alt="좋아요" src="./icon/clicklike.png" id="likeImg" width="20px" height="20px">
		<%-- <%}else{ %> <!--전에 클릭안했으면  -->
		<img alt="좋아요" src="./icon/unclicklike.png" id="likeImg" width="20px" height="20px">
		<%} %> --%>
		</a>
	</div>
</div>
<div class="diy-box">
	<div class="diy-detail">2</div>
	<p class="text-left">치킨버거<br>5,000</p>
	<div class="text-right">
		<input type="button" id="_order" value="주문">
		<input type="button" id="_detail" value="상세"><br>
		<a href="#" id="likeBtn">
		<%-- <%if(checkLikes){ %> <!--이미 전에 클릭했으면   --> --%>
		<img alt="좋아요" src="./icon/clicklike.png" id="likeImg" width="20px" height="20px">
		<%-- <%}else{ %> <!--전에 클릭안했으면  -->
		<img alt="좋아요" src="./icon/unclicklike.png" id="likeImg" width="20px" height="20px">
		<%} %> --%>
		</a>
	</div>
</div>
<div class="diy-box">
	<div class="diy-detail">3</div>
	<p class="text-left">치킨버거<br>4,500</p>
	<div class="text-right">
		<input type="button" id="_order" value="주문">
		<input type="button" id="_detail" value="상세"><br>
		<a href="#" id="likeBtn">
		<%-- <%if(checkLikes){ %> <!--이미 전에 클릭했으면   --> --%>
		<img alt="좋아요" src="./icon/clicklike.png" id="likeImg" width="20px" height="20px">
		<%-- <%}else{ %> <!--전에 클릭안했으면  -->
		<img alt="좋아요" src="./icon/unclicklike.png" id="likeImg" width="20px" height="20px">
		<%} %> --%>
		</a>
	</div>
</div>
</body>
</html>