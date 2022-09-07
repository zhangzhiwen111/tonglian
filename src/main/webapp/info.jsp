<%@page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>通联平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/layui/css/layui.css">
<%--<link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />--%>
<%--<link rel="stylesheet" href="/css/bootstrap-select.min.css" />--%>
<link href="/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<link href="/css/css1.css" rel="stylesheet" type="text/css" />
<link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
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
			   <input type="hidden" id="unitId" name="unitId" value="${unitId}"/>
           </form>
      </div>
      <table width="100%" cellpadding="0" cellspacing="0" class="table table-hover">
           <thead>
	            <tr>
					<td><input type="checkbox" name="checkall" id="checkall"/></td>
		             <td min-width="400px;">新闻标题${infolist.size()}</td>
		             <td width="150px;">报送栏目</td>
		             <td>创建者</td>
					<td style="min-width: 115px;">状态</td>
		             <td width="200px;">创建时间</td>
		             <td width="200px;">更新时间</td>
		             <td style="min-width: 115px;">单位</td>
		             <td style="min-width: 170px;">操作</td>
	            </tr>
           </thead>
           <tbody>

		   <c:forEach items="${infolist}" var="var" varStatus="vs">
	            <tr>

					<td><input type="checkbox" name="check" id="check"/></td>
					<td width="600px;">${var.infoTitle}</td>
					<td>${var.infoToColumn}</td>
					<td>${var.infoCreatorcn}</td>
					<c:if test="${var.infoStatus ==0}">
						<td style="min-width: 115px;">未提交</td>
					</c:if>
					<c:if test="${var.infoStatus ==1}">
						<td style="min-width: 115px;">审核中</td>
					</c:if>
					<c:if test="${var.infoStatus ==2}">
						<td style="min-width: 115px;">已发布</td>
					</c:if>
					<td style="min-width: 98px;">${var.infoCreatetime}</td>
					<td style="min-width: 80px;">${var.infoUpdatetme}</td>
					<td style="min-width: 115px;">${var.unitName}</td>
					<td width="20px;">
		             <span class="blue"><a>编辑</a></span>
		             </td>

	            </tr>
		   </c:forEach>
           </tbody>
      </table>
</div>
</body>
</html>
<script>

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
	});

	function addinfo(){
		var index= layer.open({
			type: 2//0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层)
			,title: false //不显示标题栏
			,closeBtn: false
			,area: ['100%','99%']//定义宽高
			,shade: 0//遮幕
			,id: 'LAY_layuipro' //设定一个id，防止重复弹出
			/*,btn: ['确定', '取消']*/
			,btnAlign: 'c'//按钮排列：居中对齐
			,moveType: 1 //拖拽模式，0或者1
			,content: ['/info/toAdd','yes']//跳转到想要的界面，这里是我自己项目的跳转界面
			,end:function () {
				location.reload();
			}/*,
			yes: function(index, layero){
				//开启loading
				const loading = layer.load(2);
				//获取表单内的所有值
				var body = layer.getChildFrame('body', index);
				// 根据formId获取form表单数据
				var formdata = body.find("#formDemo").serializeArray();
				layer.close(loading);
				layer.close(index); //如果设定了yes回调，需进行手工关闭
			}*/
		})
	}
</script>