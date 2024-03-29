<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>MemberJoinProc</title>
</head>

<link rel="stylesheet" type="text/css" href="/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css"/>
<link rel="stylesheet" type="text/css" href="/css/ui.multiselect.css"/>

<script src="/js/jquery.js" type="text/javascript"></script>
<!-- <script src="/js/jquery.jqGrid" type="text/javascript"></script> -->
<script src="/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="/js/jquery.jqGrid.min.js" type="text/javascript"></script>

<body>
	<table id="list"></table>
	<div id="pager"></div>
</body>

<script type="text/javascript">



jQuery("#list").jqGrid({
	
   	url:'/member/list',
	datatype: "json",
	mtype:"POST",
   	colNames:['아이디','이름', '성별', '생년월일', '이메일', '전화번호','주소','등급'],
   	colModel:[
   		{name:'id',index:'id', width:55, search:false},
   		{name:'name',index:'name', width:90, search:false},
   		{name:'gender',index:'name asc, invdate', width:100, search:false},
   		{name:'birth',index:'birth', width:80, align:"center", search:false},
   		{name:'email',index:'email', width:80, align:"center", search:false},
   		{name:'phone',index:'phone', width:80, align:"center", search:false},
   		{name:'address',index:'address', width:80, align:"center", search:false},
   		{name:'grade', index:'grade', width:80, align:"center"}
   	],
   	rowNum:10,
   	rowList:[10,20,30],
   	pager: '#pager',
   	sortname: 'id',
    viewrecords: true,
    sortorder: "desc",
    caption:"회원 리스트",
    loadComplete: function () {
        var $this = $(this), p = $this.jqGrid("getGridParam");
        if (p.datatype === "json") {
            setTimeout(function () {
                p.search = true;
                p.postData.filters = '{"groupOp":"AND",rules:[{"field":"grade", "op":"eq", "data":"일반"}]}';
                $this.triggerHandler("reloadGrid");
            }, 50);
        }
    },
    loadonce:true,
    search:true,
    
});

jQuery("#list").jqGrid('navGrid','#pager',{edit:false,add:false,del:false});


</script>

</html>