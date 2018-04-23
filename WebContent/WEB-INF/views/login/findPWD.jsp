<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

<div style="padding: 0; margin: 0 auto; margin-top:20px; height: 300px; width: 1000px;">
<div align="center">
<form action="findPWD" id="findPWD" method="post">
    <fieldset>
        <legend class="screen_out">비빌번호 찾기</legend>
 
        <div class="box email">
            <label for="email">아이디</label>
            <input type="text" id="findPwd_id"  autofocus autocomplete="off" required />
        </div>
        <!-- // .box.email -->
 
 
        <div class="box btn">
            <button type="button" id="btn_find" onclick="find()" class="btn join">
                <i class="fa fa-envelope"></i>
                		비밀번호 찾기
            </button>
        </div>
        <!-- // .box.btn -->
    </fieldset>
</form>
</div>
</div>
<script type="text/javascript">

function find() {
	
    var data = {};
    data["id"]=$("#findPwd_id").val();

	if($("#input_id").val() == ""){
		alert("메일주소를 입력해주세요");
		return;
	}
	
	$.ajax({
		contentType:'application/json',
		dataType:'json',
		data:JSON.stringify(data), 		//JavaScript 값을 JSON으로 변환 한다
		url:"findPWD.do",			// side
		type:'POST',
		success:function(data){
			
		console.log(data.msg);
		alert(data.msg);
			
		},
		error:function(req, status, error){
			alert("error");
		}
	
	});
	
}


$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>

