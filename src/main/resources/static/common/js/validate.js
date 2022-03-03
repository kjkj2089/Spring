/**
 ********************************************************
 * 최초작성 : 2006-10-20 ssbang
 *
 * validation check javascript
 * 오브젝트 또는 value 에 대해 형식 체크를 한다.
 * is메소드명 : 형식이 맞으면 true,  틀리면 false 를 리턴한다.
 * isNot메소드명 : 형식이 맞으면 false, 틀리면 true 를 리턴한다.
 *********************************************************
 */

/**
 * <pre>
 * 문자열 Valid 검사처리
 * String이 "" 이나 null이면 무조건 false
 * 만약 space 인수의 값이 true이면
 * String이 "" 이나 null이 아닐때 space가 있어야만 true
 * 만약 space 인수의 값이 false이면
 * string이 "" 이나 null이 아닐때 space가 아닌 글자가 있어야만 true
 * </pre>
 * @param str 문자열
 * @param space space허용 여부 (true, false)
 * @return boolean
 */
function checkValid(str, space){

   var retvalue = false;

   for (var i=0; i<str.length; i++)
   {		//String이 0("" 이나 null)이면 무조건 false
      if (space == true)
      {
         if (str.charAt(i) == ' ')
         {			//String이 0이 아닐때 space가 있어야만 true(valid)
            retvalue = true;
            break;
         }
      } else {
         if (str.charAt(i) != ' ')
         {			//string이 0이 아닐때 space가 아닌 글자가 있어야만 true(valid)
            retvalue = true;
            break;
         }
      }
   }

   return retvalue;
}

/**
 * <pre>
 * field Empty 및 공백 처리
 * error_msg가 ""이면 alert와 focusing을 하지 않는다
 * </pre>
 * @param field form.element
 * @param error_msg 에러 Message
 * @return boolean
 */
function isEmpty(field, error_msg)
{
	// error_msg가 ""이면 alert와 focusing을 하지 않는다
	if(error_msg == "") {
		if(!checkValid(field.value, false)) {
			return true;
		} else {
			return false;
		}
	} else {
		if(!checkValid(field.value, false)) {
			alert(error_msg);
			field.focus() ;
			return true;
		} else {
			return false;
		}
	}
}

/**
 * Value( ele 가 Object 일 경우네는 Object 의 value) 가 whitespace, (""), null 인지 체크한다.<b>
 * @param ele ( text 또는 Form Object )
 */
function isBlank(ele) {
    var elevalue = getElementValueToString(ele);
	if(elevalue.replace(/^(\s+)|(\s+)$/g,"").length == 0) return true;
	else return false;
}

function isNotBlank(ele) {
    var elevalue = getElementValueToString(ele);
	if(elevalue.replace(/^(\s+)|(\s+)$/g,"").length == 0) return false;
	else return true;
}

/**
 * Value( ele 가 Object 일 경우네는 Object 의 value) 가  (""), null 인지 체크한다.
 * Blank 와 다른점은 whitespace는  empty에 포함되지 않는다는 것이다.
 * @param ele ( text 또는 Form Object )
 */
/*
function isEmpty(ele) {
    var elevalue = getElementValue(ele);
	if(elevalue.length == 0) return true;
	else return false;
}
*/

function isNotEmpty(ele) {
    var elevalue = getElementValue(ele);
	if(elevalue.length == 0) return false;
	else return true;
}

/**
 * Number 인지 체크 (Decimal 은 false 이다)
 * @param ele ( text 또는 Form Object )
 */
function isNumeric(ele){
    var elevalue = getElementValue(ele);
    if(elevalue.length == 0) return false;
    for(var i=0;i<elevalue.length;i++){
    	var c=elevalue.charCodeAt(i);
       	if( !(  48 <= c && c <= 57 ) ) {
       		return false ;
       	}
     }
     return true;
}

/**
 * Decimal 인지 체크 ( Number 는 true 이다 )
 * @param ele ( text 또는 Form Object )
 */
function isDecimal(ele){
    var elevalue = getElementValue(ele);
    elevalue = replaceStr(elevalue, "\\.","");
    return isNumeric(elevalue);
}

/**
 * 영문인지 체크
 * @param ele ( text 또는 Form Object )
 */
function isAlpha(ele){
    var elevalue = getElementValue(ele);
    var pattern=/^([a-zA-Z ]+)$/;
    return (pattern.test(elevalue)) ? true : false;
}

/**
 * 영문 또는 숫자인지 체크
 * @param ele ( text 또는 Form Object )
 */
