<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 
<!--회원정보수정-->
<h2>회원정보수정</h2>

 	<div style=" padding-top:50px; width: 800px; height: 620px;">
		<div style="width: 800px;">
	 		<form action="deleteMember.do">
	 			<input type="hidden" id="profile_seq" name="seq" value="${login.seq}">
	 			<div class="row p-t-20">
                            <div class="col-md-6">
                                <div class="form-group">
							    <label class="control-label" for="profile_id">아이디</label>
							    <input type="text" class="form-control" id="profile_id" name="id" value="${login.id }" readonly="readonly">
			  				</div>
			  				</div>
                            <div class="col-md-6">
                                <div class="form-group">
							    <label class="control-label" for="grade">등급
							    <a href="#" data-toggle="tooltip" title="등급">
							    <span class="label label-info">i</span>
							    </a>
							    </label>
							    <input type="text" class="form-control" id="grade" value="${login.grade}" readonly="readonly">
			  				</div>
			  				</div>	</div>
	 				<div class="row p-t-20">
                            <div class="col-md-6">
                                <div class="form-group">
							    <label for="exp" style="text-align: left;">경험치
							    <a href="#" data-toggle="tooltip" title="${exp }">
							    <span class="label label-info">i</span>
							    </a>
							    </label>
							    <input type="text" class="form-control" id="exp" value="${login.exp }" placeholder="이름을 입력해주세요" readonly="readonly">
			  				</div>
			  				</div>
                            <div class="col-md-6">
                                <div class="form-group">
							    <label for="mileage">마일리지
							    <a href="#" data-toggle="tooltip" title="마일리지">
							    <span class="label label-info">i</span>
							    </a>
							    </label>
							    <input type="text" class="form-control" id="mileage" value="${login.mileage }" readonly="readonly">
			  				</div>
			  				</div>
			  				</div>
			  				<div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
							    <label class="control-label" for="name">이름</label>
							    <input type="text" class="form-control" id="name" value="${login.name }" placeholder="이름을 입력해주세요">
			  				</div>
			  				</div>
			  				</div>
			  				<div class="row p-t-20">
                            <div class="col-md-6">
                                <div class="form-group">
							    <label class="control-label" for="bday">생일</label>
							    <input type="date" class="form-control" id="bday" value="${login.bday }" placeholder="생일을 입력해주세요">
			  				</div>
			  				</div>
                            <div class="col-md-6">
                                <div class="form-group">
							    <label class="control-label" for="sex">성별</label>
						
							    	<c:if test="${login.sex == 0 }">
									    <select class="form-control" id="sex">							    	
								    		<option value="1" >여자</option>
		  									<option value="0" selected="selected">남자</option>								    	
									    </select>	
							    	</c:if>
							    	
							    	<c:if test="${login.sex == 1 }">
									    <select class="form-control" id="sex">							    	
								    		<option value="1" selected="selected">여자</option>
	  										<option value="0">남자</option>						    	
									    </select>	
							    	</c:if>
											
			  				</div>
			  				</div>
			  				</div>
			  				
			  				<div class="row p-t-20">
                            <div class="col-md-12">
                                <div class="form-group">
							    <label class="control-label" for="phone" style="text-align: left;">핸드폰</label>
							    <input type="text" class="form-control" id="phone" value="${login.phone }" placeholder="이름을 입력해주세요">
			  				</div>
			  				</div>
			  				</div>
								<div style="text-align: center;">
	 						 <button class="btn btn-success" style="width: 380px; margin-top:50px;" type="button" onclick="updateProfile()">회원정보 수정</button>
	 						 &nbsp;&nbsp;&nbsp;&nbsp;
	 						 <button class="btn btn-success" style="width: 380px; margin-top:50px;" type="submit">회원탈퇴</button>
	 						 </div>
			</form>
			
		</div>
		

	</div>
	
<script type="text/javascript">

/*--------------------------------------------------------------  
 *회원정보수정
 ----------------------------------------------------------------*/
function updateProfile() {
	
    var data = {};
    data["seq"]=$("#profile_seq").val();
    data["id"]=$("#profile_id").val();
    data["bday"]=$("#bday").val();
    data["name"]=$("#name").val();
    data["phone"]=$("#phone").val();
    data["sex"]=$("#sex").val();
	
	
	if($("#bday").val() == ""){
		alert("변경 된 생일을 입력해 주세요");
		return;
	}else if($("#name").val() == ""){
		alert("변경 된 이름을를 입력해 주세요");
		return;
	}else if($("#phone").val() == ""){
		alert("변경 된 전화번호를 입력해 주세요");
		return;
	}
	
	$.ajax({
		contentType:'application/json',
		dataType:'json',
		data:JSON.stringify(data), 		//JavaScript 값을 JSON으로 변환 한다
		url:"updateProfileAf.do",			// side
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
