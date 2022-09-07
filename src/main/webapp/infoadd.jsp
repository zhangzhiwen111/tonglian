<%@page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>通联平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<%--<link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />--%>
<%--<link rel="stylesheet" href="/css/bootstrap-select.min.css" />--%>
<link href="/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<link href="/css/css1.css" rel="stylesheet" type="text/css" />
<link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
<%--<script type="text/javascript" src="js/bootstrap-select.min.js"></script>--%>
<%--<script type="text/javascript" src="js/defaults-zh_CN.min.js"></script>--%>
</head>
  
  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="background-color: aliceblue;">
		<div class="lb3">
      <div class="lb2">
           <form id="form1" name="form1" method="post" action="">
                <input type="text" class="lb2_textfield" placeholder="这里输入关键词" name="keywords" id="keywords" value=""/>
                <span>开始时间：</span>
                <input type="date" class="lb2_textfield" id="time_start"  name="time_start" value=""/>
                <span>结束时间：</span>
                <input type="date" class="lb2_textfield" id="time_end"  name="time_end" value="" />
                <input type="button" class="lb2_button3" value="搜索" onclick="submitsearch();"/>
                <input type="button" class="lb2_button6" value="+ 新增" onclick="addinfo();" />
                <input type="button" id = "yjfb" class="lb2_button6" value="一键发布" />
           </form>
      </div>
      <table width="100%" cellpadding="0" cellspacing="0" class="table table-hover">
           <thead>
	            <tr>
					<td><input type="checkbox" name="checkall" id="checkall"/></td>
		             <td width="400px;">新闻标题${infolist.size()}</td>
		             <td>报送栏目</td>
		             <td>创建者</td>
					<td style="min-width: 115px;">状态</td>
		             <td style="min-width: 98px;">创建时间</td>
		             <td style="min-width: 80px;">更新时间</td>
		             <td style="min-width: 115px;">单位</td>
		             <td style="min-width: 170px;">操作</td>
	            </tr>
           </thead>
           <tbody>


	            <tr>
					<c:forEach items="${infolist}" var="var" varStatus="vs">
					<td><input type="checkbox" name="check" id="check"/></td>
					<td width="600px;">${var.infoTitle}</td>
					<td>${var.infoToColumn}</td>
					<td>${var.infoCreatorcn}</td>
					<td style="min-width: 115px;">${var.infoStatus}</td>
					<td style="min-width: 98px;">${var.infoCreatetime}</td>
					<td style="min-width: 80px;">${var.infoUpdatetme}</td>
					<td style="min-width: 115px;">${var.infoUnitid}</td>
					<td width="20px;">
		             <span class="blue"><a>编辑</a></span>
		             </td>
					</c:forEach>
	            </tr>
           </tbody>
      </table>
</div>
</body>
</html>
<script>
	window.onload = function()
	{
		/*获取参数*/
		var isfname = parent.document.getElementById("isfname").value;
		var unitid = parent.document.getElementById("unitid").value;
		/*alert(isfname+"::"+unitid);*/
				$.ajax({
				type:'post',
				url:'/info/list',
				data:{
				'unitId':unitid,
				'default1':isfname
				},
				success:function (data) {
				}
				})
	}

</script>