function isAlphanumeric(ele){
    var elevalue = getElementValue(ele);
    var pattern=/^([a-zA-Z0-9 ]+)$/;
    return (pattern.test(elevalue)) ? true : false;
}

/**
 * 한글인지 체크
 * @param ele ( text 또는 Form Object )
 */
function isKorean(ele){
    var elevalue = getElementValue(ele);
    var pattern=/^([가-힣 ]+)$/;
    return (pattern.test(elevalue)) ? true : false;
}

/**
 *  E-Mail Check
 * @param ele 모든 object 또는 스트링
 * @return booelan ( 이메일 형식이 맞으면 false 아니면 true )
 */
function isEmail(ele)
{
    var elevalue = getElementValue(ele);
    var pattern=/^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
    return (pattern.test(elevalue));
}

function isNotValidEmail(ele)
{
    var elevalue = getElementValue(ele);
    var pattern=/^[_a-zA-Z0-9-\.]+@[\.a-zA-Z0-9-]+\.[a-zA-Z]+$/;
    return !(pattern.test(elevalue));
}

function isNotValidEmailAlert(ele)
{
	if(!isNotValidEmail(ele)){
		alert("이메일 주소가 정확하지 않습니다. \n다시 입력해 주세요!");
		if(typeof(ele) == "object"){
		    ele.focus();
	    }
		return true;
	}else{
		return false;
	}

}


/**
 * str 이 HTML OBJECT 인지 체크
 * @param str - object 또는 문자열
 */
function isObject(ele){
    return ele.tagName != null ? true : false;
}


/**
 * 비밀번호 Check
 * @param passField 패스워드 element - form.element
 * @param confirmField 패스워드 확인 element - form.element
 * @return boolean
 */
function isNotValidPassword(passField, confirmField) {

	if(isEmpty(passField,"패스워드를 입력해 주세요!")) return true;
	if(isEmpty(confirmField,"패스워드를 재입력해 주세요!")) return true;
	if(isOutOfRange(passField, 6, 10, "비밀번호는 6~10자 사이의 숫자 및 영문 대소문자로만 기입해 주세요!")) return true;
	if(isOutOfRange(confirmField, 6, 10, "비밀번호는 6~10자 사이의 숫자 및 영문 대소문자로만 기입해 주세요!")) return true;
	if(passField.value != confirmField.value) {
		alert("비밀번호가 서로 일치하지 않습니다.\n 다시 입력해 주세요!");
		passField.value="";
		confirmField.value="";
		passField.focus();
		passField.select();
		return true;
	}
	return false;
}



/**
 * ID Check
 * @param idField
 * @return boolean
 */
function isNotValidID(idField) {
	if(isEmpty(idField,"ID를 입력해 주세요!")) return true;
	var pattern=/^([a-zA-Z ]+)$/;
    if(!pattern.test(idField.value.charAt(0))){
    	alert("ID의 첫자는 영문자만 가능합니다.");
    	idField.focus();
    	return true;
    }
	if(isOutOfRange(idField, 4, 13, "ID는 4~13자 사이의 숫자 및 영문자만 가능하며\n 영문 대소문자는 구분하지 않습니다.")) return true;
	return false;
}

/**
 * 주민등록번호 Check
 * @param pid1 주민번호 앞자리 - form.element
 * @param pid2 주민번호 뒤자리 - form.element
 * @return boolean
 */
function isNotValidPID(pid1, pid2) {

	if(isEmpty(pid1,"주민등록번호를 입력해 주세요!")) return true;
	if(isEmpty(pid2,"주민등록번호를 입력해 주세요!")) return true;
	if(!isNumber(pid1,"주민등록번호 앞자리는 숫자로만 기입해 주세요!")) return true;
	if(!isNumber(pid2,"주민등록번호 뒷자리는 숫자로만 기입해 주세요!")) return true;
	if(isNotExactLength(pid1, 6, "주민등록번호 앞자리는 6자리입니다!")) return true;
	if(isNotExactLength(pid2, 7, "주민등록번호 뒷자리는 7자리입니다!")) return true;
	//strchr = form.pid1.value.concat(pid2.value);
	strchr = pid1.value.concat(pid2.value);
	if (strchr.length == 13	) {
		nlength = strchr.length;

		num1 = strchr.charAt(0);
		num2 = strchr.charAt(1);
		num3 = strchr.charAt(2);
		num4 = strchr.charAt(3);
		num5= strchr.charAt(4);
		num6 = strchr.charAt(5);
		num7 = strchr.charAt(6);
		num8 = strchr.charAt(7);
		num9 = strchr.charAt(8);
		num10 = strchr.charAt(9);
		num11 = strchr.charAt(10);
		num12 = strchr.charAt(11);

		var total = (num1*2)+(num2*3)+(num3*4)+(num4*5)+(num5*6)+(num6*7)+(num7*8)+(num8*9)+(num9*2)+(num10*3)+(num11*4)+(num12*5);
		total = (11-(total%11)) % 10;
	//	if (total == 11) total = 1;
	//	if (total == 10) total = 0;

		if(total != strchr.charAt(12)) {
			alert("주민등록번호가 올바르지 않습니다. \n다시 입력해 주세요!");
			pid1.value="";
			pid2.value="";
			pid1.focus();
			return true;
		}
		return false;
	}	else
		alert("주민등록번호가 올바르지 않습니다. \n다시 입력해 주세요!");
		pid1.value="";
		pid2.value="";
		pid1.focus();
		return true;

}

