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
			      <th scope="col">제목</th>
			      <th scope="col">조회수</th>
			    </tr>
			  </thead>
			  <tbody>
 				
	 				<c:if test="${faqList.size() != 0}">
	 					<c:forEach var="faqDto" items="${faqList}" varStatus="status">
	 					<tr>
			 				<td>${faqDto.count}</td>
			 				
			 				
			 				<c:if test="${faqDto.step == 0}">
			 					<td>${faqDto.title}</td>
			 				</c:if>
			 				
			 				<c:if test="${faqDto.step != 0}">
			 					<td>&nsbp;&nsbp;&nsbp;&nsbp;RE:${faqDto.title}</td>
			 				</c:if>
			 				
			 				<td>${faqDto.readcount}</td>
			 			</tr>
						</c:forEach>
	 				</c:if>
			  </tbody>
			</table>

		</div>

	</div>
	
<script type="text/javascript">


</script>	
