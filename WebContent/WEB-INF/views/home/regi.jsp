<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post" id="_frmForm" name="frmForm">
id: <input type="text" id="_id" data-msg="아이디"><br>
password: <input type="text" id="_pwd" data-msg="비밀번호"><br>
birthday: <input type="text" id="_bday" data-msg="생일"><br>
name: <input type="text" name="name" id="_name" data-msg="이름"><br>
phone: <input type="text" id="_phone" data-msg="전화번호"><br>
sex: <input type="text" id="_sex" data-msg="성별"><br>
<table>
<tr>
	<td style="height: 50px; text-align: center;">
	<a href="#none" id="_btnRegi" title="회원가입">
		<img alt="회원가입" src="image/regi.jpg">
	</a>
	<a href="#none" id="_btnLogin" title="로그인">
		<img alt="로그인" src="image/login_btn.jpg">
	</a>
	<a href="#none" id="_btnCancel" title="가입취소">
		<img alt="가입취소" src="image/login_btn.jpg">
	</a>
	</td>					
</tr>
</table>
</form>

<script type="text/javascript">
$("#_btnRegi").click(function() {	
	if($("#_id").val() == ""){		
		alert($("#_id").attr("data-msg") + " 입력해 주십시오" );
		$("#_id").focus();
	}
	else if($("#_pwd").val() == ""){		
		alert($("#_pwd").attr("data-msg") + " 입력해 주십시오" );
		$("#_pwd").focus();
	} 
	else if($("#_bday").val() == ""){		
		alert($("#_bday").attr("data-msg") + " 입력해 주십시오" );
		$("#_bday").focus();
	} 
	else if($("#_name").val() == ""){		
		alert($("#_name").attr("data-msg") + " 입력해 주십시오" );
		$("#_name").focus();
	} 
	else if($("#_phone").val() == ""){		
		alert($("#_phone").attr("data-msg") + " 입력해 주십시오" );
		$("#_phone").focus();
	}
	else if($("#_sex").val() == ""){		
		alert($("#_sex").attr("data-msg") + " 입력해 주십시오" );
		$("#_sex").focus();
	}
	else{
		$("#_frmForm").attr({"target":"_self", "action":"regiAf.do" }).submit();		
	} 
});

</script>
</body>
</html>