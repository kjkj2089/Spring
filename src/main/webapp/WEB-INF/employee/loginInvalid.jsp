<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<script language="javascript">

	//로그인 아이디 중복 체크
	function fn_loginCheck(){
	
		var f = document.form_loginChk;
		
		if( f.login_id.value == '' ){
			alert("아이디를 입력해 주세요");
			f.login_id.focus();
			return;
		}

		f.action = "/employee/employeeMgmt.do";
		f.method.value = "searchLoginIdChkPop";
		f.submit();
	}
	
	//중복이 아닐때 부모창에 setting
	function fn_setLoginId(){
	
		var f = document.form_loginChk;
		
		opener.fn_loginIdChk('Y', f.login_id.value);
		
		window.close();
	}
	
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>파이언넷</title>
<TITLE>아이디중복찾기팝업</TITLE>

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
</head>
<body>
<table width="100%" height="100%" valign="middle" border="0" cellspacing="0" cellpadding="0">

<form name="form_loginChk" method="post">
<input type="hidden" name="method">
<input type="hidden" name="cb_func" value="fn_loginIdChk">

	<tr>
		<td>

			<!-- 사용가능한 아이디가 아닐때-->
			<table width="100%" border="0" cellpadding="4" cellspacing="1" align="center">
		        <tr> 
					<td height="23" align="center">
						<span class="red_n">"${login_id}" 이미 등록된 아이디 입니다.</span>
					</td>
				</tr>
				<tr>
					<td align="center" valign="middle">
						<span class="red_n">다른 아이디를 입력해 주세요</span>
					</td>
				</tr>
			</table>

		</td>
	</tr>
 </form>
</table>
<!--검색결과-->
</body>
</html>
