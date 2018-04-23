<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 


 	<div style="background-color: white; padding-top:50px; width: 750px; height: 620px;">
 		<div class="input-group" style="width: 240px; margin-top:10px;">
	          <span class="input-group-addon" style="width:50px;">PW</span> 
	          <input id="name" name="name" type="text" class="form-control" placeholder="비밀번호를 입력해주세요" required>
	        </div>
	        
          <button class="btn btn-success" style="width: 240px; margin-top:15px;" type="submit">비밀번호 입력</button>
 	</div>

