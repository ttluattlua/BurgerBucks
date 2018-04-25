<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

<!--datatable위한 자바스크립트 및 css -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap.min.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css">
<!--주문조회-->

<h2>FAQ</h2>
 	<div style=" padding-top:50px; width: 750px; height: 620px;">
 		
		
		
			<table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
			  <thead >
			    <tr>
			      <th>No.</th>
			      <th>제목</th>
			      <th>조회수</th>
			      <th>글내용</th>
			    </tr>
			  </thead>
			  <tbody>
 				
	 				<c:if test="${faqList.size() != 0}">
	 					<c:forEach var="faqDto" items="${faqList}" varStatus="status">
	 					<tr>
			 				<td>${status.count}</td>
			 				
			 				
			 				<c:if test="${faqDto.step == 0}">
			 					<td>${faqDto.title}</td>
			 				</c:if>
			 				
			 				<c:if test="${faqDto.step != 0}">
			 					<td>&nbsp;&nbsp;&nbsp;&nbsp;<span class="label label-info">RE:</span>${faqDto.title}</td>
			 				</c:if>
			 				
			 				<td>${faqDto.readcount}</td>
			 				<td>${faqDto.contents}</td>
			 			</tr>
						</c:forEach>
	 				</c:if>
			  </tbody>
			</table>

		

	</div>
	
<script type="text/javascript">

$(document).ready(function() {
	 var lang_kor = {
		        "decimal" : "",
		        "emptyTable" : "데이터가 없습니다.",
		        "info" : "_START_ - _END_ (총 _TOTAL_ 개)",
		        "infoEmpty" : "0명",
		        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
		        "infoPostFix" : "",
		        "thousands" : ",",
		        "lengthMenu" : "_MENU_ 개씩 보기",
		        "loadingRecords" : "로딩중...",
		        "processing" : "처리중...",
		        "search" : "검색 : ",
		        "zeroRecords" : "검색된 데이터가 없습니다.",
		        "paginate" : {
		            "first" : "첫 페이지",
		            "last" : "마지막 페이지",
		            "next" : "다음",
		            "previous" : "이전"
		        },
		        "aria" : {
		            "sortAscending" : " :  오름차순 정렬",
		            "sortDescending" : " :  내림차순 정렬"
		        }
	};

	$('#example').DataTable( {
		"scrollY": "400px",	//스크롤바 만들기 
	    responsive: {
	        details: {
	            display: $.fn.dataTable.Responsive.display.childRowImmediate
	        }
	    },
	    "ordering": false,	//sorting 막기
	    language : lang_kor	//언어 한국어로 교체
	} );
} );
</script>	
