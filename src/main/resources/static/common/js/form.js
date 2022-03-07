/**
 ********************************************************
 * 최초작성 : 2006-10-16 ssbang
 *
 * FORM, Object 관련된 JAVASCRIPT
 * Object 의 value 를 가져오거나 가공하는 유틸 JAVASCRIPT 이다.
 * Object 는 Guace Component Object 포함이 될수 있다.
 * 변수중 대문자로 표현된 변수 (글로벌)는 constvar.js 에 있다.
 *********************************************************
 */


/**
 * Object 의 Value 값 가져오기
 * INPUT , GAUCE 의 Object VALUE 값을 가져올수 있다.
 * obj 의 typeof 가 string 이면 바로 return 한다.
 * 사용방법 getElementValue(MaskEditId);
 * @param obj : HTML OBJECT 또는 GAUCE OBJECT
 * @return value ( JAVASCRIPT var : object 의 value 속성에 따라 형이 다르다 )
 */
function getElementValue(obj){

    if(typeof(obj) == "string"){
        return obj;
    }
    if(arguments.length > 1 ) defaultVal = arguments[1];
    else defaultVal = "";



    var tname = obj.tagName;
    var returnStr = "";

    if(typeof(tname) == "undefined") {
        if(typeof(obj) == "undefined"){
            returnStr = defaultVal;

        }else if(typeof(obj) == "string"){
            returnStr = obj; // obj 자체가 Value 이다

        }else if(typeof(obj) == "number"){
            returnStr = obj; // obj 자체가 Value 이다

        }else if(typeof(obj) == "object"){
            if(typeof(obj.length) == "undefined"){
                returnStr = defaultVal;
            }else{
                var ntype = obj[0].type;
                if(ntype == "checkbox" || ntype == "radio"){
                    returnStr = getRadiosValue(obj);
                }else {
                    alert("[ "+ obj + " ] 는 무슨 Object 인지 알수 없습니다.");
                    returnStr = defaultVal;
                }
            }
        }

    }else if(tname == "INPUT"){
        var ntype = obj.type;
        if(ntype == "checkbox" || ntype == "radio"){
            returnStr = getRadiosValue(obj);
        }else {
            returnStr = obj.value;
        }

    }else if(tname == "SELECT"){
        returnStr = obj.value;

    }else if(tname == "OBJECT"){
        if(typeof(obj.classid) == "undefined") return defaultVal;

        var clsid = obj.classid.toUpperCase();

        if(clsid == Clsid_MxMaskEdit || clsid == Clsid_MxTextArea){
            returnStr = obj.text;

        }else if(clsid == Clsid_MxRadio){
            returnStr = obj.CodeValue;

        }else if(clsid == Clsid_MxFileControl){
            returnStr = obj.value;

        }else if(clsid == Clsid_MxCombo){
            var colName = obj.CBDataColumns;
            colName = colName.substring(0, colName.indexOf(","));
            returnStr = obj.ValueOfIndex(colName, obj.index);

        }else{
            alert("[ "+obj + " ]는 Value 를 알수 없는 Object 입니다. ");
            returnStr = defaultVal;
        }
    }else{
        returnStr = defaultVal;
    }

    return returnStr;
}


/**
 * input type=radio 또는 checkbox 의 value 값을 가져온다.
 * @ param obj : radio 또는 checkbox Object
 */
function getRadiosValue(obj) {
    if(typeof(obj.length) == "undefined"){
        if(obj.checked == true){
            return obj.value;
        }else{
        	if(typeof(obj.uncheckvalue) != "undefined"){
        		return obj.uncheckvalue;
        	}
        }
    }else{
    	for(i = 0; i < obj.length; i++) {
    		if(obj[i].checked == true)
    			return obj[i].value;
    	}
    	return "";
    }
    return "";
}

/**
 * getElementValue 에서 가져온 값을 String 으로 convert 한다.
 */
function getElementValueToString(obj){
    return new String(getElementValue(obj));
}

/**
 * getElementValue 에서 가져온 값을 int 로 convert 한다.
 */
function getElementValueToInteger(obj){
    var objValue = parseInt(getElementValue(obj));
    if(objValue.toString() == "NaN"){ objValue = 0;}
    return objValue;
}

/**
 * getElementValue 에서 가져온 값을 float 으로 convert 한다.
 */
function getElementValueToFloat(obj){
    var objValue = parseFloat(getElementValue(obj));
    if(objValue.toString() == "NaN"){ objValue = 0.0;}
    return objValue;
}


/**
 * Select Box 선택여부 검사
 * @param field
 * @param error_msg
 */
