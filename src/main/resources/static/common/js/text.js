/**
 * <pre>
 * script 특수 문자 치환
 * ", ', \n, \r
 * </pre>
 * @param str 문자열
 * @return 변환된 문자열
 */
function toValidStr(str){
	re1 = /\'/gi;
	re2 = /\"/gi;
	re3 = /\n/gi;
	re4 = /\r/gi;
	str = str.replace(re1, "\'");
	str = str.replace(re2, "\"");
	str = str.replace(re3, "");
	str = str.replace(re4, "");

	return str;
}

/**
 * 앞뒤 빈공간 삭제
 * @param str stirng
 * @return string
 */
function trim(str) {
	if(typeof(str) == "undefined") return "";
	return str.replace(/(^\s*)|(\s*$)/gi, "");
}

/**
 * 스트링 변환
 * @param originStr 변환 대상 스트링
 * @param from 바꿀 대상 스트링
 * 바꿀 대상 스트링 중에 정규식 표현 문자 『  . 또는 / 또는 (  또는 )   』
 * 가 들어 있을 경우 \\ (역슬래시 두개) 를 앞에 붙여서 표현한다.
 * 예) var str = "12.34"; 에서 . 을 "" 로 replace 할 경우  replaceStr(str, "\\.","");
 * @param to 목적 스트링
 * @return string
 */
function replaceStr(originStr, from, to) {
	if(typeof(originStr) == "undefined") return "";
    if(typeof(originStr) != "string") originStr = String(originStr);
    return originStr.replaceAll(from, to);
}

/**
 * 스트링 변환
 * var str = "abc"; a 를 f 로 바꿀때   str.replaceAll("a","f")  형태로 사용한다.
 * 바꿀 대상 스트링 중에 정규식 표현 문자 『  . 또는 / 또는 (  또는 )   』
 * 가 들어 있을 경우 \\ (역슬래시 두개) 를 앞에 붙여서 표현한다.
 * 예) var str = "12.34"; 에서 . 을 "" 로 replace 할 경우  replaceStr(str, "\\.","");
 * @param from 바꿀 대상 스트링
 * @param to 목적 스트링
 * @return string
 */
String.prototype.replaceAll = function(from, to) {
    return this.replace(new RegExp(from, "g"), to);
}


/**
 * 문자열을 특정 구분자로 나눈 다음 n번째 문자열을 반환한다.
 * @param tokenValue 나눌 문자열
 * @param delimiter 구분자
 * @param number 리턴할 n번째 문자열
 * @return string
 */
function getSplitValue(tokenValue, delimiter, number){
    returnValue = '';
    var tokens = tokenValue.split(delimiter);
    for(i=0;i<tokens.length;i++){
        if(i==eval(number)){
            returnValue = tokens[i];
            break;
        }
    }
    return returnValue;
}

/**
 * <pre>
 * 문자열이 주어진 범위 밖에 있는지 검사한다
 *
 * 최대길이 보다 크거나, 최소길이보다 작으면 에러메세지를 보여주고,
 * true를 리턴한다.
 * </pre>
 * @param field form.element
 * @param min int 최소길이
 * @param max int 최대길이
 * @param error_msg string 에러 Message
 * @return boolean
 */
function isOutOfRange(field, min, max, error_msg){
	var len = getByteLength(field);
	if( len < min || len > max)
	{
		alert(error_msg);
		field.focus();
		field.select();
		return true;
	}
	return false;
}

/**
 * <pre>
 * 정확한 길이가  아닌지 검사
 * 정확한 길이면 false, 정확한 길이가 아닌면 true
 * </pre>
 * @param field 길이를 검사할 element form.element
 * @param len 비교할 길이
 * @param error_msg 에러 Message
 * @return boolean
 */
function isNotExactLength(field, len, error_msg) {
	if(field.value.length != len) {
		alert(error_msg);
		field.focus();
		field.select();
		return true;
	}
	return false;
}

/**
 * JAVA 에서의 LastOfIndex 와 같은 역할
 */
function getLastOfIndex(str, searchStr) {
    myRexp = new RegExp(searchStr);
    myRexp.exec(str) ;
    return myRexp.lastIndex;
}

/**
 * author : leeman93
 * <pre>
 *  자릿수 단위 input, textarea에 사용되는 필드 카운터
 *  (byte연산아님)
 *
 *  사용법 :
 *     1. element 단일일때.
 *     <input type="text" name="gift_msg_guide" value="" style="width:60%" onblur=textCounter(this,25) onKeyUp=textCounter(this,25) >
 *      gift_msg_guide 의 카운터를 보여주는 필드는
 *      "_cnt" 를 붙여서 만들어준다.
 *      <input type="text" name="gift_msg_guide_cnt" value="(0/25)" size="7">
 *
 * </pre>
 * @param field : 해당필드
 * @param maxlimit : 글자제한수
 * @return  field_cnt.value
 */


