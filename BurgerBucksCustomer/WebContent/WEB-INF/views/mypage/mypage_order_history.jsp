<%@page import="bb.com.a.model.Bb_MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="utf-8"/> 

<%
String id="";
int store=-1;
Bb_MemberDto mem = new Bb_MemberDto();

if(session.getAttribute("login") != null){	
	mem = (Bb_MemberDto)session.getAttribute("login");
	id = mem.getId();
}
%>


<!-- icon 불러오기 -->
<!--core first + styles last-->
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

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



<div style=" padding-top:50px; width: 750px; height: 620px;">
<table id="example" class="table table-striped table-bordered" style="width:100%">
	
    <tbody>
    
<%-- 	JSTL 문법의 for문 사용법
<c:forEach items="${리스트가 받아올 배열이름}" var=$"{for문안에서 사용할 변수}" varStatus="status">
status 는 for문의 돌아가는 상태를 알 수 있게 체크하여 준다

#{status.current}   현재의 for문에 해당하는 번호
#{status.index} 0부터의 순서
#{status.count} 1부터의 순서
#{status.first}  현재 루프가 처음인지 확인
#{status.last}  현재 루프가 마지막인지 확인
#{status.begin} for문의 시작 값
#{status.end}   for문의 끝 값
#{status.step}  for문의 증가값 --%>


	<!-- address list -->
	<c:set var="addrList" value="${addrList }" />
	
	<!-- store list -->
	<c:set var="storeList" value="${storeList }" />
	
	<!-- 접속한 점포 코드 -->
	<c:set var="id" value="<%=id %>"></c:set>
	
	<!-- order list -->
	<c:set var="i" value="0" />
    <c:forEach items="${olist}" var="order" varStatus="status">

        <tr id="tr${order.seq}">
        	<!-- 기본 정보 -->
        	
        	<!-- 상세보기 버튼 -->
            <td style="width: 10%; text-align: center;">
            <button  id="detailBtn" type="button" class="btn btn-danger" value="0" onclick="orderDetail(${order.seq})" >+</button>
            </td>
        	
        	
            <!-- 주문일자 -->
            <td><b>주문일자 : </b>${order.order_date }</td>
        </tr>
        
        <c:set var="i" value="${i+1 }"></c:set>
    </c:forEach>
    
    </tbody>
</table>
</div>
   

<script type="text/javascript">
 
/*---------------------------------------------------------------------------------------------
 * 주문상세 클릭
 *----------------------------------------------------------------------------------------------*/
	function orderDetail(seq){
		alert("상세 보기 클릭");
		
		$.ajax({
            url : "orderDetail.do",
            type: "get",
            data : { "seq" : seq },
            dataType: 'json',
    		contentType : "application; charset=utf-8",
    		traditional : true,
            success : function(data){
                //$("#ajax").remove();
                
                //alert(JSON.stringify(data));
                //alert("길이 : " +data.length);

           		var x = document.getElementById("detailBtn").value;
           	 
           	 	
                for(var i=0; i<data.length; i++){
                
                	if(x==0){
                	
	                	$( '#tr'+seq ).after( 
	                		'<tr class="trtr'+seq+'"><td>'+
	                		'<b>주문번호 : </b> '+data[i].order_seq+ '&nbsp&nbsp&nbsp&nbsp<b>메뉴명 : </b>'+data[i].menu_name+'&nbsp&nbsp&nbsp&nbsp<b>가격 : </b>'+data[i].orderMenu_price+ '&nbsp&nbsp&nbsp&nbsp<b>수량 : </b> '+data[i].orderMenu_quantity +
	                		'<br><b>버거 : </b>'+data[i].burger_name+'&nbsp&nbsp&nbsp&nbsp<b>음료 : </b>'+data[i].beverage_name+'&nbsp&nbsp&nbsp&nbsp<b>사이드 : </b>'+data[i].side_name+
	                		'<br><br>'+
	                		'<b>버거 만들기</b>'+
	                		'<br>'+
	                		data[i].burger_Ingredient +
	                		'</tr></td>'
	                	);
	                	
	                	document.getElementById("detailBtn").value = "1";
                	}else if(x==1){
                		$( '.trtr'+seq ).remove();
                		document.getElementById("detailBtn").value = "0";
                	}
                
                	
                }
                
            },error : function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
	}
	 	
	
function updateRow(data){

	console.log(data);
	
	if(data.status==0){
		$( '#tdPre'+data.seq ).html('<i class="material-icons">shopping_cart</i>');
	}else if(data.status==1){
		$( '#tdPre'+data.seq ).html('<i class="material-icons">payment</i>');
	}else if(data.status==2){
		$( '#tdPre'+data.seq ).html('<i class="material-icons">room_service</i>');
	}else if(data.status==3){
		$( '#tdPre'+data.seq ).html('<i class="material-icons">directions_bike</i>');
	}else if(data.status==4){
		$( '#tdPre'+data.seq ).html('<i class="material-icons">assignment_turned_in</i>');
	}
	
	//$( '#tdPre'+data.seq ).html('랄라');
	
}


$(document).ready(function() {
	/* initComplete(); */
	var col_kor = [
        { }
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
</script>	
  