/**
 * 사업자등록번호 Check
 * @param bid1 사업자등록번호 앞자리 - form.element
 * @param bid2 사업자등록번호 중간 자리 - form.element
 * @param bid3 사업자등록번호 중간 자리 - form.element
 * @return boolean
 */
function isNotValidBID(bid1, bid2, bid3) {

	if(isEmpty(bid1,"사업자등록번호를 입력해 주세요!")) return true;
	if(isEmpty(bid2,"사업자등록번호를 입력해 주세요!")) return true;
	if(isEmpty(bid3,"사업자등록번호를 입력해 주세요!")) return true;
	if(!isNumber(bid1,"사업자등록번호 앞자리는 숫자로만 기입해 주세요!")) return true;
	if(!isNumber(bid2,"사업자등록번호 가운데자리는 숫자로만 기입해 주세요!")) return true;
	if(!isNumber(bid3,"사업자등록번호 뒷자리는 숫자로만 기입해 주세요!")) return true;
	if(isNotExactLength(bid1, 3, "사업자등록번호 앞자리는 3자리입니다!")) return true;
	if(isNotExactLength(bid2, 2, "사업자등록번호 뒷자리는 2자리입니다!")) return true;
	if(isNotExactLength(bid3, 5, "사업자등록번호 뒷자리는 5자리입니다!")) return true;
	strchr = bid1.value.concat(bid2.value.concat(bid3.value));

	num1 = strchr.charAt(0);
	num2 = strchr.charAt(1);
	num3 = strchr.charAt(2);
	num4 = strchr.charAt(3);
	num5= strchr.charAt(4);
	num6 = strchr.charAt(5);
	num7 = strchr.charAt(6);
	num8 = strchr.charAt(7);
	num9 = strchr.charAt(8);
	num10 = strchr.charAt(9);

	var total = (num1*1)+(num2*3)+(num3*7)+(num4*1)+(num5*3)+(num6*7)+(num7*1)+(num8*3)+(num9*5);
	total = total + parseInt((num9 * 5) / 10);
	var tmp = total % 10;
	if(tmp == 0) {
		var num_chk = 0;
	} else {
		var num_chk = 10 - tmp;
	}

	if(num_chk != num10) {
		alert("사업자등록번호가 올바르지 않습니다. \n다시 입력해 주세요!");
		bid1.value="";
		bid2.value="";
		bid3.value="";
		bid1.focus();
		return true;
	}
	return false;
}






/**
 * 사업자등록번호 Check
 * @param bid1 사업자등록번호 앞자리 - form.element
 * @param bid2 사업자등록번호 중간 자리 - form.element
 * @param bid3 사업자등록번호 중간 자리 - form.element
 * @return boolean
 */
function isNotValidBID(bidObj) {

	if(isEmpty(bidObj,"사업자등록번호를 입력해 주세요!")) return true;

	
	strchr = bidObj.value ;

	num1 = strchr.charAt(0);
	num2 = strchr.charAt(1);
	num3 = strchr.charAt(2);
	num4 = strchr.charAt(3);
	num5= strchr.charAt(4);
	num6 = strchr.charAt(5);
	num7 = strchr.charAt(6);
	num8 = strchr.charAt(7);
	num9 = strchr.charAt(8);
	num10 = strchr.charAt(9);

	var total = (num1*1)+(num2*3)+(num3*7)+(num4*1)+(num5*3)+(num6*7)+(num7*1)+(num8*3)+(num9*5);
	total = total + parseInt((num9 * 5) / 10);
	var tmp = total % 10;
	if(tmp == 0) {
		var num_chk = 0;
	} else {
		var num_chk = 10 - tmp;
	}

	if(num_chk != num10) {
		alert("사업자등록번호가 올바르지 않습니다. \n다시 입력해 주세요!");
		bidObj.value="";
		
		bidObj.focus();
		return true;
	}
	return false;
}



