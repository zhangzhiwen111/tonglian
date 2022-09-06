<%@page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>通联平台</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
<%--<link rel="stylesheet" href="/css/bootstrap-select.min.css" />--%>
<link href="/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
<link href="/css/css1.css" rel="stylesheet" type="text/css" />
<link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="/js/jquery.min.js"></script>
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
	            	 <td style="min-width: 51px;">序号</td>
		             <td width="400px;">新闻标题</td>
		             <td>栏目名称</td>
		             <td>创建者</td>
		             <td style="min-width: 98px;">显示日期</td>
		             <td style="min-width: 80px;">状态</td>
		             <td style="min-width: 115px;">显示日置顶</td>
		             <td style="min-width: 115px;">全局置顶</td>
		             <td style="min-width: 170px;">操作</td>
	            </tr>
           </thead>
           <tbody>


	            <tr>
	            	 <td></td>
		             <td style="text-align:left"></td>
		             <td></td>
		             <td></td>
		             <td></td>
		             <td></td>
		             <td>
		            		未置顶（<a href="#" style="color:green;" > 置顶</a>）
		             </td>
		             <td>
		            		未置顶（<a href="#" style="color:green;" > 置顶</a>）
					</td>
		             <td>
		             <span class="blue"><a  target="_blank">编辑</a></span><span class="blue">
		             <a target="_blank">预览</a>
		             </span>
		             
		             <span class="blue"><a href="#" onclick="" >多栏目</a></span>
		             <a href="#" onclick=""><span class="red">删除</span></a>
		             
		             </td>
	            		
	            </tr>
           </tbody>
      </table>
</div>
</body>
</html>
