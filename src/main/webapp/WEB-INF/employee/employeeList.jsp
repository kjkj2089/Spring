<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>파이언넷</title>
<head>
<META http-equiv="Cache-Control" content="no-cache" />
<META http-equiv="Expires" content="0" />
<META http-equiv="Pragma" content="no-cache" />
<META http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/css/log.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" type="text/css" href="/css/silver_grid.css">




<script language="JavaScript" type="text/JavaScript"
	src="/common/js/objectTag.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/common.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/date.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/text.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/number.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/validate.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/calendar.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/openwin.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/form.js"></script>
<!--script language="JavaScript" type="text/JavaScript" src="/common/js/biz.js"></script-->
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/cookie.js"></script>
<script language="JavaScript" type="text/JavaScript"
	src="/common/js/Cm_Grid_Script.js"></script>



<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="/common/js/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript"
	src="/common/js/jquery.maskedinput-1.3.min.js"></script>
<script type="text/javascript" src="/common/js/jshashtable-2.1.js"></script>
<script type="text/javascript"
	src="/common/js/jquery.numberformatter-1.2.3.min.js"></script>
<script type="text/javascript"
	src="/common/js/jquery.contextmenu.min.js"></script>
<script type="text/javascript" src="/common/js/json2.js"></script>
<script type="text/javascript" src="/common/js/ui.js"></script>

<script type="text/javascript" src="/common/js/overpass.calendar.js"></script>
<script type="text/javascript" src="/common/js/overpass.common.js"></script>
<script type="text/javascript" src="/common/js/overpass.form.js"></script>
<script type="text/javascript" src="/common/js/overpass.util.js"></script>

<script type="text/javascript"
	src="/common/js/overpass/overpass.popup.js"></script>

<!-- HighCharts -->
<script type="text/javascript" src="/common/js/highcharts/highcharts.js"></script>
<script type="text/javascript"
	src="/common/js/highcharts/modules/exporting.js"></script>
<!-- <script type="text/javascript" src="/common/js/highcharts/modules/export-data.js"></script> -->


<link rel="stylesheet"
	href="/common/css/ui-lightness/jquery-ui-1.9.2.custom.min.css" />

<script type="text/javascript" src="/common/js/base/datagrid.js"></script>
<script type="text/javascript" src="/common/js/base/datagrid.events.js"></script>
<script type="text/javascript"
	src="/common/js/base/datagrid.functions.js"></script>
<script type="text/javascript" src="/common/js/base/tree.js"></script>
<script type="text/javascript" src="/common/js/base/tree.events.js"></script>
<script type="text/javascript" src="/common/js/base/tree.functions.js"></script>
<script type="text/javascript" src="/common/js/base/imageuploader.js"></script>
<script type="text/javascript"
	src="/common/js/base/imageuploader.events.js"></script>
<script type="text/javascript"
	src="/common/js/base/imageuploader.functions.js"></script>

<script type="text/javascript">
<!--
	var _site_skin = "blue";
	var _request_uri = "/employee/employee/employeeList.do";
	var _mobile_yn = false;

	var _GRID_TYPE = null;
	var _GRID_SILVERLIGHT = "S";
	var _GRID_JQGRID = "J";
//-->
</script>


<script type="text/javascript"
	src="/common/js/silverlight/silverlight.min.js"></script>
<script type="text/javascript" src="/common/js/silverlight/datagrid.js"></script>
<script type="text/javascript"
	src="/common/js/silverlight/imageuploader.js"></script>
<script type="text/javascript"
	src="/common/js/silverlight/imageuploader.functions.js"></script>
<script type="text/javascript"
	src="/common/js/silverlight/imageuploader.events.js"></script>
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
<div style="display: none">
	<iframe src="" name="action_frame" width="0" height="0"></iframe>
</div>
<script language="JavaScript">

	
	
	function fn_excel(){
	var f = document.form_emp;
		f.action = "/employee/employeeMgmt.do";
		f.method.value = "selectEmployeeList_excel";
		f.submit();
		
	}
	
	//검색
	function fn_search(){
		var f = document.form_emp;
		
		f.action = "/employee/employeeMgmt.do";
		f.method.value = "selectEmployeeList";
		f.target="_self";
		f.submit();
		
	}
	
	function fn_empAdd(){
		theURL="/employee/employeeMgmt.do";
		param ="&method=showEmployee";
		
		openScrollWin(theURL, "emp_mgmt", "직원관리", "1000", "750", param);
		
	}
	
	function fn_emp_mgmt(emp_no){
		theURL="/employee/employeeMgmt.do";
		param ="&method=modifyShowEmployee&emp_no="+emp_no;
		
		openScrollWin(theURL, "emp_mgmt", "직원관리", "1000", "750", param);
		
	}
	
	// 부서 설정
	function fn_setTeam(team_id, team_name){
		f = document.form_emp;
		f.param_team_id.value   = team_id;
		f.param_team_name.value = team_name;
	}
	
	// 사진첩 팝업
	function fn_emp_image(emp_no, emp_name){
		theURL = "/empImage/empImageMgmt.do";
		param ="&method=imageShowEmployee&emp_no="+emp_no + "&emp_name=" + emp_name;
		
		openScrollWin(theURL, "emp_image", "사진첩", "1000", "750", param)
	}
	
	