/**
 * TelNumber Check
 * @param field form.element
 * @return boolean
 */
function isNotValidTel(field) {

   var Count;
   var PermitChar =
         "0123456789-";

   for (var i = 0; i < field.value.length; i++) {
      Count = 0;
      for (var j = 0; j < PermitChar.length; j++) {
         if(field.value.charAt(i) == PermitChar.charAt(j)) {
            Count++;
            break;
         }
      }

      if (Count == 0) {
         alert("전화번호가 정확하지 않습니다. \n다시 입력해 주세요!")
		 field.focus();
		 field.select();
		 return true;
         break;
      }
   }
   return false;
}

/**
 * Azflex Mall 에서 사용
 * 영문과 숫자가 혼합되어 있는지 체크
 * @param ele ( text 또는 Form Object )
 */
function isAlphaAndnumeric(ele){
	var result = false;

	var elevalue = ele.value;

    if(elevalue.length == 0) return result;

    for(var i=0;i<elevalue.length;i++){
    	var c=elevalue.charCodeAt(i);
       	if( !(  48 <= c && c <= 57 ) ) {
       		result = true ;
       	}
     }

    if( !result )
    	return result;

    result = false;

    for(var i=0;i<elevalue.length;i++){
    	var c=elevalue.charCodeAt(i);
       	if( !result && 48 <= c && c <= 57 ) {
       		result = true ;
       	}
     }

    return result;
}

/**
 * 날짜형식 Check
 * 8자리면 yyyyMMdd 로 체크 10자리면 yyyy-MM-dd 로 체크
 * @param ele ( text 또는 Form Object )
 */
function isDate(ele)
{
    var elevalue = getElementValue(ele);

    var pattern;
    var year = 0 ;
    var month = 0;
	var day = 0 ;

    if(elevalue.length == 10){
    	pattern=/^[1-2]{1}[0-9]{3}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1}$/;
		year = elevalue.substring(0,4);
		month = elevalue.substring(5,7);
		day = elevalue.substring(8,10);
    }else if(elevalue.length == 8){
    	pattern=/^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}$/;
    	year = elevalue.substring(0,4);
		month = elevalue.substring(4,6);
		day = elevalue.substring(6,8);
    }else{
    	return false;
    }

	if(pattern.test(elevalue) == false) return false;


	if (month < 1 || month > 12) { // check month range
		return false;
	}

	if (day < 1 || day > 31) {
		return false;
	}

	if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		return false;
	}

	if (month == 2) { // check for february 29th
		var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		if (day > 29 || (day==29 && !isleap)) {
			return false;
		}
	}

    return true;
}

/**
 * 날짜형식 Check
 * 8자리면 yyyyMMdd 로 체크 10자리면 yyyy-MM-dd 로 체크
 * @param ele ( text 또는 Form Object )
 */
function isDateTime(ele)
{
    var elevalue = getElementValue(ele);
    var pattern;
    var hour;
    if(elevalue.length == 16){
    	pattern=/^[1-2]{1}[0-9]{3}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1} [0-2]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$/;
    	hour = elevalue.substring(11,13);
    }else if(elevalue.length == 19){
    	pattern=/^[1-2]{1}[0-9]{3}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1} [0-2]{1}[0-9]{1}:[0-5]{1}[0-9]{1}:[0-5]{1}[0-9]{1}$/;
    	hour = elevalue.substring(11,13);
    }else if(elevalue.length == 12){
    	pattern=/^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}$/;
    	hour = elevalue.substring(8,10);
    }else if(elevalue.length == 14){
    	pattern=/^[1-2]{1}[0-9]{3}[0-1]{1}[0-9]{1}[0-3]{1}[0-9]{1}[0-2]{1}[0-9]{1}[0-5]{1}[0-9]{1}[0-5]{1}[0-9]{1}$/;
    	hour = elevalue.substring(8,10);
    }else{
    	return false;
    }

    if(parseInt(hour,10) > 24){
    	return false;
    }


    return (pattern.test(elevalue));
}


/**
 * 시작날짜와 종료날짜를 비교해서 시작날짜가 종료날짜보다 크면 true 리턴
 * yyyyMMdd 또는 yyyy-MM-dd 형식 비교
 * @param date_start ( text 또는 Form Object )
 * @param end_date ( text 또는 Form Object )
 * @param flag_mandatory 필수 여부
 * @return booelan
 */
