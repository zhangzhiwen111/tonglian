<%@page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>通联平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="/css/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
	<link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="/css/bootstrap-select.min.css" />
	<link href="/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
	<link href="/css/css1.css" rel="stylesheet" type="text/css" />
	<link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="/layui/css/layui.css">

	<script type="text/javascript" src="/js/jquery.min.js"></script>
	<script type="text/javascript" src="/js/defaults-zh_CN.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap-table-zh-CN.min.js"></script>
	<script src="/layui/layui.js"></script>
</head>
  
  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="background-color: aliceblue;">
  	<div class="lb3">
      <div class="lb2">
           <form id="form1" name="form1" method="post" action="">
                <input type="text" class="lb2_textfield" placeholder="这里输入关键词" name="keywords" id="keywords" value=""/>

			   <div class="layui-input-inline">
				   <input type="text" class="layui-input" name="beginDate" id="beginDate" placeholder="">
			   </div>
			   <div class="layui-input-inline">
				   <input type="text" class="layui-input" name="endDate" id="endDate" placeholder="">
			   </div>


			   <input type="button" class="lb2_button3" value="搜索" onclick="submitsearch();"/>
                <input type="button" class="lb2_button6" value="+ 新增" onclick="addinfo();" />
                <input type="button" id = "yjfb" class="lb2_button6" value="一键发布" />
			   <input type="hidden" id="unitId" name="unitId" value="${unit.unitId}"/>
			   <input type="hidden" id="default1" name="default1" value="${unit.default1}"/>
           </form>
      </div>

		<table id="table">

		</table>
</div>
	<%--新增新闻开始--%>
	<div class="modal fade bs-example-modal-lg" id="addinfo" tabindex="-1" role="dialog" aria-labelledby="addinfo">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="">新增新闻</h4>
				</div>
				<div class="modal-body">
					<form class="layui-form" action="/info/add" name="addform" id="addform" lay-filter="addform" method="post">
					<input type="hidden" id="infoUnitid" name="infoUnitid" value=""/>
					<div class="layui-form-item">
						<label class="layui-form-label">标题</label>
						<div class="layui-input-block">
							<input type="text" name="infoTitle" id="infoTitle" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<label class="layui-form-label">内容</label>
						<div class="layui-input-block">
							<textarea id="infoContent" name="infoContent"></textarea>
						</div>
					</div>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary" onclick="submitinfo()">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>

				</div>
			</div>
		</div>
	</div>
	<%--新增新闻结束--%>
	<%--编辑新闻开始--%>
	<div class="modal fade bs-example-modal-lg" id="addinfo" tabindex="-1" role="dialog" aria-labelledby="addinfo">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">编辑新闻</h4>
				</div>
				<div class="modal-body">
					<form class="layui-form" action="/info/edit" name="addform" id="editform" lay-filter="addform" method="post">
						<%--<input type="hidden" id="infoUnitid" name="infoUnitid" value=""/>--%>
						<div class="layui-form-item">
							<label class="layui-form-label">标题</label>
							<div class="layui-input-block">
								<%--<input type="text" name="infoTitle" id="infoTitle" class="layui-input">--%>
							</div>
						</div>
						<div class="layui-form-item layui-form-text">
							<label class="layui-form-label">内容</label>
							<div class="layui-input-block">
								<%--<textarea id="infoContent" name="infoContent"></textarea>--%>
							</div>
						</div>
					</form>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary" onclick="submitinfo()">确定</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" onclick="cancle()">取消</button>

				</div>
			</div>
		</div>
	</div>
	<%--编辑新闻结束--%>
	<!-- 配置文件 -->
	<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
	<!-- 编辑器源码文件 -->
	<script type="text/javascript" src="/ueditor/ueditor.all.js"></script>
	<script type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
</body>
</html>
<script>
	$(function(){
		pageInit();
	});
	function pageInit(){
		$("#table").bootstrapTable('destroy');
		$("#table").bootstrapTable({
			url:"/info/list",
			method:"post",
			queryParamsType:"",
			pagination : true,
			sidePagination: "server",
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			pageList: [10, 25, 50, 100],
			pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
			pageSize: 10,
			queryParams : function(params) {
				var param={
					pageNumber:params.pageNumber,
					pageSize:params.pageSize,
					"unitId":$("#unitId").val(),
					"default1":$("#default1").val()
				}
				return param;
			},
			columns : [{
            checkbox : true,
            width : "30px",
        },{
				field : "infoTitle",
				title : "新闻标题",
				visible : true,
				align : 'center'
			},{
				field : "infoTocolumn",
				title : "报送栏目",
				align : 'center'

			},{
				field : "infoCreatorcn",
				title : "创建者",
				align : 'center'

			},{
				field : "status",
				title : "状态",
				align : 'center',
				formatter: function (value, rows, index) {
					return '';
				}
			},{
				field : "info_createtime",
				title : "创建时间",
				align : 'center'

			},{
				field : "infoUpdatetme",
				title : "更新时间",
				align : 'center'

			},{
				field : "opt",
				title : "操作",
				align : 'center',
				formatter: function (value, rows, index) {
					return '<a class="a_style" href="javascript:void(0);" onclick="editInfo('+rows.infoId+' )">编辑</a>';
				}

			}],
			onLoadSuccess:function(){
				$("#loading").css('display','none');
			},
			onLoadError : function() {
			}
		});
	}

	function submitSearch(){
		pageInit();
	}

	function clearSearch(){
		$("#accountName").val("");
		$("#nickName").val("");
		pageInit();
	}

	layui.use('laydate', function () {
		var laydate = layui.laydate;
		//常规用法
		var startTime=laydate.render({
			elem: '#beginDate',
			done: function (value, date) {
				endTime.config.min = { //这里是选择了开始日期，结束日期要大于开始日期
					year: date.year,
					month: date.month - 1,//关键
					date: date.date,
				};
			}
		});

		var endTime = laydate.render({
			elem: '#endDate',
			done: function (value, date) {
				startTime.config.max = {
					year: date.year,
					month: date.month - 1,//关键
					date: date.date,
				};
			}
		});

		var form = layui.form;
		// 实例化编辑器
		var ue = UE.getEditor('infoContent');
		ue.ready(function() {
			ue.setHeight(400);
			//设置编辑器的内容
			// ue.setContent('hello');
			// //获取html内容，返回: <p>hello</p>
			// var html = ue.getContent();
			// //获取纯文本内容，返回: hello
			// var txt = ue.getContentTxt();
		});
		var content = ue.getContent();

	});

	function addinfo(){
		$('#infoTitle').val('');
		UE.getEditor('infoContent').setContent('');
		$("#addinfo").modal("show");
	}

	function  submitinfo() {
		var title=$('#infoTitle').val();
		var infoContent = UE.getEditor('infoContent').getContent()
		var unitId = parent.$("#unitId").val();
		$("#infoUnitid").val(unitId)
		if (title.length==0){
			layer.alert("标题不能为空！", {icon: 0});
			return false;
		}
		$.ajax({
			url:"/info/add",
			type:"POST",
			data :{
				"infoTitle":title,
				"infoContent":infoContent,
				"infoUnitid":unitId,
			},
			success:function (data) {
				if(data.status == "0"){
					layer.alert("操作成功",{icon:1});
					pageInit();
				}else{
					layer.alert("操作失败",{icon:2});
				}
			}
		})
	}

	function  editInfo(infoid) {
		$("#editinfo").modal("show");
	}
</script>