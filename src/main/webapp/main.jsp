<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>通联平台</title>
    <link rel="stylesheet" type="text/css" href="/css/css1.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/css/left-side-menu.css">
    <link rel="stylesheet" type="text/css" href="/font/iconfont.css">
    <link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="/js/left-side-menu.js"></script>
</head>
<body>
<div style="width: 100%;float: left;height: 100vh;min-width: 1280px;">

<div class ="top"  style="width: 100%;height: 80px;background-color: #397bc5">
    <div class="header_left">
        <h1 style="color: #ffffff;font-size: 27px;margin-top: 25px;margin-left: 17px;">通联平台</h1>
    </div>
    <div class="header_right"  width="100%" height="70">
        <ul>
            <li><a><i class="fa fa-user-circle-o" aria-hidden="true"></i>张志文</a></li>
            <li><a><i class="fa fa-lock" aria-hidden="true" ></i>修改密码</a></li>
            <li><a href="/login/logout"><i class="fa fa-power-off" aria-hidden="true"></i>退出登录</a></li>
        </ul>
    </div>
</div>
<div class="left-side-menu" >
    <div class="lsm-expand-btn">
        <div class="lsm-mini-btn">
<%--
            <label>
                <input type="checkbox" checked="checked">
                <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="50" cy="50" r="30" />
                    <path class="line--1" d="M0 40h62c18 0 18-20-17 5L31 55" />
                    <path class="line--2" d="M0 50h80" />
                    <path class="line--3" d="M0 60h62c18 0 18 20-17-5L31 45" />
                </svg>
            </label>
--%>

        </div>
        <!--        <input type="text"/>-->

    </div>
    <div class="lsm-container">
        <div class="lsm-scroll" >
            <div class="lsm-sidebar">
                <ul>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="fa fa-paper-plane" aria-hidden="true"></i><span>信息报送</span><i class="my-icon lsm-sidebar-more"></i></a>

                            <ul>
                                <c:forEach items="${unitmap.data}" var="map" varStatus="vs">
                                <li>
                                    <a href="javascript:;"><i class="my-icon lsm-sidebar-icon "></i><span>${map.parent.unitName}</span><i class="my-icon lsm-sidebar-more"></i></a>

                                    <ul>
                                        <c:forEach items="${map.child}" var="childUnit" varStatus="vs">
                                        <li><a href="javascript:;"><span>${childUnit.unitName}</span></a></li>
                                        </c:forEach>
                                    </ul>

                                </li>
                                </c:forEach>
                            </ul>

                    </li>
                </ul>
                <ul>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="fa fa-volume-up" aria-hidden="true"></i><span>公告管理</span></a>
                    </li>
                </ul>
                <ul>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="fa fa-user" aria-hidden="true"></i><span>用户管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>新增用户</span></a></li>
                            <li><a href="javascript:;"><span>修改用户</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

        <div class="modal1_right">
            <iframe frameborder="0" scrolling="yes" style="width:100%;height:100%" src="/info.jsp"  name = "rightFrame" id="rightFrame"></iframe>
        </div>
</div>
</body>
</html>
