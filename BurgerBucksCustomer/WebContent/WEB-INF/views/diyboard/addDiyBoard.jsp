<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 

<!-- fontawesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.diy-box{
	height:280px;
	width:220px;
	float: left;
	display: inline-block;
	background-color:white;
	padding: 10px;
	margin-left: 20px;
	margin-right: 20px;
}
.diy-detail{
	height: 200px;
	width: 200px;
	margin: auto;
	background-color: gray;
}
.text-left{
	height: 60px;
	width: 80px;
	background-color: yellow;
	float: left;
	padding-top: 5px;
}
.text-right{
	height: 60px;
	width: 120px;
	background-color: pink;
	float:right;
	padding-top: 5px;	
}
</style>
<div style="padding: 0; margin: 0 auto; margin-top:20px; height: 2000px; width: 1000px;">
	<div>
		<div align="center">
			<h3>DIY버거등록하기</h3>
		</div>
		<div>
			<c:forEach var="bbsdto" items="${bbsList}" varStatus="status">
		
				<div class="diy-box">
					<div class="diy-detail">
					<c:if test="${bbsdto.image_Src == '없음' }">
					<img alt="" src="./UI/AdminBurgerImage.png" style="width: 200px; height: 200px;">
					</c:if>
					<c:if test="${bbsdto.image_Src != '없음' }">
					<img alt="" src="${imagePath}${bbsdto.image_src}" style="width: 200px; height: 200px;">
					</c:if>
					
					</div>
					<div class="text-left">
						<div style="font-size:1.5em; color:Tomato">
							<p style="margin-top: 3px;"><i class="fa fa-check" style="font-size: 15px;">${bbsdto.name}</i></p>
						</div>
						
					</div>
					<div class="text-right">
						<input type="button" class="btn btn-outlined btn-warning" value="등록" onclick="location.href='regiDiyBurger.do?seq=${bbsdto.seq}'">
						<input type="button"  class="btn btn-outlined btn-danger" value="상세" onclick="bbsDetail('${bbsdto.seq}')"  data-toggle="modal" data-target="#detailModal"><br>
						<p style="margin-top: 3px;"><i class="fa fa-krw">${bbsdto.price}</i></p>
					</div>
				</div>
				<c:if test="${status.index%3 ==2 }">
				</div><div> 
				</c:if>
				
			</c:forEach>
		</div>
	</div>
</div>
<!-- 상세보기 모달-->


  <!-- Modal -->
  <div class="modal fade" id="detailModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" style="color: white">버거정보</h4>
        </div>
        <div class="modal-body">
          <div id="burgerName" style="color: white"></div>
          <div id="creatorId" style="color: white"></div>
          <div id="ingredients" style="color: white"></div>
          <div id="calories" style="color: white"></div>
          <div id="price" style="color: white"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

<script>
function bbsDetail(burger_Seq) {
		alert(burger_Seq);
		var data = {};
	    
		data["seq"]=burger_Seq;
		
		$.ajax({
			contentType:'application/json',
			dataType:'json',
			data:JSON.stringify(data), 		//JavaScript 값을 JSON으로 변환 한다
			url:"getBurgerDiyDetail.do",			// side
			type:'POST',
			success:function(data){
				
			console.log(data);
			/* var burgerDD = JSON.parse(data); */
	        $("#burgerName").html("버거이름 : "+data.name);
	        $("#creatorId").html("만든이 : "+data.creatorID);
	        $("#ingredients").html("재료 : "+data.bread_name+"/"+
	        		  data.ingredient01_name+"/"+
	        		  data.ingredient02_name+"/"+
	        		  data.ingredient03_name+"/"+
	        		  data.ingredient04_name+"/"+
	        		  data.ingredient05_name+"/"+
	        		  data.ingredient06_name+"/"+
	        		  data.ingredient07_name+"/"+
	        		  data.ingredient08_name+"/"+
	        		  data.ingredient09_name
	          );
	         $("#calories").html("칼로리 : "+data.cal);
	         $("#price").html("가격 : "+data.price);
			 
				
			},
			error:function(req, status, error){
				alert("error");
			}
		
		});

}

</script>