function isNotSelected(field, error_msg) {
	if(field.selectedIndex == 0) {
		alert(error_msg);
		field.focus() ;
		return true;
	} else {
		return false;
	}
}

/**
 * Radio Button을 선택해제한다
 * @param field form.element
 */
function uncheckRadio(field) {
	for(i = 0; i < field.length; i++) {
		field[i].checked = false;
	}
}

/**
 * Radio Button의 선택된 값을 가져온다
 * @param field form.element
 */
function getRadioVal(obj) {
	if(typeof(obj.length) == "undefined"){
        if(obj.checked == true){
            return obj.value;
        }
    }else{
    	for(i = 0; i < obj.length; i++) {
    		if(obj[i].checked == true)
    			return obj[i].value;
    	}
    	return "";
    }
    return "";
}

/**
 * 검색어가 입력되는 FORM element를 초기화("") 한다.
 *
 * @param frm 검색어 입력 FORM
 */
function doInit(frm)
{
	for (i = 0; i < frm.elements.length; i++)
	{
		frm.elements[i].value = "";
	}
}

/**
 * ENTER키 다운 되었을때 넘겨받은 Function실행
 *
 * @param func 실행할 Function명
 */
function enterKeyDown(func)
{
	enter = event.keyCode;
	if(enter == 13)
	{
		eval(func);
	}
}

/**
 * TAB키 다운 되었을때 넘겨받은 Function실행
 *
 * @param func 실행할 Function명
 */
function tabKeyDown(func)
{
	enter = event.keyCode;
	if(enter == 09)
	{
		eval(func);
	}
}

/**
 * 셀렉트 박스를 원하는 값으로 셋팅하는 함수
 *
 * @param objFrm document.프레임명.셀렉트 박스 이름
 * @param val 셋팅할 값
 */
function setSelectVal ( objFrm, val ) {
    var len = objFrm.options.length;
    if ( !len ) {
        return;
    }

    for ( var n = 0; n < len; n++ ) {

        if ( objFrm.options[n].value == val ) {
	    	objFrm.options[n].selected = true;
		}
    }
}

/**
 * 라디오 버튼, 체크박스를 원하는 값으로 셋팅하는 함수
 *
 * @param objFrm document.프레임명.라디오 버튼 이름
 * @param val 셋팅할 값
 */
function setRadioVal (objFrm, val) {
	var len = objFrm.length;
	if (!len) {
		objFrm.checked = true;
	} else {
		for (var n = 0; n < len; n++) {
			if (objFrm[n].value == val)
				objFrm[n].checked = true;
		}
	}
}

/**
 * radio button check 여부
 * @param field form.element
 * @param error_msg 에러 Message
 * @return boolean
 */
function isNotCheckedRadio(field, error_msg) {
	if ( field == null ) {
		alert(error_msg);
		return true;
	}

	if ( field.length == null ) {
		if ( field.checked == true ) {
			return false;
		} else {
			alert(error_msg);
			return true;
		}
	}

	for(i = 0; i < field.length; i++) {
		if(field[i].checked == true) {
			return false;
		}
	}
	alert(error_msg);
	return true;
}

 /**
 * <pre>
 * 현재 객체의 입력 글자수가 일정수를 넘으면 다음 객체로 포커스가 이동한다
 * </pre>
 * @param obj 현재 객체
 * @param limitLength 입력 글자수의 한계
 * @param nextObj 포커스가 이동할 객체
 */
function nextFocus(obj, limitLength, nextObj) {
	if(obj.value.length == limitLength) nextObj.focus();
}

/**
 * <pre>
 * 인수로 받은 object가 배열인지 판단 한다.
 * - null이면 0을 리턴
 * - 배열이 아니면 1을 리턴
 * - 배열이라면 배열 길이를 리턴
 * </pre>
 * @param obj 검사할 form.element
 * @return number (0, 1, obj.length)
 */
function isArray(obj){
	if(obj == null){
		return 0;
	}else {
		//alert(obj.type);
		if(obj.type == 'select-one'){
			return 1;
		}else if(obj.type == 'select-multiple'){
			return 1;
		}else{
			if(obj.length > 1){
				return obj.length;
			}else {
				return 1;
			}
		}
	}
}


/**
 * input element의 hidden type object를 생성하여 반환한다.
 *
 * @param elemName element의 이름
 * @param elemValue element의 값
 * @return input element (&lt;input type="hidden" name="elemName" value="elemValue"&gt;)
 */
function genDomInput(elemName, elemValue){
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", elemName);
	input.setAttribute("id", elemName);
	input.setAttribute("value", elemValue);
	return input;
}