function textCounter(field, maxlimit) {
	var charcnt = field.value.length;
	var temp ="";
	var enter_cnt = 0;
	for(i=0;i<charcnt;i++){
   		temp = field.value.charAt(i);
	   	if(temp == '\n'){
	    		enter_cnt++; // 엔터키
	   	}
   	}
	if((charcnt - enter_cnt*2) <= maxlimit){
		setCharProc( field.name+"_cnt", (charcnt - (enter_cnt*2)), maxlimit);
	} else {
		alert("최대 "+maxlimit+"자 이내로 입력해주세요");
		field.value = field.value.substring(0, (maxlimit+(enter_cnt*2)));
	}
}


function setCharProc(vfield, charcnt, maxlimit){
	ofield = eval("document.getElementById('"+vfield+"')");
	if(ofield !=null){
		ofield.value = "("+charcnt+"/"+maxlimit+")";
	}
}

/**
 * author : leeman93
 * <pre>
 *  자릿수 단위 input, textarea에 사용되는 필드 카운터
 *  (byte연산아님)
 *
 *  사용법 :
 *     1. element 복수일때.
 *        : 3번째 인자에 대해 index[] 값을 세팅.
  *     <input type="text" name="gift_msg_guide" value="" style="width:60%" onblur=textCounterArray(this,25, 3) onKeyUp=textCounterArray(this,25, 3) >
 *      gift_msg_guide 의 카운터를 보여주는 필드는
 *      "_cnt" 를 붙여서 만들어준다.
 *      <input type="text" name="gift_msg_guide_cnt" value="(0/25)" size="7">
 *
 * </pre>
 * @param field : 해당필드
 * @param maxlimit : 글자제한수
 * @return  field_cnt.value
 */

function textCounterArray(field, maxlimit, idx) {
	var obj = E(field.name);
	if(typeof(obj.length) == 'undefined' ){
		textCounter(field, maxlimit);
	}else{
		if(idx !=null && idx >= 0 ){
			var charcnt = obj[idx].value.length;
			var temp ="";
			var enter_cnt = 0;
			for(i=0;i<charcnt;i++){
		   		temp = obj[idx].value.charAt(i);
			   	if(temp == '\n'){
			    		enter_cnt++; // 엔터키
			   	}
		   	}
			if((charcnt - enter_cnt*2) <= maxlimit){
				setCharProcArray( obj[idx].name+"_cnt", (charcnt - (enter_cnt*2)), maxlimit, idx);
			} else {
				alert("최대 "+maxlimit+"자 이내로 입력해주세요");
				obj[idx].value = obj[idx].value.substring(0, (maxlimit+(enter_cnt*2)));
			}

		}

	}


}


function setCharProcArray(vfield, charcnt, maxlimit, idx){
	ofield = eval("document.getElementsByName('"+vfield+"')");
	if(ofield !=null){
		ofield[idx].value = "("+charcnt+"/"+maxlimit+")";
	}
}



/**
 * author : leeman93
 * <pre>
 *  DWRUtil에 들어가는 위험요소가 되는 특수문자를 리터럴형으로 치환
 * </pre>
 * @param pVal : value
 * @return value
 */
function convStr(pVal) {
	var retStr = '';
	var ch = '';
	pVal = ''+pVal;
	for (i = 0; i < pVal.length; i++) {
		ch = pVal.charAt(i);
		if (ch == "<") {
			retStr += "&lt;";
		}else if(ch == "'"){
			retStr += "&quot;";
		}else if(ch == "\""){
			retStr += "&quot;";
		} else {
			retStr += ch;
		}
	}
	return retStr;
}

/**
 * 글자수 체크
 * ex) onFocus=textCount(this,50) onKeyUp=textCount(this,50)
 */
function textCount(field, maxlimit) {
	var charcnt = field.value.length;
	var temp ="";
	var enter_cnt = 0;
	for(i=0;i<charcnt;i++){
		temp = field.value.charAt(i);
		if(temp == '\n'){
				enter_cnt++; // 엔터키
		}
	}
	if((charcnt - enter_cnt*2) <= maxlimit){
	} else {
		alert("최대 "+maxlimit+"자 이내로 입력해주세요");
		field.value = field.value.substring(0, (maxlimit+(enter_cnt*2)));
	}
}



