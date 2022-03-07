/**
 * A,IMG 포커스 없애기 (IncFooter.jsp에서 호출)
 */
function setFocusOut(){
	var obj_a_list = document.getElementsByTagName("A");
	var obj_img_list = document.getElementsByTagName("IMG");

	for(var i=0; i<obj_a_list.length; i++){
		if (obj_a_list[i].addEventListener){
			obj_a_list[i].addEventListener("focusin", function(){ event.srcElement.blur(); }, false);
		}else if (window.attachEvent){
			obj_a_list[i].attachEvent("onfocusin", function(){ event.srcElement.blur(); });
		}else{
			obj_a_list[i].onfocusin = function(){ event.srcElement.blur(); }
		}
	}

	for(var i=0; i<obj_img_list.length; i++){
		if(typeof obj_img_list[i].getAttribute("onclick") != "function"){
			continue;
		}
		if (obj_img_list[i].addEventListener){
			obj_img_list[i].addEventListener("focusin", function(){ event.srcElement.blur(); }, false);
		}else if (obj_img_list[i].attachEvent){
			obj_img_list[i].attachEvent("onfocusin", function(){ event.srcElement.blur(); });
		}else{
			obj_img_list[i].onfocusin = function(){ event.srcElement.blur(); }
		}
	}
}


/**
 * 플래시 넣는 함수
 * f_id = 플래시 아이디
 * f_name = 플래시 파일명
 * f_width = 가로크기
 * f_height = 세로높이
 * f_para = 파라미터
*/
function show_flash_F(f_id,f_url,f_width,f_height,f_para,transe_flag){
	if(typeof transe_flag == "undefined")
		transe_flag = true;
	document.write(get_flash_F(f_id,f_url,f_width,f_height,f_para,transe_flag));

	if(f_id != "")
		eval("window." + f_id + " = document.getElementById('" + f_id + "');");
}

/**
 * 플래시 넣는 문자열
 * f_id = 플래시 아이디
 * f_name = 플래시 파일명
 * f_width = 가로크기
 * f_height = 세로높이
 * f_para = 파라미터
*/
function get_flash_F(f_id,f_url,f_width,f_height,f_para,transe_flag){
	var str_html = "";
	str_html += "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0'";
	if(f_width != "")
		str_html += " width='"+f_width+"'";
	if(f_height != "")
		str_html += " height='"+f_height+"'";
	str_html += " id='"+f_id+"'>";
	//str_html += "<param name='autosize' value='true'>";
	str_html += "<param name='quality' value='high'>";
 	str_html += "<param name='menu' value='false'>";
	str_html += "<param name='allowscriptaccess' value='always'/>";
	str_html += "<param name='movie' value='"+f_url+"'>";
	if(transe_flag)
		str_html += "<param name='wmode' value='transparent'>";
	str_html += "<param name='flashvars' value='"+f_para+"'>";
	str_html += "<embed src='"+f_url+"' quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash'";
	if(f_width != "")
		str_html += " width='"+f_width+"'";
	if(f_height != "")
		str_html += " height='"+f_height+"'";
	if(transe_flag)
		str_html += " wmode='transparent'";
	str_html += " allowScriptAccess='always' showLiveConnect='true' flashvars='"+f_para+"' name='"+f_id+"'></embed>";
	str_html += "</object>";
	return str_html;
}

/**
 * 우편번호 검색
 *
 * @author 권민진
 * @since 2008. 01. 13
 */
function fn_searchZipCode(cb_func) {

	// cb_func를 받아서 해당 스크립트로 보내준다.
	openScrollWin('/common.do', 'searchZipCodeFormPop', '우편번호검색', '450', '400', '&method=searchZipCodeFormPop&cb_func=' + cb_func, 'Y');

}

/**
 * 게시판 글쓰기
 *
 * @author 김은정
 * @since 2008. 02. 19
 * @param board_type_code : bbs_head에 있는 board_type_code을 말함.
 * 							'10' - 공지사항, '30' - 자유게시판
 * @param board_id : 공지사항인 경우에는 0
 */
function fn_writeBbsForm(board_type_code, board_id) {

	openNoScrollWin('/bbs/bbsMgmt.do', 'writeBbsForm', '게시판글쓰기', '900', '800', '&method=writeBbsForm&board_type_code=' + board_type_code + '&board_id=' + board_id);

}

