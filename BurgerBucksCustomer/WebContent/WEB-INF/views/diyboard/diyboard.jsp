<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

<!-- fontawesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.diy-box{
	height:280px;
	width:220px;
	float: left;
	display: inline-block;
	background-color:white;
	padding: 10px;
	margin-left: 20px;
	margin-right: 20px;
}
.diy-detail{
	height: 200px;
	width: 200px;
	margin: auto;
	background-color: gray;
}
.text-left{
	height: 60px;
	width: 80px;
	background-color: yellow;
	float: left;
	padding-top: 5px;
}
.text-right{
	height: 60px;
	width: 120px;
	background-color: pink;
	float:right;
	padding-top: 5px;	
}
</style>
<div style="padding: 0; margin: 0 auto; margin-top:20px; height: 300px; width: 1000px;">
	<div class="diy-box">
		<div class="diy-detail"></div>
		<div class="text-left">
			<div style="font-size:1.5em; color:Tomato">
  				<i class="fa fa-smile-o">10</i>
			</div>
			
		</div>
		<div class="text-right">
			<input type="button" class="btn btn-outlined btn-warning" value="구매">
			<input type="button"  class="btn btn-outlined btn-danger" value="상세"><br>
			<p style="margin-top: 3px;"><i class="fa fa-krw">5000원</i></p>
		</div>
	</div>
	<div class="diy-box">
		<div class="diy-detail"></div>
		<div class="text-left">
			<div style="font-size:1.5em; color:Tomato">
  				<i class="fa fa-smile-o">10</i>
			</div>
		
		</div>
		<div class="text-right">
			<input type="button" class="btn btn-outlined btn-warning" value="구매">
			<input type="button"  class="btn btn-outlined btn-danger" value="상세"><br>
			<p style="margin-top: 3px;"><i class="fa fa-krw">5000원</i></p>
		</div>
	</div>
	<div class="diy-box">
		<div class="diy-detail"></div>
		<div class="text-left">
			<div style="font-size:1.5em; color:Tomato">
  				<i class="fa fa-meh-o">10</i>
			</div>
		</div>
		<div class="text-right">
			<input type="button" class="btn btn-outlined btn-warning" value="구매">
			<input type="button"  class="btn btn-outlined btn-danger" value="상세"><br>
			<p style="margin-top: 3px;"><i class="fa fa-krw">5000원</i></p>
		</div>
	</div>
</div>
