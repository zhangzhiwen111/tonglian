<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>通联平台</title>
    <link rel="stylesheet" type="text/css" href="/css/left-side-menu.css">
    <link rel="stylesheet" type="text/css" href="/css/iconfont.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="/js/left-side-menu.js"></script>
</head>

<body>
<jsp:include page="top.jsp"/>
<body>
<div class="left-side-menu" >
    <div class="lsm-container">
        <div class="lsm-scroll" >
            <div class="lsm-sidebar">
                <!-- menu1 list -->
                <ul class="menulist1">
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;" onclick="showedit('首页');"><span><i class="fa fa-home menu-icon"></i>&nbsp;&nbsp;首页</span></a>
                    </li>

                    <li class="lsm-sidebar-item">
                        <a href="javascript:;" onclick="showedit('栏目管理');"><span><i class="fa fa-list menu-icon"></i>&nbsp;&nbsp;栏目管理</span></a>
                    </li>


                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><span><i class="fa fa-newspaper-o menu-icon"></i>&nbsp;&nbsp;新闻管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>

                            <li class="lsm-sidebar-item">
                                <a href="javascript:;"><i class="my-icon lsm-sidebar-icon "></i><span>新闻1</span><i class="my-icon lsm-sidebar-more"></i></a>
                                <ul>

                                    <li  class="lsm-sidebar-item menu-item" id="m_451" data-code="m_451" data-url="#" data-name="新闻2">
                                        <a  style="margin-left:-10px;" title="新闻2" class="active">
                                            <i class="menu-icon"></i>
                                            <span>新闻2</span>

                                            <i class="my-icon lsm-sidebar-more"></i>

                                        </a>

                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </li>


                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><span><i class="fa fa-cogs menu-icon"></i>&nbsp;&nbsp;系统管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;" ><span>签名日志</span></a></li>
                            <li><a href="javascript:;" ><span>关键字管理</span></a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>


<!-- 右侧内容 -->
<div class="modal1_right">
    </div>
<div class="bottom2">
    <h2>版本2021V1.0</h2>
</div>

</body>
</html>
