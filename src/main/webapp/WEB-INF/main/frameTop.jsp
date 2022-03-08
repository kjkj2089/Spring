<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>파이언넷</title>

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

<script language="javascript">
function fn_logout(){
	var frm = document.logout;
	frm.action = "/logout";
	frm.method.value = "logOut"; 
	frm.target = "_top";
    frm.submit();
}

function fn_leftMenu_disp(upper_page_id,main_menu_name ){
    var auth_gubun_code ; 
    if ("10" == "30" || "10" == "40" ) {
    	auth_gubun_code = "20";
    } else {
    	auth_gubun_code = "10";
    }
    
    var agent = navigator.userAgent.toLowerCase();
    
    if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ) {
     
   // parent.frame_main_leftmenu.location.href = "/system/menu.do?method=searchLeftMenuList&upper_page_id="+upper_page_id+"&main_menu_name="+main_menu_name+"&scr_gubun_code=10&biz_grp_id=9&emp_no=20211102&auth_gubun_code=" + auth_gubun_code;

    }
    else {

    	   
       	 //   parent.frameset_body.children.frame_main_leftmenu.contentWindow.location.href = "/system/menu.do?method=searchLeftMenuList&upper_page_id="+upper_page_id+"&main_menu_name="+main_menu_name+"&scr_gubun_code=10&biz_grp_id=9&emp_no=20211102&auth_gubun_code=" + auth_gubun_code;
    }
    
}

function fn_main(){
	top.location.replace("home.do");
}
</script>

<body onLoad="javascript:fn_leftMenu_disp('10006', '게시판');" BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>
<form name="logout">
	<input type="hidden" name="method">
</form>


<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="50" align="center"><table width="99%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><a href="javascript:fn_main();"><img src="/images/main/top_logo.gif" width="111" height="42" border="0"></a></td>
        <td width="50%" align="right" valign="bottom"><span class="name">${emp_name}</span> 님 어서오세요~~^^ |  <a href="javascript:fn_logout();">로그아웃</a> </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="33"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="10"><img src="/images/main/menubar_left.gif" width="10" height="33"></td>
        <td align="center" valign="bottom" background="/images/main/menubar_bg.gif" style="padding-bottom:7px;">
             &nbsp;
                     
            
        <!-- 
	        <a href="javascript:fn_leftMenu_disp('10006','게시판');" class="m">게시판</a>  
	          &nbsp;<span class="g_line">|</span>&nbsp;
	        
        
	        <a href="javascript:fn_leftMenu_disp('1','휴가관리');" class="m">휴가관리</a>  
	          &nbsp;<span class="g_line">|</span>&nbsp;
	         -->
        
	        <a href="javascript:fn_leftMenu_disp('2','직원관리');" class="m">직원관리</a>  
	         <!--  &nbsp;<span class="g_line">|</span>&nbsp; -->
	        
        
	 <!--        <a href="javascript:fn_leftMenu_disp('4','비용관리');" class="m">비용관리</a>  
	          &nbsp;<span class="g_line">|</span>&nbsp;
	        
        
	        <a href="javascript:fn_leftMenu_disp('10023','자산자원관리');" class="m">자산자원관리</a>  
	          &nbsp;<span class="g_line">|</span>&nbsp;
	        
        
	        <a href="javascript:fn_leftMenu_disp('10029','교육관리');" class="m">교육관리</a>  
	          &nbsp;<span class="g_line">|</span>&nbsp;
	        
        
	        <a href="javascript:fn_leftMenu_disp('10040','뉴스레터');" class="m">뉴스레터</a>   -->
	          
	       
		</td>
        <td width="10"><img src="/images/main/menubar_right.gif" width="10" height="33"></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>