/**
 * input element의 hidden type object를 생성하여 해당 parent_obj에 넣는다.
 *
 * @param parent_obj 생성되는 object를 넣을 부모 object object타입으로 넘겨준다.
 * @param elemName element의 이름
 * @param elemValue element의 값
 */
function putDomInput(parent_obj, elemName, elemValue){
	var input = document.createElement("input");
	input.setAttribute("type", "hidden");
	input.setAttribute("name", elemName);
	input.setAttribute("value", elemValue);
	parent_obj.appendChild(input);
}

/**
 * author : leeman93
 * <pre>
 * document상의 element 값을 호출 (document.all 의 응용version)
 *
 *  사용법 : 단일성 E('from_date') , 다형구조  E('from_date')[0], E('from_date')[1]
 *              E('from_date').value;  E('from_date').focus();
 * </pre>
 * @param id : element 이름
 * @return  element object
 */
function E(id) {
  	var obj1 = document.getElementById(id);
  	var obj2 = document.getElementsByName(id);
  	if(obj1 == null){
  		//alert("해당객체가 존재하지않습니다 확인해주세요. id:"+id); return "";
  		return null;

  	}else if(typeof(obj1[0]) == 'undefined' && obj2.length == 1){
  		//alert("단일:"+id);
  		return document.getElementById(id);
	}else if(obj1.getAttribute("type").toUpperCase()=="SELECT-ONE" && obj2.length == 1){
  		//alert("select단일:"+id);
  		return document.getElementById(id);
  	}else{
  		//alert("복수:"+id);
  		return document.getElementsByName(id);
  	}
}

/**
 * author : papillon212
 *
 * type="text" 에 숫자값만 입력가능
 * onkeyup="checkNumberOnly(this,1,event)" onblur="checkNumberOnly(this,1,event)"
 *
 * obj는 해당 object
 * default_value는 기본값
 * @param id : element 이름
 */
function checkNumberOnly(obj, default_value, event){
	var str = obj.value;
	var set_value = "";

	var key_code = event.keyCode;

	if(key_code == 0x10 || (key_code >= 0x25 && key_code <= 0x28) || (0x30 <= key_code && key_code <= 0x39) || (0x60 <= key_code && key_code <= 0x69)){ //shift나 방향키나 숫자키일때 리턴
		return;
	}

	for(var i=0;i<str.length;i++){
		var c = str.charCodeAt(i);
		if( 0x30 <= c && c <= 0x39 ){
			set_value += str.charAt(i);
		}
	}

	if(set_value == ""){
		set_value = default_value+"";
	}

	obj.value = set_value;
}

/**
 * 레이어 숨기기
 */
function hideLayer(layer_name){
	document.getElementById(layer_name).style.display = "none";
}


/**
 * author : 파이언넷
 *
 * 컬럼행 추가(셀렉트 박스, 체크박스를 가진 추가)
 * fn_add_row_crt(document.all.add_col, add_type, add_name, add_value, add_disp, add_selected);
 *
 * document.all.add_col는 TABLE의 ID
 * add_type : 추가될 컬럼의 타입
 * add_name : 추가될 컬럼의 이름
 * add_value : Value가 필요할 경우 입력 그렇지 않으면 ""
 * add_disp  : CheckBox, Select Box의 디스플레이 명칭
 * add_selected : Select Box의 디폴트 값
 * add_etc      : 기타정보
 */