/**
 * author : leeman93
 * <pre>
 *  날짜 관련 자동입력
 *
 *  사용법 :
 *     1. <input name="make_date" type="text" class="form_box1" size="10" value="" maxlength=10  OnKeyUp="javascript:getDateCheckFormat(this);" >
 * </pre>
 * @param source : obj
 * @return  obj.value
 */

var local_daytab1 = new Array("31","28","31","30","31","30","31","31","30","31","30","31")
var local_daytab2 = new Array("31","29","31","30","31","30","31","31","30","31","30","31")
function getDateCheckFormat(source)
{
	if(window.event.keyCode == 8) return ;
	if(window.event.keyCode == 37) return ;
	if(window.event.keyCode == 39) return ;

    // 숫자만 입력가능하게 처리
    for(var i=0; i < source.value.length; i++)
        if(!chekingIsDecimal(source.value.charAt(i)))
           source.value = source.value.substring(0,i) + source.value.substring(i+1,source.value.length);
    if (source.value.length > 11) source.value = source.value.substring(0,11);
    	if(source.maxLength==13){
		switch(source.value.length)
		{
			case 1: break;
			case 2: break;
			case 3: break;
			case 4: source.value = source.value + "-"; break;
			case 5: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,5);break;
			case 6: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-";break;
			case 7: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,7);break;
			case 8: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,8)+" ";break;
			case 9: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,8)+""+source.value.substring(8,9);break;
			case 10: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,8)+""+source.value.substring(8,10);break;
			case 11: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,8)+""+source.value.substring(8,11);break;
		}
		if (source.value.length < 13) return;
	}else if(source.maxLength==7){
		switch(source.value.length)
		{
			case 1: break;
			case 2: break;
			case 3: break;
			case 4: source.value = source.value + "-"; break;
			case 5: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,5);break;
			case 6: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6);break;
		}
		if (source.value.length < 7) return;
	}else{
		switch(source.value.length)
		{
			case 1: break;
			case 2: break;
			case 3: break;
			case 4: source.value = source.value + "-"; break;
			case 5: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,5);break;
			case 6: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-";break;
			case 7: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,7);break;
			case 8: source.value = source.value.substring(0,4)+"-"+source.value.substring(4,6)+"-"+source.value.substring(6,8);break;
		}
		if (source.value.length < 10) return;
	}

    var year  = source.value.substring(0,4);
    var month = source.value.substring(5,7);

    if ((month < 1 || month > 12) || (month.indexOf("-") > -1)){
        alert("일자(월) 형식이 틀립니다.");
        source.value = "";
        source.focus();
        return false;
    }

    if(source.maxLength!=7){
    	var day   = source.value.substring(8,10);
	    if (get2LeapYear(year) == 1){
	        if (local_daytab1[month-1] < day){
	            alert("일자(일) 형식이 틀립니다.");
	            source.value = "";
	            source.focus();
	            return;
	        }
	    }else{
	        if (local_daytab2[month-1] < day){
	            alert("일자(일) 형식이 틀립니다.");
	            source.value = "";
	            source.focus();
	            return;
	        }
	    }

	    if ((day < 1 || day > 31) || (day.indexOf("-") > -1))
	    {
	        alert("일자 형식이 틀립니다.");
	        source.value = "";
	        source.focus();
	        return false;
	    }
    }

    if(source.maxLength==13)
    {
	    var hour   = source.value.substring(11,13);

	    if (hour < 0 || hour > 24)
	    {
	        alert("시간 형식이 틀립니다.");
	        source.value = "";
	        source.focus();
	        return false;
	    }
     }

     return 1;
}

function chekingIsDecimal(number){
	if(number >= 0 && number <= 9) return true;
	else return false;
}

function get2LeapYear(year)
{
	if (year % 4 == 0)
		if  (year % 100 == 0)
			 if  (year % 400 == 0)
                  return 2;
			 else return 1;
		else return 2;
	return 1;
}




/**
 * author : leeman93
 * <pre>
 *  날짜 조건별일자 편집
 *
 *  사용법 :
 *     1. setAddDateTime( "20060202", "MM", -1 ) // 1달전
 * </pre>
 * @param astrSource : obj
 * @param astrGubun : 구분 (MM DD HH MI SS)
 * @param aintTerm : 차감 수
 * @return  obj.value
 */
