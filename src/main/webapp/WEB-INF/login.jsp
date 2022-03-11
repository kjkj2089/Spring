<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<title>PIONWORLD</title>

<script language="javascript">

	alert("로그인 실패");
	
	function fn_login(){
		var f = document.getElementById("login");
		if(f.login_id.value.length == 0){
			alert("아이디를 입력하세요");
			f.login_id.focus();
			return ;
		}else if(f.password.value.length == 0){
			alert("패스워드를 입력하세요");
			f.password.focus();
			return ;
		}else{
		 	f.action = "login.do";
			f.method.value = "authenticate";
			f.submit();
			
			console.log("${message}");
			 	
			 
			 
		}
	}

	//신입 등록 팝업
	function fn_viewNewEmp(){
		var f=document.getElementById("login");
		var theURL="/employee/employeeMgmt.do";
		var param ="&method=viewNewEmployee";
		
		f.method.value="viewNewEmployee";
		
		openNoScrollWin(theURL, "VIEW_NEWEMP", "신입등록", "1000", "750", param);
	}
	
	//
	function fn_init(){
	  var f=document.getElementById("login");
	  f.login_id.focus();
	}
</script>

<script language="JavaScript" type="text/JavaScript" src="common/js/openwin.js"></script>
<script language="JavaScript" type="text/JavaScript" src="common/js/jquery.js"></script>

<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/css/common.css" type="text/css" />

</head>
<body onload='javascript:fn_init();'>

        
<!-- LOGIN WRAP -->
<div class="login_wrap">
	<form name="login" id="login" method="post" action="">
	   <input type="hidden" name="method">
	    <input type="hidden" name="current_sys" value="10">
		<fieldset>
		<legend>로그인</legend>
		
		<!-- LOGIN -->	
		<div class="log_wrap">
			<h1><img src="/images/h1_logo.png" width="120" height="35" alt="pionnet"></h1>
			<div class="log_box">
				<h2>
					<img src="/images/h2_pion.png" width="257" height="47" alt="파이언넷 월드">
					<span>파이언넷 직원들의 이야기, 사내 인트라넷</span>
				</h2>
				<dl>
					<dt class="ir">로그인</dt>
					<dd class="pwid">
						<input type="text" name="login_id" id="login_id" title="아이디 입력"  onKeyDown="javascript:  if (event.keyCode == 13) {  fn_login(); }" />
						<label for="userid">아이디</label>
					</dd>
					<dd class="pwid">
						<input type="password" name="password" id="password" title="비밀번호 입력" onKeyDown="javascript:if (event.keyCode == 13) { fn_login(); }" />
						<label for="userpw">비밀번호</label>
					</dd>
					<dd class="btn">
						<a href="javascript:fn_login();" class="bt_log"><b>로그인</b></a>
						<a href="javascript:fn_viewNewEmp();" class="bt_reg">신입직원 등록</a>
					</dd>
					<dd class="cpy">Copyright ⓒ PIONNET Inc., All Rights Reserved.</dd>
				</dl>
			</div>
		</div>
		<!-- //LOGIN -->	
		</fieldset>
	</form>
</div>
<!-- //LOGIN WRAP -->

<script type="text/javascript">
	
	// random bg
	var wrap = $('.login_wrap');
	var bg_ary = new Array('bg_login_2016_01.jpg', 'bg_login_2016_02.jpg', 'bg_login_2016_03.jpg', 'bg_login_2016_04.jpg', 'bg_login_2016_05.jpg');
	var bg_name = bg_ary[Math.floor(Math.random() * bg_ary.length)];
	wrap.css({'background':'url(/images/'+bg_name+') no-repeat 0 0'})

	//input label ie8
	$('.pwid input, .pwid label')
	.focus(function(){
		$(this).parents('.pwid').addClass('on');
		$(this).parents('.pwid').find('label').css('visibility','hidden');
	})
	.blur(function(){
		if($(this).val() == ''){
			$(this).parents('.pwid').removeClass('on');
			$(this).parents('.pwid').find('label').css('visibility','visible');
		} else {
			$(this).parents('.pwid').addClass('on');
			$(this).parents('.pwid').find('label').css('visibility','hidden');
		}
	})
	.change(function(){
		if($(this).val() == ''){
			$(this).parents('.pwid').removeClass('on');
			$(this).parents('.pwid').find('label').css('visibility','visible');
		} else {;
			$(this).parents('.pwid').addClass('on')
			$(this).parents('.pwid').find('label').css('visibility','hidden');
		}
	})
	.blur();

</script>

</body>
</html>
