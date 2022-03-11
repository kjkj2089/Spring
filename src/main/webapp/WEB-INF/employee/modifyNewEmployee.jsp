<%@page import="com.example.pion.application.dto.MemberResponse"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<META http-equiv="Cache-Control" content="no-cache"/>
<META http-equiv="Expires" content="0"/>
<META http-equiv="Pragma" content="no-cache"/>
<META http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/css/log.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" type="text/css" href="/css/silver_grid.css">
	
<script language="JavaScript" type="text/JavaScript" src="/common/js/objectTag.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/common.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/date.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/text.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/number.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/validate.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/calendar.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/openwin.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/form.js"></script>
<!--script language="JavaScript" type="text/JavaScript" src="/common/js/biz.js"></script-->
<script language="JavaScript" type="text/JavaScript" src="/common/js/cookie.js"></script>
<script language="JavaScript" type="text/JavaScript" src="/common/js/Cm_Grid_Script.js"></script>



<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>    
<script type="text/javascript" src="/common/js/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="/common/js/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="/common/js/jshashtable-2.1.js"></script>
<script type="text/javascript" src="/common/js/jquery.numberformatter-1.2.3.min.js"></script>
<script type="text/javascript" src="/common/js/jquery.contextmenu.min.js"></script>
<script type="text/javascript" src="/common/js/json2.js"></script>
<script type="text/javascript" src="/common/js/ui.js"></script>

<script type="text/javascript" src="/common/js/overpass.calendar.js"></script>
<script type="text/javascript" src="/common/js/overpass.common.js"></script>
<script type="text/javascript" src="/common/js/overpass.form.js"></script>
<script type="text/javascript" src="/common/js/overpass.util.js"></script>

<script type="text/javascript" src="/common/js/overpass/overpass.popup.js"></script>

<!-- HighCharts -->
<script type="text/javascript" src="/common/js/highcharts/highcharts.js"></script>
<script type="text/javascript" src="/common/js/highcharts/modules/exporting.js"></script>
<!-- <script type="text/javascript" src="/common/js/highcharts/modules/export-data.js"></script> -->


<link rel="stylesheet" href="/common/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" />

<script type="text/javascript" src="/common/js/base/datagrid.js"></script>
<script type="text/javascript" src="/common/js/base/datagrid.events.js"></script>
<script type="text/javascript" src="/common/js/base/datagrid.functions.js"></script>
<script type="text/javascript" src="/common/js/base/tree.js"></script>
<script type="text/javascript" src="/common/js/base/tree.events.js"></script>
<script type="text/javascript" src="/common/js/base/tree.functions.js"></script>
<script type="text/javascript" src="/common/js/base/imageuploader.js"></script>
<script type="text/javascript" src="/common/js/base/imageuploader.events.js"></script>
<script type="text/javascript" src="/common/js/base/imageuploader.functions.js"></script>

<script type="text/javascript">
<!--
	var _site_skin = "blue";
	var _request_uri = "/employee/employeeMgmt.do";
	var _mobile_yn = false;

	var _GRID_TYPE = null;
	var _GRID_SILVERLIGHT = "S";
	var _GRID_JQGRID = "J";
//-->
</script>


<script type="text/javascript" src="/common/js/silverlight/silverlight.min.js"></script>
<script type="text/javascript" src="/common/js/silverlight/datagrid.js"></script>
<script type="text/javascript" src="/common/js/silverlight/imageuploader.js"></script>
<script type="text/javascript" src="/common/js/silverlight/imageuploader.functions.js"></script>
<script type="text/javascript" src="/common/js/silverlight/imageuploader.events.js"></script>
<!-- <script type="text/javascript" src="/common/js/silverlight/tree.js"></script>
<script type="text/javascript" src="/common/js/silverlight/tree.node.functions.js"></script>
<script type="text/javascript" src="/common/js/overpass/overpass.tree.js"></script> -->





