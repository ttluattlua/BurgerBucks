<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 
<!--문의하기-->

<h2>문의하기</h2>

 	<div style=" padding-top:50px; width: 750px; height: 620px;">
 		
 		
 		<div align="center" id="check_pwd">
 			<form action="">
	 			<input type="hidden" id="profile_seq" name="seq" value="${login.seq}">
	 			<table>
	 				<tr>
	 					<td>
	 						 <div class="form-group">
							    <label for="profile_id">제목</label>
							    <input type="text" class="form-control" id="inquiry_title" name="title" >
			  				</div>
	 					</td>
	 				</tr>
	 				<tr>
	 					<td>
	 						 <div class="form-group">
							    <label for="grade">아이디 </label>
							    <input type="text" class="form-control" id="inquiry_id" value="${login.id}" readonly="readonly">
			  				</div>
	 					</td>
	 				
	 				</tr>
	 				<tr>
	 					
	 				</tr>
	 					<td>
	 						 <div class="form-group">
							    <label for="grade">문의내용 </label>
							    <textarea style="height: 300px" class="form-control"  id="inquiry_content"></textarea>
			  				</div>
	 					</td>
	 				
	 				<tr>
	 					<td>
	 						 <button class="btn btn-success" style="width: 400px; margin-top:30px;" type="button" onclick="inquiry()">문의하기</button>
	 					</td>
	 				</tr>
	 			</table>
			</form>
 		
 		</div>
 	
 	
 	
 	</div>
 	
 	
 <script type="text/javascript">
function inquiry() {

    alert("문의하기클릭");
    
    
	//입력란에 다 입력했는지 막아주기 
	if($("#inquiry_title").val() == "" || $("#inquiry_title").val() == null){
		alert("제목을 입력해주세요");
		return;
	}
	
	if($("#inquiry_content").val() == "" || $("#inquiry_content").val() == null){
		alert("문의내용을 입력해주세요");
		return;
	}
	var data = {};
	
	data["title"]= $("#inquiry_title").val();
	data["content"]= $("#inquiry_content").val();
	data["email"]= $("#inquiry_id").val();
	
	$.ajax({
		contentType:'application/json',
		dataType:'json',
		data:JSON.stringify(data), 		//JavaScript 값을 JSON으로 변환 한다
		url:"sendInquiry.do",			// store
		type:'POST',
		success:function(data){

			alert(data.msg)
			$("#inquiry_title").val("");
			$("#inquiry_content").val("");
				
		},
		error:function(req, status, error){
			alert("error");
		}
	
	});
	
}
</script>