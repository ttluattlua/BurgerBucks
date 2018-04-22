<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 


<!--주문조회-->
<!-- 자바스크립트-->

<!-- google icon -->
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<!-- fontawesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<!--datatable위한 자바스크립트 및 css -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.colVis.min.js"></script>




<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.bootstrap.min.css">
<!--주문조회-->
 	<div style=" padding-top:50px; width: 750px; height: 620px;">
 		
			<!-- <i class="material-icons">shopping_cart</i> 장바구니 / 
			<i class="material-icons">payment</i> 주문완료 / 
			<i class="material-icons">room_service</i> 준비중 / 
			<i class="material-icons">directions_bike</i> 배달시작 / 
			<i class="material-icons">assignment_turned_in</i> 배달완료 /  -->
		
			<table id="example" class="table table-striped table-bordered" style="width:100%">
			  <thead >
			    <tr class="active">
			      <th scope="col" title="순서">No.</th>
			      <th scope="col" title="주문번호">Order Number</th>
			      <th scope="col" title="주문날짜">Order Date</th>
			      <th scope="col" title="주문완료">Order Status</th>
			      <th scope="col" title="준비중">Order Status</th>
			      <th scope="col" title="배달시작">Order Status</th>
			      <th scope="col" title="배달완료">Order Status</th>
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
			 				
							<!-- 주문완료 -->
							<c:choose>
			 				<c:when test="${orderDto.status < '1'}">
			 					<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a3a3a3">payment</i> </td>
			 				</c:when>
			 				<c:when test="${orderDto.status >= '1'}">
			 					<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a33b2b">payment</i> </td>
			 				</c:when>
			 				</c:choose>
			 				
			 				<!-- 준비중 -->
			 				<c:choose>
			 				<c:when test="${orderDto.status < '2'}">
			 					<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a3a3a3">room_service</i></td>
			 				</c:when>
			 				<c:when test="${orderDto.status >= '2'}">
			 					<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a33b2b">room_service</i></td>
			 				</c:when>
			 				</c:choose>
			 				
			 				<!-- 배달 시작 -->
			 				<c:choose>
			 				<c:when test="${orderDto.status < '3'}">
			 					<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a3a3a3">directions_bike</i></td>
			 				</c:when>
			 				<c:when test="${orderDto.status >= '3'}">
			 					<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a33b2b">directions_bike</i></td>
			 				</c:when>
			 				</c:choose>
			 				
			 				<!-- 배달완료 -->
			 				<c:choose>
			 				<c:when test="${orderDto.status < '4'}">
				 				<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a3a3a3">assignment_turned_in</i></td>
			 				</c:when>
			 				<c:when test="${orderDto.status >= '4'}">
				 				<td style="text-align: center;"><i class="material-icons" style="font-size: 48px; color: #a33b2b">assignment_turned_in</i></td>
			 				</c:when>
			 				</c:choose>
			 			</tr>
						</c:forEach>
	 				</c:if>
			  </tbody>
			</table>


	</div>

<script type="text/javascript">
$(document).ready(function() {
	/* initComplete(); */
	var col_kor = [
        { title: "No" },
        { title: "주문번호" },
        { title: "주문날짜" },
        { title: "주문완료" },
        { title: "준비중" },
        { title: "배달시작" },
        { title: "배달완료" }
    ];

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

    var table = $('#example').DataTable( {
        lengthChange: false,
        buttons: [ 'copy', 'excel', 'pdf' ],
        columns: col_kor,
        language : lang_kor,
        "searching": false //서치 막기,
    } );
 
    table.buttons().container()
        .appendTo( '#example_wrapper .col-sm-6:eq(0)' );
} );

/* function initComplete() {
	serverSide: true,
	initComplete : function () {
	    table.buttons().container()
	           .appendTo( $('#example_wrapper .col-sm-6:eq(0)'));
	},
} */
</script>	