<!--script language="JavaScript" type="text/JavaScript" src="/common/js/ajax.js"></script-->



<!-- YUI JS files --> 
<!--
<script type="text/javascript" src="/common/js/yui/build/utilities/utilities.js"></script>
<script type="text/javascript" src="/common/js/yui/build/json/json-min.js"></script>
<script type="text/javascript" src="/common/js/yui/build/button/button-min.js"></script>
<script type="text/javascript" src="/common/js/yui/build/container/container-min.js"></script>
<script type="text/javascript" src="/common/js/yui/build/calendar/calendar-min.js"></script>
<script type="text/javascript" src="/common/js/yui/build/paginator/paginator-min.js"></script>
<script type="text/javascript" src="/common/js/yui/build/treeview/treeview-min.js"></script>
--> 
<script type="text/javascript">
<!--
	var _SERVER_PORT = 8096; 
//-->
</script>

<div style="display:none">
<iframe src="" name="action_frame" width="0" height="0"></iframe>
</div>

<script language=javascript>
	
	//수정
	function fn_update(){
	
		var f = document.formEmployee;
		/* if( f.login_id.value == "" ) {

			alert("아이디를 입력하세요.");
			f.login_id.focus();
			return;

		} else {
		
			// 아이디 중복체크했는지 확인
			if( f.login_id_flag.value == "N") {
				
				if( f.obj_login_id.value !=  f.login_id.value ){
				
					alert("아이디 중복확인을 하세요.");
					return;
				}
				
			}
			if( isNotValidID(f.login_id) ) {
				// 아이디 valid 체크되지 않음
				return;
			}
		}
		
		//패스워드 chk
		if( isEmpty( f.password, "패스워드를 입력하세요.")) return;
	
		//패스워드 재확인
		if( isEmpty( f.password_chk, "패스워드를 다시 확인해 주세요." )) return;
	
		//패스워드 친거랑 패스워드 재확인이 틀릴경우 ckh
		if( f.password.value !=  f.password_chk.value){
			alert("패스워드가 틀립니다. 다시 한번 확인 해 주시기 바랍니다.");
			f.password.focus();
			return;
		}
	
		//이름 chk
		if( isEmpty( f.emp_name, "이름을 입력하세오")) return;
	
		//주민등록번호 chk
		if( isNotValidPID(f.resd_no_1, f.resd_no_2) ){
			return;	
		}
		f.resd_no.value = f.resd_no_1.value + "" + f.resd_no_2.value;
		
		//본인생일 chk
		if(isEmpty(f.my_birthday, "생일을 입력하세요")) return;
		
		if( f.my_birthday.value != '' ){
			
			if( !isDate(f.my_birthday.value) ){
			
				alert("생일을 형식에 맞게 입력 하여 주십시오");
				f.my_birthday.focus();
				return;
			}
		}
		
		f.my_birthday.value = replaceStr(f.my_birthday.value, "-", "");
		
		//결혼여부 chk
		if( f.married_anniver_date.value != '' ){
		
			if( !isDate(f.married_anniver_date.value) ){
			
				alert("결혼기념일을 형식에 맞게 입력 하여 주십시오");
				f.married_anniver_date.focus();
				return;
			}	
		}
		
		if( f.married_anniver_date.value != '' ){
		
			f.married_anniver_date.value = replaceStr(f.married_anniver_date.value, "-", "");
			f.married_yn.value = 'Y';
			
		}else{
		
			f.married_yn.value = 'N';
		}
		
		//입사일 chk
		if(isEmpty(f.enter_date, "입사일을 입력하세요")) return;
		
		f.enter_date.value = replaceStr(f.enter_date.value, "-", "");
		

		//입사전경력
		if( f.before_career_year.value != '' ){
			if( !isNumeric( f.before_career_year ) ){
				alert("입사전 경력(년)은 숫자만 입력 가능합니다.");
				f.before_career_year.value = '';
				f.before_career_year.focus();
				return;
			}
			
			if( f.before_career_year.value.length < 2 ){
				f.before_career_year.value =  '0' + f.before_career_year.value;
			}else{
				f.before_career_year.value;
			}
		}else{
		
			f.before_career_year.value = '00';
		}
		
		
		if( f.before_career_month.value != '' ){
			if( !isNumeric( f.before_career_month ) ){
				alert("입사전 경력(월)은 숫자만 입력 가능합니다.");
				f.before_career_month.value = '';
				f.before_career_month.focus();
				return;
			}
			
			if( f.before_career_month.value > 11 ){
				alert("입사전 경력(월)을 형식에 맞게 입력해 주십시오.");
				f.before_career_month.value = '';
				f.before_career_month.focus();
				return;
			}
			
			if( f.before_career_year.value == '' ){
				f.before_career_year.value = '00';
			}
			
			if( f.before_career_month.value.length < 2 ){
				f.before_career_month.value =  '0' + f.before_career_month.value;
			}else{
				f.before_career_month.value;
			}
			
		}else{
		
			f.before_career_month.value = '00';
		}
		
		if(	f.before_career_year.value == '' &&  f.before_career_month.value == ''){
			
			f.before_career_year.value = '00';
			f.before_career_month.value ='00';
		}
		
		//당사경력
		if( f.company_career_year.value != '' ){
			if( !isNumeric( f.company_career_year ) ){
				alert("당사 경력(년)은 숫자만 입력 가능합니다.");
				f.company_career_year.value = '';
				f.company_career_year.focus();
				return;
			}
			
			if( f.company_career_year.value.length < 2 ){
				f.company_career_year.value =  '0' + f.company_career_year.value;
			}else{
				f.company_career_year.value;
			}
		}else{
		
			f.company_career_year.value = '00';
		}
		
		if( f.company_career_month.value != '' ){
			if( !isNumeric( f.company_career_month ) ){
				alert("당사 경력(월)은 숫자만 입력 가능합니다.");
				f.company_career_month.value = '';
				f.company_career_month.focus();
				return;
			}
			
			if( f.company_career_month.value > 11 ){
				alert("당사 경력(월)을 형식에 맞게 입력해 주십시오.");
				f.company_career_month.value = '';
				f.company_career_month.focus();
				return;
			}
			
			if( f.company_career_year.value == '' ){
				f.company_career_year.value = '00';
			}
			
			if( f.company_career_month.value.length < 2 ){
				f.company_career_month.value =  '0' + f.company_career_month.value;
			}else{
				f.company_career_month.value;
			}
		}else{
		
			f.company_career_month.value = '00';
		}
		
		if(	f.company_career_year.value == '' && f.company_career_year.value == ''){
			
			f.company_career_year.value = '00' ;
			f.company_career_month.value ='00';
		}
		
		f.before_career_cnt.value = f.before_career_year.value + f.before_career_month.value;
		f.company_career_cnt.value = f.company_career_year.value + f.company_career_month.value;
			
		//집주소 chk
		if( f.home_zipcode.value == ''){
		
			alert("집 우편번호를 입력하세요");
			f.home_zipcode.focus();
			return;
		}	
	
		if(isEmpty(f.home_detail_addr, "집주소를 입력하세요")) return;
	
		//집연락처 chk
		if(isEmpty(f.home_tel_no, "집연락처를  입력하세요")) return;
	
		//현거주지 chk
		if( f.now_zipcode.value == ''){
		
			alert("현거주지 우편번호를 입력하세요");
			f.now_zipcode.focus();
			return;
		}
		
		if(isEmpty(f.now_detail_addr, "현거주지 주소를 입력하세요")) return;
	
		//현거주지 연락처 chk
		if(isEmpty(f.tel_no, "현거주지 연락처를  입력하세요")) return;
	
		//핸드폰 chk
		if(isEmpty(f.hp_tel_no, "핸드폰번호를 입력하세요")) return;
		
		//기술경력서 chk
		if( f.career_history.value != '' ){
		
			f.career_yn.value = '유';
			f.career_history_yn.value = 'Y';
			
		}else{
		   if (f.career_yn.value=='무') {
				f.career_yn.value = '무';
				f.career_history_yn.value = 'N';
		   } else {
			    f.career_yn.value = '유';
				f.career_history_yn.value = 'Y';
		   }
		}
		
		//부서장 여부
		if( !f.check.checked ){
		
			f.team_leader_yn.value = 'N';
				
		}else{
		
			f.team_leader_yn.value = 'Y';	
		}
		
		//양력여부
		if( !f.check_yn.checked ){
		
			f.solar_yn.value = 'N';
			
		}else{
		
			f.solar_yn.value = 'Y';
		}
		
		//사내커플인경우는 복지구분코드를 고를 수 있다.
		if( f.couple_yn.checked == true ){
			
			f.comp_couple_yn.value = 'Y';
			
			//복지 구분 코드
			f.walfare_gubun_code.value = f.walfare_code.value;
			
			//복지종류코드
			f.walfare_kind_code.value = '10';
			
			//결혼여부 chk
			if( f.married_anniver_date.value != '' ){
			
				if( !isDate(f.married_anniver_date.value) ){
				
					alert("결혼기념일을 형식에 맞게 입력 하여 주십시오.");
					f.married_anniver_date.focus();
					return;
				}
			}else{
				alert("결혼기념일을 입력해 주세요");
				return;
			}
			
			if( f.married_anniver_date.value != '' ){
			
				f.married_anniver_date.value = replaceStr(f.married_anniver_date.value, "-", "");
				f.married_yn.value = 'Y';
			}
			
		}else{
		
			f.comp_couple_yn.value = 'N';
			
		} */
		
		f.action = "/employee/employeeMgmt.do";
		f.method.value = "modifyNewEmployeeRst";
		f.target = "action_frame";
		f.encoding="multipart/form-data";
		f.submit();
		alert("update 성공!!!");
	}
	
	//집우편번호 셋팅
	function fn_setZipCodeHome(zipCode, base_addr){
		var f = document.formEmployee;
		
		f.home_zipcode.value = zipCode;
		f.home_addr.value = base_addr;
	}
	
	//현거주지 우편번호 셋팅
	function fn_setZipCodeNow(zipCode, base_addr){
	
		var f = document.formEmployee;
		
		f.now_zipcode.value = zipCode;
		f.now_addr.value = base_addr;
	}
	//취소하기
	function fn_cancel(){

		var f = document.formEmployee;
		
		f.action = "/employee/employeeMgmt.do";
		f.method.value = "modifyNewEmployee";
		f.submit();
	
	}
	
	//집주소와 동일(체크박스를 클릭했을 경우)
	function fn_addr_equal(){
	
		var f = document.formEmployee;
		
		if( f.home_addr_equal.checked == true ){
		
			f.now_zipcode.value = f.home_zipcode.value;
			f.now_addr.value = f.home_addr.value;
			f.now_detail_addr.value = f.home_detail_addr.value;
			f.tel_no.value = f.home_tel_no.value;
		}
	}
	
	//중복 아이디 찾기 팝업
	function fn_loginIdCheck(){
	
	var f = document.formEmployee;
	f.method.value="searchLoginIdChkPop";
	if( f.login_id.value == '' ) {
	
			alert("아이디를 입력해 주세요.");
			f.login_id.focus();
			return;

		} else {
			
			//아이디 중복팝업 
			openNoScrollWin('/employee/employeeMgmt.do', '', '아이디중복찾기팝업', '370', '350', '&method=searchLoginIdChkPop&cb_func=fn_loginIdChk&login_id=' + f.login_id.value, 'Y');
		}
	}
	//아이디 중복 체크 후 콜백되는 평션 타기
	function fn_loginIdChk(flag_value, login_id) {

		var f = document.formEmployee;
	
		f.login_id.value = login_id;

		// 아이디 중복체크 플레그 변경
		f.login_id_flag.value = flag_value;
		return;

	}
	
	//사내커플여부
	function fn_coupleYn(){
		
		var f = document.formEmployee;
		
		if( f.couple_yn.checked == true ){
		
			if( false ){
			
				f.walfare_code.disabled = true;
			}else{
			
				f.walfare_code.disabled = false;
			}
			
		}else{
		
			f.walfare_code.disabled = true;
		}
		
	}
	
	function fn_udt_image(emp_no){
		theURL = "/empImage/empImageMgmt.do";
		param ="&method=imageModifyEmployee&emp_no="+emp_no;
		
		openScrollWin(theURL, "emp_img", "사진첩 관리", "1000", "750", param)
	}
	
	function fn_base_image(emp_no){
		theURL = "/empImage/empImage/imageBaseEmployee.do";
		
		openScrollWin(theURL, "emp_img", "메인사진 등록", "1000", "80")
	}