</script>
<body>
	<form name="form_emp" method="post">
		<input type="hidden" name="method">

		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="35"><img src="/images/icon_title.gif" width="19"
								height="19" align="absmiddle"><span class="title_tt">직원조회</span>
							</td>
						</tr>
						<tr>
							<td class="b">&nbsp;</td>
						</tr>
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<!--검색 테이블-->
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="7" height="7"><img
														src="/image/main/table_top_left.gif" width="7" height="7"></td>
													<td background="/image/main/table_top_bg.gif"></td>
													<td width="7"><img
														src="/image/main/table_top_right.gif" width="7" height="7"></td>
												</tr>
												<tr>
													<td background="/image/main/table_left_bg.gif">&nbsp;</td>
													<td align="center" bgcolor="f8f8f8">
														<!--실질적인 검색 테이블 시작-->
														<table width="98%" border="0" cellspacing="0"
															cellpadding="2">
															<tr>
																<td width="100" class="b">ㆍ직원명</td>
																<td><input name="param_emp_name" type="text"
																	class="input00" value="" size="20"></td>
																
																<td width="100" class="b">ㆍ기본부서</td>
																<td><select name="base_team_id">
																		<option value="" selected>전체</option>
																		<option value="2">대표이사</option>
																		<option value="3">상무이사</option>
																		<option value="4">경영지원부</option>
																		<option value="5">CM사업부</option>
																		<option value="10">퇴사자</option>
																		<option value="100017">입사대기</option>
																		<option value="100044">SC사업부</option>
																		<option value="100052">CF사업부</option>
																		<option value="100135">신입사원</option>
																</select></td>
												
																<td width="100" class="b">ㆍ직급</td>
																<td><select name="job_code">
																		<option value="" selected>전체</option>
																		<option value="10">사원</option>
																		<option value="20">대리</option>
																		<option value="30">과장</option>
																		<option value="40">차장</option>
																		<option value="50">부장</option>
																		<option value="60">이사</option>
																		<option value="70">상무</option>
																		<option value="80">사장</option>

																</select></td>
																<td width="100" class="b">ㆍ입사처리여부</td>
																<td><select name="enter_yn" id="enter_yn">
																		<option value="A">전체</option>
																		<option value="Y" selected>처리</option>
																		<option value="N">미처리</option>
																</select> <a href="javascript:fn_search();"><img
																		src="/images/btn/btn_search2.gif" width="52"
																		height="22" border="0" align="absmiddle"></a> <a
																	href="javascript:fn_excel();"><img
																		src="/images/btn/btn_excel.gif" width="52" height="22"
																		border="0" align="absmiddle"></a></td>
															</tr>
														</table> <!--실질적인 검색 테이블 끝-->
													</td>
													<td background="/image/main/table_right_bg.gif">&nbsp;</td>
												</tr>
												<tr>
													<td width="7" height="7"><img
														src="/image/main/table_bottom_left.gif" width="7"
														height="7"></td>
													<td background="/image/main/table_bottom_bg.gif"></td>
													<td><img src="/image/main/table_bottom_right.gif"
														width="7" height="7"></td>
												</tr>
											</table> <!--검색 테이블끝-->
										</td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>




						<tr>
							<td valign="top">
								<!-- 업무그룹리스트 시작 -->
								<table width="100%" border="0" cellpadding="4" cellspacing="1"
									bgcolor="#CCCCCC">
									<tr>
										<td align="center" bgcolor="#eeeeee" class="b">사진</td>
										<td align="center" bgcolor="#eeeeee" class="b" height="20">사번</td>
										<td align="center" bgcolor="#eeeeee" class="b">직원명</td>
										<td align="center" bgcolor="#eeeeee" class="b">주민번호</td>
										<td align="center" bgcolor="#eeeeee" class="b">로그인ID</td>
										<td align="center" bgcolor="#eeeeee" class="b">입사일자</td>
										<td align="center" bgcolor="#eeeeee" class="b">직급</td>
										<td align="center" bgcolor="#eeeeee" class="b">권한구분</td>
										<td align="center" bgcolor="#eeeeee" class="b">입사전경력</td>
										<td align="center" bgcolor="#eeeeee" class="b">당사경력</td>
										<td align="center" bgcolor="#eeeeee" class="b">전화번호</td>
										<td align="center" bgcolor="#eeeeee" class="b">핸드폰번호</td>
										<td align="center" bgcolor="#eeeeee" class="b">기본부서</td>
										<td align="center" bgcolor="#eeeeee" class="b">생일</td>
										<td align="center" bgcolor="#eeeeee" class="b">양력여부</td>
										<td align="center" bgcolor="#eeeeee" class="b">결혼기념일</td>
										<td align="center" bgcolor="#eeeeee" class="b">입사처리</td>
										<td align="center" bgcolor="#eeeeee" class="b">경력서</td>
									</tr>


								</table> <!--목록 테이블 끝-->
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>
								<table width="100%" border="0" cellpadding="0" cellspacing="1"
									bgcolor="#FFFFFF">
									<tr>
										<td width="100"><select name="rowsPerPage"
											class="input02" onChange="fn_search()">
												<option value="10">10개</option>
												<option value="20">20개</option>
												<option value="30">30개</option>
												<option value="100">100개</option>
												<option value="1000">1000개</option>
										</select> 개</td>
										<td height="25" align="center"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
