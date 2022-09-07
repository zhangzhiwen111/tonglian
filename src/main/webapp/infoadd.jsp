<%@page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<title>新闻新增</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="/layui/css/layui.css">
	<script src="/layui/layui.js"></script>
	<script src="/js/jquery.js"></script>
	<style>
		.layui-form {
			width: 90%;
			margin: 60px auto;
		}
	</style>
</head>
<body>

<%--<form class="layui-form" action="/info/add" name="addform" id="addform" lay-filter="addform" method="post">--%>
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
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button type="button" class="layui-btn" onclick="submitinfo();">立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		</div>
	</div>
<%--</form>--%>

<!-- 配置文件 -->
<script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js"></script>
<script>
	layui.use('form', function(){
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
		alert(content+"11111111");
	});
	
	function  submitinfo() {
		var title=$('#infoTitle').val();
		var infoContent = UE.getEditor('infoContent').getContent()
		var unitId = parent.$("#unitId").val();
		$("#infoUnitid").val(unitId)
		if (title.length==0){
			layer.msg("标题不能为空！", {icon: 6});
			return false;
		}
/*		var form = document.getElementById("addform");
		form.submit();*/
		$.ajax({
			url:"/info/add",
			type:"POST",
			data :{
				"infoTitle":title,
				"infoContent":infoContent,
				"infoUnitid":unitId,
			},
			success:function (data) {
				if("success" == data){
					/*layer.msg("标题不能为空！", {icon: 16});*/
					alert("保存成功");
					window.parent.location.reload(); //刷新父页面
					var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
					parent.layer.close(index);  // 关闭layer
				}else{
					alert("保存失败");
				}
			}
		})
	}

</script>
</body>
</html>