</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>파이언넷</title>
<link href="/include/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
<form name="formEmployee" method="post">
<input type="hidden" name="method">
<input type="hidden" name="resd_no" value="">
<input type="hidden" name="before_career_cnt" value="">
<input type="hidden" name="company_career_cnt" value="">
<input type="hidden" name="team_leader_yn" value="">
<input type="hidden" name="obj_team_id" value="">
<input type="hidden" name="login_id_flag" value="N">
<input type="hidden" name="solar_yn" value="">		<!-- 양력여부 -->
<input type="hidden" name="married_yn" value="">	<!-- 결혼여부 -->
<input type="hidden" name="enter_yn" value="Y">		<!-- 입사처리 여부 -->
<input type="hidden" name="obj_login_id" value="">		<!-- 수정시 기존에 가지고 있던 로그인 아이디 -->
<input type="hidden" name="comp_couple_yn" value=""><!-- 사내커플 여부 -->

	<tr>
		<td height="35"><img src="/images/icon_title.gif" width="19" height="19" align="absmiddle"><span class="title_tt">개인정보 수정</span></td>
	</tr>
	<tr>
		<td height="1" bgcolor="#CCCCCC"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	

    <tr>
		<td>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
                	<td valign="top"> 
                  	<!--신입&경력사원 등록 테이블 -->
						<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#CCCCCC">
  							<tr bgcolor="#FFFFFF"> 
    							<td width="10%" height="23" bgcolor="#eeeeee" ><span class="red_n">* </span>아이디</td>
    							<td colspan="3" >
    								<input name="login_id" type="text" class="input01" size="20" onKeyUp="javascript:fn_loginIdChk('N',login_id.value)" value="${login_id}">
    								<a href="javascript:fn_loginIdCheck();"><img src="/images/btn/btn_repetition.gif" name="check_id" width="72" height="22" border="0" align="absmiddle"></a>
    							</td>
    							<td rowspan="5" width="20%" align="center">
    								<img name="emp_base_image" src="/upload/employee/emp_image/20211102\202111020.jpg" border="0" height="150">
    							</td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span> 패스워드</td>
								<td colspan="3" bgcolor="#FFFFFF"><input name="password" type="password" class="input00" size="20" value="${emp[0].password}"> 
							    	<span class="c_txt"></span>
							    </td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span>   패스워드 확인</td>
								<td colspan="3" bgcolor="#FFFFFF">
									<input name="password_chk" type="password" class="input00" size="20" value="${emp[0].password}"> 
							    	<span class="c_txt">다시한번 입력해 주세요.</span>
							    </td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span> 사번</td>
								<td colspan="3" bgcolor="#FFFFFF"><input name="emp_no" type="text" class="input03" size="20" readonly  value="${emp[0].emp_no}"></td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span>  이름</td>
								<td colspan="3" bgcolor="#FFFFFF"><input name="emp_name" type="text" class="input00" size="20" value="${emp_name}"></td>
							</tr>
							
							
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span> 주민번호</td>
								<td colspan="3" bgcolor="#FFFFFF">
  

									<input name="resd_no_1" type="text" class="input00" size="12" maxlength="6" value="${emp[0].resd_no.substring(0,6)}">
									- <input name="resd_no_2" type="text" class="input00" size="12" maxlength="7" value="${emp[0].resd_no.substring(6,12)}">

		
    
    							</td>
    							<td bgcolor="#eeeeee" align="center">
    								<a href="javascript:fn_base_image(20211102);">메인사진 등록</a>
    								|
    								<a href="javascript:fn_udt_image(20211102);">사진첩 관리</a>
    							</td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span>본인생일</td>
								<td bgcolor="#FFFFFF">
							  		<input name="my_birthday" type="text" class="input00" size="12" value="${emp[0].my_birthday}" maxLength="8">
							  		<span class="c_txt">예) 19000101(년월일)</span>
							  	</td>
								<td bgcolor="#eeeeee"><font color="#eeeeee">*</font>  양력여부 </td>
								<td bgcolor="#FFFFFF" colspan="2">
									<input name="check_yn" type="checkbox" class="input00" size="12" value="Y"  checked> 
							    </td>
							</tr>
							
							
							<tr> 
								<td bgcolor="#eeeeee"><font color="#eeeeee">*</font>  결혼기념일 </td>
								<td bgcolor="#FFFFFF">
							  		<input name="married_anniver_date" type="text" class="input00" size="12" value="${emp[0].married_anniver_date}" maxLength="8"> 
							  		<span class="c_txt">예) 19000101(년월일)</span>
							  	</td>
							  	<td bgcolor="#eeeeee"><font color="#eeeeee">*</font>  사내커플여부 </td>
								<td bgcolor="#FFFFFF" colspan="2">
									<input type="checkbox" name="couple_yn" class="input00" value="${emp[0].comp_couple_yn}"   onClick="fn_coupleYn()">
								</td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span>입사일</td>
								<td bgcolor="#FFFFFF" colspan="4">
							  		<input name="enter_date" id="enter_date" type="text" class="input00" size="12" value="${emp[0].enter_date}"  readonly> 
								</td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span>직급</td>
								<td bgcolor="#FFFFFF">
							  		<select name="job_code" disabled>
										<option	value="10"selected>${emp[0].job_code}</option>
