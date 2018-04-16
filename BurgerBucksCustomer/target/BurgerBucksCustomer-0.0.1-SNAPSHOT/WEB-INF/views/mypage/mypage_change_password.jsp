<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 
<!--비밀번호 변경-->

 	<div style=" padding-top:50px; width: 750px; height: 620px;">
 		
 		
 		<div align="center" id="check_pwd">
 			
	 		<form action="">
	 			<input type="hidden" id="login_id" value="${login.id}">
	 			<input type="hidden" id="login_seq" value="${login.seq}">
	 			<div align="center" style="font-size: 20px; color: gray;">비밀번호를 입력해주세요.</div>
	 			<div class="input-group" style="width: 400px; margin-top:50px;">
		          <span class="input-group-addon" style="width:50px;">PW</span> 
		          <input type="text" id="check_pwd_input" class="form-control" placeholder="비밀번호를 입력해주세요" >
		        </div>
		        
	         	 <button class="btn btn-success" style="width: 400px; margin-top:50px;" type="button" onclick="checkPwd()">비밀번호 확인</button>
	         </form>
         
 		</div>
 		
 		
 		<div align="center" style="display: none;" id="change_pwd">
	 		<form action="">
	 			<div align="center" style="font-size: 20px; color: gray;">비밀 번호가 일치합니다. 변경 된 비밀번호를 입력해주세요</div>
	 			<div class="input-group" style="width: 400px; margin-top:50px;">
		          <span class="input-group-addon" style="width:50px;">PW</span> 
		          <input id="update_pwd_input1" type="text" class="form-control" placeholder="변경 된 비밀번호를 입력해주세요" required>
		        </div>
		        
		        <div class="input-group" style="width: 400px; margin-top:50px;">
		          <span class="input-group-addon" style="width:50px;">PW</span> 
		          <input id="update_pwd_input2" type="text" class="form-control" placeholder="변경 된 비밀번호를 다시한번 입력해주세요" required>
		        </div>
		        
	         	 <button class="btn btn-success" style="width: 400px; margin-top:50px;" type="button" onclick="updatePwd()">비밀번호 변경</button>
	         </form>
         
 		</div>

	</div>
	
<script>
/*--------------------------------------------------------------  
 * 비밀번호 변경전 비밀번호 확인
 ----------------------------------------------------------------*/
function checkPwd() {
	
    var data = {};
    
	data["id"]=$("#login_id").val();
	data["seq"]=$("#login_seq").val();
	data["password"]=$("#check_pwd_input").val();
	
	if($("#check_pwd_input").val() == ""){
		alert("비밀번호를 입력해 주세요");
		return;
	}
	
	$.ajax({
		contentType:'application/json',
		dataType:'json',
		data:JSON.stringify(data), 		//JavaScript 값을 JSON으로 변환 한다
		url:"checkPwd.do",			// side
		type:'POST',
		success:function(data){
			
		console.log(data.msg);
			if(data.msg == "S"){
				alert("비밀번호가 일치합니다. 변경 된 비밀번호를 입력해주세요.");
				$("#check_pwd").css("display", "none");
				$("#check_pwd_input").val("");
				$("#change_pwd").css("display", "initial");
				
			}else{
				alert("비밀번호가 일치하지 않습니다.");
			}
			
			
		},
		error:function(req, status, error){
			alert("error");
		}
	
	});
	
}

/*--------------------------------------------------------------  
 * 변경 된 비밀번호 업데이트
 ----------------------------------------------------------------*/
function updatePwd() {
	
    var data = {};
    
    data["id"]=$("#login_id").val();
    data["seq"]=$("#login_seq").val();
	data["password"]=$("#update_pwd_input1").val();
	
	
	if($("#update_pwd_input1").val() == ""){
		alert("변경 된 비밀번호를 입력해 주세요");
		return;
	}else if($("#update_pwd_input2").val() != $("#update_pwd_input2").val()){
		alert("비밀번호가 일치하지 않습니다.");
		return;
	}else if($("#update_pwd_input2").val() == ""){
		alert("변경 된 비밀번호를 다시 한 번 입력해 주세요");
		return;
	}
	
	$.ajax({
		contentType:'application/json',
		dataType:'json',
		data:JSON.stringify(data), 		//JavaScript 값을 JSON으로 변환 한다
		url:"updatePwd.do",			// side
		type:'POST',
		success:function(data){
			
		console.log(data.msg);
		alert(data.msg);
		$("#check_pwd").css("display", "initial");
		$("#change_pwd").css("display", "none");
		$("#update_pwd_input1").val("");
		$("#update_pwd_input2").val("");
			
		},
		error:function(req, status, error){
			alert("error");
		}
	
	});
	
}



</script>
