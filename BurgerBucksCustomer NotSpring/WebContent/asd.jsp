<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="CSS/Necessary.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <title>Insert title here</title>
</head>
<body>

<!-- Modal Button -->
<button style="color: #ededed; margin:100px;" href="#" data-toggle="modal" data-target="#burgerModal">asd</button>

<!-- DIY Burger Modal -->
<div class="modal fade" id="burgerModal" role="dialog" align="center" style="margin: auto; margin-top:100px; overflow: hidden;">
  
  <!-- Modal Part -->
  <div style="height:600px; width: 800px; background-color: #f3f3f3; border-radius: 4px;">
    
    <!-- Modal Explanation -->
    <div style="width: 800px; height: 40px; padding: 10px;">
      <label style="float: left;">나만의 햄버거 제작</label>
      <a onclick="initBurgerModal()" data-dismiss="modal" style="float: right;"><label style="cursor:pointer;">X</label></a>
    </div> 
    
    <!-- Modal Contents -->
    <div style="width: 800px; height: 560px; padding:10px;">
      <form action="BurgerCont" method="get" name="burgerInfo" onsubmit="return logincheckValue()">
        
        <!-- Name input-->
        <div style="border:1px solid green;  width: 780px; height: 40px;">
          <div class="input-group" style="width: 300px; float:left;">
            <span class="input-group-addon">이름</span> 
            <input id="id" name="id" type="text" class="form-control" 
            placeholder="햄버거의 이름을 입력해주세요" required>
          </div>
        </div>
        
        <!-- Burger Ingredient -->
        <div style="height:440px; width: 780px; margin-top:10px;">
        
          <!-- Ingredient List -->
          <div style="height:440px; width: 320px; float: left;">
            <div id="ingredientList" style="border:1px solid green; height:440px; width: 320px; vertical-align: bottom; display: table-cell;" align="center">            
              
              <div style="height:30px; width: 318px; margin-bottom: 30px; z-index: 0; position: relative; display: block;">
                <div style="height:30px; width: 140px; float:left;" align="center">
                  <img src="./Ingredient/bread_homil.png" id="bread_down" style="height: 50px; width: 100px; margin-top:-10px;">
                </div>
                <div style="height:30px; width: 120px; float:left; padding-top:5px;" align="center">
                  <p>호밀빵</p>
                </div>
                <div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">
                </div>
              </div>
              
             </div>
          </div>
          
          <!-- Ingredient Select -->
          <div style="border:1px solid green; height:440px; width: 450px; float: right; display: inline-block;">
            
            <!-- Bread and Meat Select -->
            <div style="height:220px; width: 440px;">
              <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                <label class="control-label">햄버거 번</label><br>
                <select class="form-control" id='breadSelect' name='breadSelect' style="width: 180px; float:left;" size="8">
                  <option value='호밀번' selected>호밀번</option>
                  <option value='밀번'>밀번</option>
                  <option value='흑미번'>흑미번</option>
                </select>
              </div>
              
              <div class="form-group" style="height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                <label class="control-label">패티</label><br>
                <select class="form-control" id='meatSelect' name='meatSelect' style="width: 180px; float:left;" size="8">
                  <option value='소고기패티'>소고기패티</option>
                  <option value='스테이크패티'>스테이크 패티</option>
                  <option value='치킨패티'>치킨패티</option>
                </select>
              </div>
            </div>
            
            <!-- Lettuce and Etc Select -->
            <div style="height:220px; width: 440px;">
              <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                <label class="control-label">채소</label><br>
                <select class="form-control" id='vegeSelect' name='vegeSelect' style="width: 180px; float:left;" size="8">
                  <option value='상추'>상추</option>
                  <option value='양파'>양파</option>
                  <option value='치즈'>치즈</option>
                </select>
              </div>
              
              <div class="form-group" style="margin-top:-15px; height:220px; width: 220px; float:left; text-align: left; padding:10px;">
                <label class="control-label">기타</label><br>
                <select class="form-control" id='etcSelect' name='etcSelect' style="width: 180px; float:left;" size="8">
                </select>
              </div>
            </div>
            
          </div>
        </div>
        
        <div style="border:1px solid green; width: 780px; margin-top:10px; height: 40px;">
        </div>
        
      </form>
    </div>
      
  </div>
  
  <!-- Script Part -->
  <script type="text/javascript">
  var ingredientList = [];
  var divIdList = [];
  var ingredientIdCount = 0;
  var ingredientCount = 0;
  
  $(document).ready(function () {
    
    //빵 선택
    $("#breadSelect").click(function(){
      var selectedBread = $("#breadSelect option:selected").val(); 
              
      switch (selectedBread) {
      case "호밀번": var breadImgSrc = "./Ingredient/bread_homil.png"; break;
      case "흑미번": var breadImgSrc = "./Ingredient/bread_mil.png"; break;
      case "밀번": var breadImgSrc = "./Ingredient/bread_black.png"; break;
      default : alert("잘못된 선택입니다."); break;
      }
      
      $("#bread_down").attr("src", breadImgSrc);
      $("#bread_top").attr("src", breadImgSrc); 
      
    });
    
    //고기 선택
    $("#meatSelect").click(function(){
      
      if (ingredientCount>=9) {alert("더 이상 재료를 추가할 수 없습니다."); return;}
      
      var ingredientImgSrc;
      var ingredientID = "ing" + ingredientIdCount;
      var selectedMeat = $("#meatSelect option:selected").val();
      ingredientList.push(selectedMeat);
      divIdList.push("div"+ingredientID);
       
      switch (selectedMeat) {
      case "소고기패티": ingredientImgSrc = "./Ingredient/meat_beaf.png"; break;
      case "스테이크패티": ingredientImgSrc = "./Ingredient/meat_steak.png"; break;
      case "치킨패티": ingredientImgSrc = "./Ingredient/meat_chicken.png" ; break;
      default : alert("잘못된 선택입니다."); return; break;
      }
              
      var newIngredient = '<div id="div' + ingredientID + '" style="height:30px; width: 318px; margin-top: 5px; z-index:' + (ingredientCount+1) + '; position: relative; display: block;">';
      
      newIngredient += '<div style="height:30px; width: 140px; float:left;" align="center">';
      newIngredient += '<img id="' + ingredientID + '" src="' + ingredientImgSrc + '" style="height: 50px; width: 100px; margin-top:-110px; ">';
      newIngredient += '</div>';
      
      newIngredient += '<div style="height:30px; width: 120px; float:left; padding-top: 5px;" align="center">';
      newIngredient += '<p>' + selectedMeat + '</p>';
      newIngredient += '</div>';
      
      newIngredient += '<div style="height:30px; width: 58px; float:left; padding-top:5px;" align="center">';
      newIngredient += '<button style="height:20px; width: 20px; padding:0px;" class="btn btn-danger glyphicon glyphicon-remove" onclick="delRow(this)" type="button"></button>';
      newIngredient += '</div>';
      
      newIngredient += '</div>';
      
      $('#ingredientList').prepend(newIngredient);
      $('#'+ingredientID).animate({marginTop: "+=100px"});
      
      ingredientCount ++;
      ingredientIdCount ++;
      $("#meatSelect option:selected").prop("selected", false);
    });
    
  });
  
  //행 삭제
  function delRow (button){
    ingredientCount --;
    $(button).parent().parent().remove();
  }
  
  //햄버거 모달 초기화
  function initBurgerModal() {
    
    for (var i = 0; i < divIdList.length; i++) {
      $("#"+divIdList[i]).remove();
    }
    
    ingredientList = [];
    divIdList = [];
    ingredientIdCount = 0;
    ingredientCount = 0;
  }
  </script>
</div>


</body>
</html>