<option	value="20">대리</option>
<option	value="30">과장</option>
<option	value="40">차장</option>
<option	value="50">부장</option>
<option	value="60">이사</option>
<option	value="70">상무</option>
<option	value="80">사장</option>

									</select>
								</td>
								<td bgcolor="#eeeeee"><span class="red_n">*</span>권한구분</td>
								<td bgcolor="#FFFFFF" colspan="2">
									<select name="auth_gubun_code" disabled>
										<option	value="10"selected>일반</option>
<option	value="20">승인자</option>
<option	value="30">관리자</option>
<option	value="40">슈퍼관리자</option>

  									</select>
  								</td>
							</tr>
							<tr> 
  								<td bgcolor="#eeeeee"><span class="red_n">*</span>기본부서ID</td>
  								<td bgcolor="#FFFFFF">
								  	<input name="base_team_id" type="hidden" value="">
								  	<input name="base_team_name" type="text" class="input03" size="12" value="${emp[0].base_team_id}" readOnly>
								<td bgcolor="#eeeeee"><span class="red_n">*</span>업무그룹ID</td>
								<td bgcolor="#FFFFFF" colspan="2">
									<input name="biz_grp_id" type="hidden" value="9" >
									<input name="biz_group_name" type="text" class="input03" size="12" value="${emp[0].biz_grp_id}" readOnly>
								</td>
							</tr>
							<tr>
								<td bgcolor="#eeeeee"><font color="#eeeeee">*</font>  부서장여부 </td>
								<td bgcolor="#FFFFFF">
  									<input name="check" type="checkbox" class="input00" size="12" value="N"   disabled>
 								</td>
 								<td bgcolor="#eeeeee"><font color="#eeeeee">*</font>  E-MAIL </td>
								<td bgcolor="#FFFFFF" colspan="2">
  									<input type="text" name="email" class="input00" size="30" value="${emp[0].email}"> 
									<span class="c_txt">@pionnet.co.kr</span>
 								</td>
							</tr>
							<tr> 
								<td width="10%" bgcolor="#eeeeee"><font color="#eeeeee">*</font>입사전경력</td>
								<td bgcolor="#FFFFFF"><a href="#"></a>

									<input name="before_career_year" type="text" class="input00" size="4" maxLength="2" value="${emp[0].before_career_cnt.substring(0,2)}">년
									<input name="before_career_month" type="text" class="input00" size="4" maxLength="2" value="${emp[0].before_career_cnt.substring(2,4)}">월 

									<span class="c_txt">예) 02년 03월 /두자리씩 입력해 주세요.</span>
								</td>
								<td width="10%" bgcolor="#eeeeee"><font color="#eeeeee">*</font>당사경력</td>
								<td bgcolor="#FFFFFF" colspan="2">

									<input name="company_career_year" type="text" class="input00" size="4" maxLength="2" value="${emp[0].company_career_cnt.substring(0,2)}">년&nbsp;&nbsp;
									<input name="company_career_month" type="text" class="input00" size="4" maxLength="2" value="${emp[0].company_career_cnt.substring(2,4)}">월


  									<span class="c_txt">예) 02년 03월 /두자리씩 입력해 주세요.</span>
  								</td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span> 집주소</td>
								<td colspan="4" bgcolor="#FFFFFF">
							 		<table width="100%" border="0" cellspacing="2" cellpadding="0">
										<tr> 
											<td height="22">
											  	<input name="home_addr" type="text" class="input01" size="40" readonly value="${emp[0].home_addr}"> 
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr> 
								<td bgcolor="#eeeeee"><span class="red_n">*</span> 현거주지</td>
								<td colspan="4" bgcolor="#FFFFFF">
									<table width="100%" border="0" cellspacing="2" cellpadding="0">
									
										<tr> 
											<td height="22" colspan="2">
										  		<input name="now_addr" type="text" class="input01" size="40" readonly value="${emp[0].now_addr}"> 
										  		<td><font color="#eeeeee">*</font> 집주소와 동일
											  	<input name="home_addr_equal" type="checkbox" class="input00" size="8" value="" onClick="fn_addr_equal()">
	    									</td>
											</td>
										</tr>
										
									</table>
								</td>
							</tr>
							<tr> 
								<td width="10%" bgcolor="#eeeeee"><span class="red_n">*</span>핸드폰</td>
								<td colspan="4" bgcolor="#FFFFFF">
							    	<input name="hp_tel_no" type="text" class="input00" size="20" value="${emp[0].hp_tel_no}"> 
							      	<span class="c_txt">예) 011-111-1111</span>
							    </td>
							</tr>
						</table>
						<!--신입&경력사원 등록 테이블 끝-->
					</td>
				</tr>
				<tr> 
	  				<td height="10"></td>
				</tr>
				<tr> 
	  				<td align="center"> 
    			<!--버튼-->
						<a href="javascript:fn_update();"><img src="/images/btn/btn_b_edit.gif" width="60" height="30" border="0"></a> 
      					<a href="javascript:fn_cancel();"><img src="/images/btn/btn_b_cancel.gif" width="60" height="30" border="0"></a> 
	   				</td>
	  			</tr>
   	</form>
	</table>



</body>
</html>

