<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/> 



  <!-- Guide -->
  <div style="width: 1000px; height: 30px; margin: 0 auto; margin-top: 20px; margin-bottom: 20px;" align="center">
    <div style="width: 600px; height: 30px; background-color: white; border: 1px solid #999999; border-radius: 4px; padding: 5px;">
      <p>2. 메뉴 선택</p>
    </div>
  </div>
        
  <!-- Order and Cart and Pay -->
  <div style="padding: 0; margin: 0 auto; margin-top:20px; height: 800px; width: 1000px; margin-bottom: 20px;">
  
    <!-- Order --> 
    <div style="display:block; height: 800px; width:640px; float: left; border: 1px solid #999999; border-radius: 4px;">
                
    </div>
    
    <!-- Cart and Pay -->
    <div style="margin-left:10px; display:block; height: 800px; width:350px; float: left;">
      
      <!-- Cart -->
      <div style="border: 1px solid #999999; border-radius: 4px; height: 480px; width:350px; padding: 10px;" align="center">
        <div>장바구니</div>
        <hr style="margin-top:10px; width: 300px; border-color: #aaaaaa;">
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
        <div style="margin-top:10px; border: 1px solid #999999; border-radius: 4px; height: 60px; width:330px;">
        </div>
      </div>
      
      <!-- Pay -->
      <div style="margin-top:20px; border: 1px solid #999999; border-radius: 4px; height: 300px; width:350px; padding: 10px;" align="center">
        
        <div>내 주문 정보</div>
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">주소지</label><br>
          <div style="margin-top: 5px; height : 30px; width:330px; padding-top: 5px;">
          	<c:if test="${empty list}"> 
	            <select style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px; float: left;">
	              <option>주소를 새로 추가해주세요</option>
	            </select>
            </c:if>
            <c:if test="${not empty list}">
				 <select style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px; float: left;">
					<c:forEach var="addr" items="${list}" varStatus="vs">
						<option>${addr.address}</option>
					</c:forEach>	
				</select>
				</c:if>
            <a href="#" style="font-size: 12px;">변경</a>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">예정 도착 시각</label><br>
          <div style="margin-top: 5px; padding-top: 5px;">
            <div style="margin-top:-5px; border: 1px solid #999999; border-radius: 4px; height: 30px; width:280px;  float: left; padding:3px;">
             <font style="float:left;">2018/04/05 14:05</font>
            </div>
            <a href="#" style="font-size: 12px;">변경</a>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <div class="form-group" style="margin-top: 5px; height: 50px; width:330px;">
          <label class="control-label" for="comment" style="float: left;">결제 금액</label><br>
          <div style="margin-top: 5px; height: 30px; width:330px; padding-right: 10px;" align="right">
            <font style="font-size: 20px;">0</font>
            <label style="font-size: 20px;">원</label>
          </div>
        </div>
        
        <hr style="margin-top:10px; margin-bottom: 0px; width: 300px; border-color: #aaaaaa;">
        <button class="btn btn-success" style="width: 240px; height:26px; margin-top:10px; padding-top: 2px;" type="button">주문하기</button>
        
      </div>
      
    </div>
  </div>
  