function setAddDateTime(astrSource, astrGubun, aintTerm)
{
	var intLen = astrSource.length;
	if ( !(intLen == 6 || intLen == 8 || intLen  == 10 || intLen ==12 || intLen ==14) ) return "";

	var lngPer = 0. ;
	if (astrGubun == 'MM')
	{
		var intYYYY ;
		if ( aintTerm > 0 )
			intYYYY = astrSource.substring(0,4)*1 + Math.floor(aintTerm/12);
		else	//음수이면
			intYYYY = astrSource.substring(0,4)*1 + Math.ceil(aintTerm/12);

		var intMM = astrSource.substring(4,6)*1 + (aintTerm % 12) ;

		if (intMM == 0){
		    intYYYY --;
		    intMM = 12;
		}

		if (intMM > 12)
		{
			intYYYY ++;
			intMM = intMM - 12;
		}
		var strAddDay = intYYYY;

		if (intMM < 10)	strAddDay += "0"+intMM;
		else		strAddDay += "" +intMM;
		if (intLen > 6)
		{
			// 말일계산하여 일자가 초과되면 말일자로 처리
			if ( strAddDay + astrSource.substring(6,8) > getLastDateStr(strAddDay.substring(0,6)) )
				strAddDay = getLastDateStr(strAddDay.substring(0,6)) ;
			else
				strAddDay += astrSource.substring(6,8);

			if (intLen >= 8) strAddDay += astrSource.substring(8);
		}
		return strAddDay;
	}
	else if (astrGubun == 'DD')
		lngPer = 24 * 60 * 60 * 1000.;
	else if (astrGubun == 'HH')
		lngPer = 60 * 60 * 1000;
	else if (astrGubun == 'MI')
		lngPer = 60 * 1000;
	else if (astrGubun == 'SS')
		lngPer = 1000;
	else
		return "";

	if (intLen == 6) return "";
	var strHH = "00";
	var strMI = "00";
	var strSS = "00";
	if (intLen == 10) strHH = astrSource.substring(8,10);
	if (intLen == 12) strMI = astrSource.substring(10,12);
	if (intLen == 14) strSS = astrSource.substring(12,14);

	var newdate = new Date	(
				astrSource.substring(0,4)+"-"+ astrSource.substring(4,6) +"-"+ astrSource.substring(6,8)+" "+
				strHH +":"+ strMI +":"+ strSS
				);
	var newtimems = newdate.getTime() + (aintTerm * lngPer); 			// 944751600000 + 7 * 86400000
	newdate.setTime(newtimems);

	var strAddDay = newdate.getYear();

	if(strAddDay < 100) strAddDay = "19" + strAddDay;

	if (newdate.getMonth()+1 < 10)
		strAddDay += "0"+(newdate.getMonth()+1);
	else
		strAddDay += "" +(newdate.getMonth()+1);
	if (newdate.getDate() < 10)
		strAddDay += "0"+newdate.getDate();
	else
		strAddDay += newdate.getDate();
	if (newdate.getHours() < 10)
		strAddDay += "0"+ newdate.getHours();
	else
		strAddDay += "" +newdate.getHours();
	if (newdate.getMinutes() < 10)
		strAddDay += "0"+ newdate.getMinutes();
	else
		strAddDay += "" + newdate.getMinutes();
	if (newdate.getSeconds() < 10)
		strAddDay += "0"+ newdate.getSeconds();
	else
		strAddDay += "" + newdate.getSeconds();

	return strAddDay.substring(0, intLen);
}

function getLastDateStr(astrSource)
{
	if (astrSource.length != 6) return "";
	var monarr = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	var year = astrSource.substring(0,4);
	// check for leap year
	if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) monarr[1] = "29";
	return astrSource + monarr[ astrSource.substring(4,6) - 1 ];
}

function makeFormatDate(astrValue)
{
	var astrDate = astrValue;
	if (astrValue.length != 8) return 1;
	astrDate = astrValue.substring(0,4) + "-" + astrValue.substring(4,6) + "-" +astrValue.substring(6,8);
	return astrDate;
}


/**
 * <pre>
 * 필드(String) 길이를 가져온다
 * 한글 한글자를 2byte로 인식하여, IE든 Netscape든 제대로 byte길이를 구해 줍니다.
 * </pre>
 * @param field form.element
 * @return int element의  value byte 크기
 */
function getByteLength(field){
   var len = 0;
   var s = field.value;
   if ( s == null ) return 0;
   for(var i=0;i<s.length;i++){
      var c = escape(s.charAt(i));
      if ( c.length == 1 ) len ++;
      else if ( c.indexOf("%u") != -1 ) len += 2;
      else if ( c.indexOf("%") != -1 ) len += c.length/3;
   }
   return len;
}