/**
 * 게시물Head 게시판 리스트 검색
 *
 * @author 김현정
 * @since 2008. 02. 20
 */
function fn_searchBbsList(board_type_code, board_id) {

	parent.frames[2].location.href = "/bbs/bbsMgmt.do?method=searchBbsHeadList&board_id=" + board_id + "&board_type_code=" + board_type_code;

}

/**
 * 게시판 상세보기
 *
 * @author 김은정
 * @since 2008. 02. 20
 * @param board_type_code : bbs_head에 있는 board_type_code을 말함.
 * 							'10' - 공지사항, '30' - 자유게시판
 * @param noti_seq : 게시물 번호
 */
function fn_viewBbs(board_type_code, noti_seq) {

	openReSizeWin('/bbs/bbsMgmt.do', 'viewBbsDetail', '게시판상세보기', '800', '800', '&method=viewBbsDetail&board_type_code=' + board_type_code + '&noti_seq=' + noti_seq);

}



/**
 * <pre>
 *  마스터상품찾기 팝업
 * 
 * 인수 :
 * 
 * CALL 하는 페이지에 다음과 같은 call-back function으로 
 * 선택된 카테고리 번호와 이름을 return 받게 된다.
 * 
 * //call-back sample
 * function setEmployees(arrValues){
		for (nbi in arrValues) {
			var arrValue       = arrValues[nbi];
			alert('사번:'+arrValue[0]);
			alert('직원명:'+arrValue[1]);
			alert('직급코드:'+arrValue[2]);
			alert('기본부서ID:'+arrValue[3]);
		}
	}
 * }
 * </pre>
 */
function fn_searchEmployeePop(base_team_id,single_yn){

	var param ='&method=searchEmployeeListPop';
	if(base_team_id != undefined && base_team_id!=''){
		param +="&base_team_id="+base_team_id;
	}
	if(single_yn != undefined  && single_yn!=''){
		param +="&single_yn="+single_yn;
	}

	openScrollWin('/employee/employeeMgmt.do', 'SEARCH_EMPLOYEE', '임직원찾기', 900,600, param);
}



function fn_searchTeamEmployeePop(team_id,single_yn){

	var param ='&method=searchEmployeeListPop&team_emp_yn=Y';
	if(team_id != undefined && team_id!=''){
		param +="&team_id="+team_id;
	}
	if(single_yn != undefined  && single_yn!=''){
		param +="&single_yn="+single_yn;
	}

	openScrollWin('/employee/employeeMgmt.do', 'SEARCH_EMPLOYEE', '팀별임직원찾기', 900,600, param);
}


 function fn_searchCoVenResrcPop(single_yn,co_ven_no,freelancer_yn) {
	 var param ='&method=searchCoVendorResourcePop';
		
    if(single_yn != undefined  && single_yn!=''){
		param +="&single_yn="+single_yn;
	}

	if(co_ven_no != undefined && co_ven_no!=''){
		param +="&co_ven_no="+co_ven_no;
	}
	if(freelancer_yn != undefined && freelancer_yn!=''){
		param +="&freelancer_yn="+freelancer_yn;
	}
	 openScrollWin('/cowork/coworkMgmt.do', 'SEARCH_OUT_RSC', '외부인력찾기', 900,600, param);
 }

 function fn_searchCoVendorPop(single_yn ) {
     var param ='&method=searchCoVendorPop';
	 if(single_yn != undefined && single_yn!='' ){
		param +="&single_yn="+single_yn;
	 }
	 openScrollWin('/cowork/coworkMgmt.do', 'SEARCH_CO_VENDOR', '협력업체찾기', 900,600, param);
 }


 function fn_searchPrjMstPop(single_yn, etc_data) {
     var param ='&method=searchPrjMstPop';
     
	 if(single_yn != undefined && single_yn!='' ){
		param +="&single_yn="+single_yn;
	 }
	 if(etc_data != undefined && etc_data!='' ){
		param +="&etc_data="+etc_data;
	 }
	 openScrollWin('/project/projectMgmt.do', 'SEARCH_PROJECT', '프로젝트찾기 팝업', 900,600, param);
 }

