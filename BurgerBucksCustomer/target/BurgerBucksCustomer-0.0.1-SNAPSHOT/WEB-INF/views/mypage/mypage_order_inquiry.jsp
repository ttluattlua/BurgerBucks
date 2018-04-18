<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 
<!--주문조회-->

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


</script>	
