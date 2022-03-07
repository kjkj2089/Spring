<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
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
	var _request_uri = "/system/menu.do";
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

<script type="text/javascript">

	var left_dis_now = 0; //0 이면 펼쳐 있는 상태  1이면 숨겨 있는 상태
	
	function fn_leftDisplay(){
		if(left_dis_now == 0){
			top.frameset_body.cols = "10,*";
			div_hide.innerHTML = "▶";
			div_hide.align = "left";
			div_hide.title = "탐색메뉴확장";
			parent.document.all('frame_main_leftmenu').noResize = true;
			left_dis_now = 1;
		}else{
			top.frameset_body.cols = "181,*";
			div_hide.innerHTML = "◀숨기기";
			div_hide.align = "right";
			div_hide.title = "탐색메뉴축소";
			parent.document.all('frame_main_leftmenu').noResize = false;
			left_dis_now = 0;
		}
	}

	//현재 경로를 기억하기 위한 상수
	//현재 페이지의 Url이 "http://dev/controls2/IBTreeCtrl.html"인 경우
	var sCurUrl = "http://"+location.hostname +":"+ location.port;
	
	function fn_dispMenu(page_name) {
		parent.frames[2].location.href = page_name;
	}
</script>



</head>

<body style="margin:0">

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
    <tr height="16">
		<td style="font-size:11px">
			<div id="div_hide" align="right" onclick="fn_leftDisplay()" title="탐색메뉴축소" style="width:100%;cursor:hand">◀숨기기</div>
		</td>
	</tr>
	<tr>
		<td width="100%" valign="top" align="center">
			<table width="157" border="0" cellspacing="0" cellpadding="0">
          		<tr>
          		    <td><img src="/images/main/left_menu_top.gif" width="157" height="10"></td>
          		</tr>
          		<tr>
            		<td align="center" background="/images/main/left_menu_bg.gif">
            			<table width="90%" align="center" border="0" cellspacing="0" cellpadding="0">
	              			<tr>
	                			<td height="25" class="left_tt">직원관리</td>
	              			</tr>
	              			<tr>
	                			<td><img src="/images/main/pionnet_23.gif" width="137" height="3"></td>
	              			</tr>
	              			<tr>
	                			<td height="5"></td>
	              			</tr>
	                			<td>
	                				<table width="100%" border="0" cellspacing="2" cellpadding="0">
	                				

	                  					<tr>
	                    					<td width="9" valign="top"><img src="/images/main/left_menu_arrow.gif" width="9" height="9"></td>
	                    					
	                    						<td><a href="javascript:fn_dispMenu('/employee/employee/employeeList.do');" class="lm">직원조회</a></td>
	                    					
	                  					</tr>

	                  					<tr>
	                    					<td width="9" valign="top"><img src="/images/main/left_menu_arrow.gif" width="9" height="9"></td>
	                    					
	                    						<td><a href="javascript:fn_dispMenu('/employee/employeeMgmt.do?method=modifyNewEmployee');" class="lm">개인정보</a></td>
	                    					
	                  					</tr>

	                  				</table>
	                  				
	                  			
	                				
	                			</td>
	              			</tr>
	              			<tr>
	                			<td height="20">&nbsp;</td>
	              			</tr>
	            		</table>
            		</td>
	          	</tr>
	          	<tr>
	            	<td><img src="/images/main/left_menu_bottom.gif" width="157" height="10"></td>
	          	</tr>
	        </table>
		</td>
    </tr>
</table>
</body>
</html>