function isNotCompareDate(date_start, date_end, flag_mandatory){

	if(flag_mandatory){
	}
	if(!isDate(date_start) || !isDate(date_end)){
		return true;
	}
	var start_elevalue = eval(replaceStr(getElementValue(date_start),"-",""));
	var end_elevalue_ = eval(replaceStr(getElementValue(date_end),"-",""));
	
	if(start_elevalue > end_elevalue_){
		return true;
	}
	return false;
}

/**
 * 시작날짜와 종료날짜를 비교해서 시작날짜가 종료날짜보다 크면 alert를 띄우고 true 리턴
 * yyyyMMdd 또는 yyyy-MM-dd 형식 비교
 * @param date_start ( text 또는 Form Object )
 * @param end_date ( text 또는 Form Object )
 * @param flag_mandatory 필수 여부 (default true)
 * @return booelan
 */
function isNotCompareDateAlert(date_start, date_end, flag_mandatory){

	var date_start_value = getElementValue(date_start);
	var date_end_value = getElementValue(date_end);

	// 필수항목이 아닐 경우 date_start 와 date_end 의 값이 없으면 다음으로 진행되어야 된다. 따라서 false를 리턴한다.
	if(flag_mandatory == false){
		if(date_start_value.length == 0 && date_end_value.length == 0){
			return false;
		}
	}
	if(!isDate(date_start) || !isDate(date_end)){
		alert('날짜형식이 잘못됐습니다.');
		return true;
	}
	var start_elevalue = eval(replaceStr(date_start_value,"-",""));
	var end_elevalue_ = eval(replaceStr(date_end_value,"-",""));

	if(start_elevalue > end_elevalue_){
		alert('시작날짜가 종료날짜보다 클 수 없습니다.');
		return true;
	}
	return false;
}

/**
 * 시작날짜와 종료날짜를 비교해서 시작날짜가 종료날짜보다 크면 alert를 띄우고 true 리턴
 * amount  만큼 크기를 비교해서 체크
 * yyyyMMdd 또는 yyyy-MM-dd 형식 비교
 * @param date_start ( text 또는 Form Object )
 * @param end_date ( text 또는 Form Object )
 * @param amount ( 두 날짜 간의 최대 차이 )
 * @param flag_mandatory 필수 여부 (default true)
 * @return booelan
 */
function isNotCompareDateDiffAlert(date_start, date_end, amount, flag_mandatory){

	var date_start_value = document.getElementById(date_start).value;
	var date_end_value = document.getElementById(date_end).value;

	// 필수항목이 아닐 경우 date_start 와 date_end 의 값이 없으면 다음으로 진행되어야 된다. 따라서 false를 리턴한다.
	if(flag_mandatory == false){
		if(date_start_value.length == 0 && date_end_value.length == 0){
			return false;
		}
	}
	if(!isDate(date_start) || !isDate(date_end)){
		alert('날짜형식이 잘못됐습니다.');
		return true;
	}

	date_start_value = replaceStr(date_start_value,"-","")
	date_end_value = replaceStr(date_end_value,"-","");

	var start_elevalue = eval(date_start_value);
	var end_elevalue = eval(date_end_value);

	if(start_elevalue > end_elevalue){
		alert('시작날짜가 종료날짜보다 클 수 없습니다.');
		return true;
	}


    var DateS = new Date(date_start_value.substring(0,4), date_start_value.substring(4,6), date_start_value.substring(6,8));
    var DateE = new Date(date_end_value.substring(0,4), date_end_value.substring(4,6), date_end_value.substring(6,8));

	var diff = (DateE - DateS)/(1000*60*60*24);
	if(diff > amount){
		alert("시작일 과 종료일의 차이가 "+amount+" 일을 넘을 수 없습니다.");
		return true;
	}

	return false;
}

/**
 * 오늘날짜보다 크면 true
 */
function isTodayUpperDate(ele){
	var elevalue = getElementValue(ele);
	elevalue =  parseInt(replaceStr(elevalue, "-",""));
	var today =  parseInt(getFormatToday("yyyymmdd"));

	if(elevalue > today){
		return true;
	}else{
		return false;
	}
}

/**
 * 오늘날짜보다 작으면 true
 */
function isTodayLowDate(ele){
	var elevalue = getElementValue(ele);
	elevalue = parseInt(replaceStr(elevalue, "-",""));
	var today = parseInt(getFormatToday("yyyymmdd"));

	if(elevalue < today){
		return true;
	}else{
		return false;
	}
}