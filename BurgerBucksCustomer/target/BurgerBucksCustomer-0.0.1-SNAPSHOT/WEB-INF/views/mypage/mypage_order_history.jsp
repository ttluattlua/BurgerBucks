<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 
<!--주문내역-->

 	<div style=" padding-top:50px; width: 750px; height: 620px;">
 		
		<div align="center">
		
			<table class="table">
			  <thead >
			    <tr class="active">
			      <th scope="col">No.</th>
			      <th scope="col">주문번호</th>
			      <th scope="col">배달날짜</th>
			      <th scope="col">주문상태</th>
			    </tr>
			  </thead>
			  <tbody>
			    <c:if test="${orderList.size() == 0 }">
	 					<tr align="center">
	 						<td colspan="4">
	 						주문 조회가 없습니다.
	 						</td>
	 					</tr>
						<tr align="center">
		 					<td colspan="4">
		 						<button class="btn btn-success" style="width: 400px; " type="button" onclick="location.href='#'">
		 						주문하러가기
		 						</button>
		 					</td>
	 					</tr>
	 				</c:if>
	 				
	 				<c:if test="${orderList.size() != 0}">
	 					<c:forEach var="orderDto" items="${orderList}" varStatus="status">
	 					<tr>
			 				<td>${status.count}</td>
			 				<td>${orderDto.seq}</td>
			 				<td>${orderDto.order_date}</td>
			 				<td>${orderDto.status}</td>
			 			</tr>
						</c:forEach>
	 				</c:if>
			  </tbody>
			</table>

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

</script>	