function fn_add_row_crt(tbody_name, add_type, add_name, add_value, add_disp, add_selected, add_etc,tr_name, img_path){
	var oRow		= tbody_name.insertRow();	// 테이블에 TR추가
	if(tr_name != undefined) oRow.id = tr_name;
	var strHtml1 = "";

	for (var i=0; i< add_type.length; i++) {
	    if ( add_type[i] != "HIDDEN" ) {
		    var oCell		= oRow.insertCell();	// TR에 TD 추가
		     oCell.align = "CENTER";
		     oCell.bgColor = "#FFFFFF";
			
			var strHtml = "";

			if ( add_type[i] == "CHK" ) {
				var tokens_value = add_value[i].split("/");
			    var tokens_disp  = add_disp[i].split("/");

			    for(j=0;j<tokens_value.length;j++){
			        if ( tokens_value[j] == add_selected[i] ) {
			        	strHtml	= strHtml + '<input type="checkbox" name="chk_'
									      + add_name[i]
									      + '" value="'+tokens_value[j]+'"  '+add_etc[i]+' checked>'+tokens_disp[j];									   
			        } else {
			            strHtml	= strHtml + '<input type="checkbox" name="chk_'
									      + add_name[i]
									      + '" value="'+tokens_value[j]+'" '+add_etc[i]+'>'+tokens_disp[j];									   
					}
			    }

			    strHtml	= strHtml + '<input type="hidden" name="'
								  + add_name[i]
								  + '" value="'+add_selected[i]+'">';
			} else if ( add_type[i] == "SELECT"  ) {
			    var tokens_value = add_value[i].split("/");
			    var tokens_disp  = add_disp[i].split("/");

			    strHtml	= strHtml + '<select name="'+add_name[i]+'" class="input02"'

			    if(add_etc[i] != undefined && add_etc[i] !="") {
			      strHtml	= strHtml + 'onChange="'+ add_etc[i] +'">';
			    }else{
			      strHtml	= strHtml + '>';
			    }

			    for(j=0;j<tokens_value.length;j++){

			        if ( tokens_value[j] == add_selected[i] ) {
			        	strHtml	= strHtml + '<option value="'+tokens_value[j]+'" selected>'+tokens_disp[j]+'</option>';
			        } else {
			            strHtml	= strHtml + '<option value="'+tokens_value[j]+'">'+tokens_disp[j]+'</option>';
			        }
			    }
			    strHtml	= strHtml + '</select>';
		    }else if ( add_type[i] == "STRCOL" ) {
		        oCell.colSpan="2";		   
				strHtml	= add_name[i];
			} else if ( add_type[i] == "STR" ) {
				strHtml	= add_name[i];
			} else if ( add_type[i] == "TEXTIMG"  ) {
				strHtml	= '<input type="'
				                + add_type[i]
				                + '" name="'
								+ add_name[i]
								+ '" value="'+add_value[i]+'" '+add_etc[i]+' >'
								+ add_disp[i];
			} else {
				strHtml	= '<input type="'
				                + add_type[i]
				                + '" name="'
								+ add_name[i]
								+ '" value="'+add_value[i]+'" '+add_etc[i]+' >';
			}
			if ( i == add_type.length - 1) {
				oCell.innerHTML	= strHtml + strHtml1;
				
				
			} else {
		    	oCell.innerHTML	= strHtml;
			}
			
		} else {
		   strHtml1	= strHtml1 + '<input type="hidden" name="'
							   + add_name[i]
						       + '" value="'+add_value[i]+'">';
		}


	}
	
	

}

/**
 * author : 파이언넷
 *
 * 한줄일 경우 배열로 인식을 할 수가 없기 때문에 모든 경우를 배열로 변경함
 * fn_array(obj);
 *
 * obj : object 명
 */
function fn_array( obj ) {
    if ( !obj.length ) {
        var tmpArray = new Array();
   		tmpArray[0] = obj;
   		obj = tmpArray;
   }

   return obj;
}

/**
 * object 들의  value 를 초기값 또는 "" 로 reset 한다.
 * clearObjects('input1', 'checkbox1', 'emedit1')
 * @param arguments ids
 */
function clearObjects(){
	var args = arguments;
	for(var i = 0; i < args.length; i++){
		clearObjectValue(args[i]);	
	}
}

/**
 * object value 를 초기값 또는 "" 로 reset 한다.
 * clearObjectValue('input1')
 * @param obj id
 */
function clearObjectValue(obj){
	if( typeof(obj) == "string"){
		obj = document.getElementById(obj);
		
	}

    if(obj != null && typeof(obj) == "object"){

	    var tname = obj.tagName;
	    if(typeof(tname) == "undefined") {
	        if(typeof(obj) == "object"){
	            if(typeof(obj.length) != "undefined"){
	                var ntype = typeof(obj[0]) != "undefined" ? obj[0].type : "" ;
	                if(ntype == "checkbox" || ntype == "radio"){
	                    for(var j = 0; j < obj.length; j++){
	                    	obj[j].checked = false;
	                    }
	                }
	            }
	        }

	    }else if(tname == "INPUT"){
	        var ntype = obj.type;	  
	        if(ntype == "checkbox" || ntype == "radio"){
	            obj.checked = false;
	        }else {
	            obj.value = "";
	        }
	    }else if(tname == "TEXTAREA"){
            obj.value = "";

	    }else if(tname == "SELECT"){
	        obj.selectedIndex = 0;

	    }else if(tname == "OBJECT"){
	        var clsid = obj.classid.toUpperCase();

	        if(clsid == Clsid_MxMaskEdit || clsid == Clsid_MxTextArea){
	            obj.text = "";

	        }else if(clsid == Clsid_MxRadio){
	            obj.reset();

	        }else if(clsid == Clsid_MxFileControl){
	            obj.value = "";

	        }else if(clsid == Clsid_MxCombo){
	            obj.index = 0;

	        }
	    }
	}
}