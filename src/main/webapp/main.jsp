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
    <script src="/js/jquery.min.js"></script>
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
            <li><a><i class="fa fa-user-circle-o" aria-hidden="true"></i>${user.nickName}</a></li>
            <li><a  onclick="modifyPass()"><i class="fa fa-lock" aria-hidden="true" ></i>修改密码</a></li>
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
                        <a style="text-decoration: none;" href="javascript:;"><i class="fa fa-paper-plane" aria-hidden="true"></i><span>信息报送</span><i class="my-icon lsm-sidebar-more"></i></a>

                            <ul>
                                <c:forEach items="${unitmap.data}" var="map" varStatus="vs">
                                <li>
                                    <a style="text-decoration: none;" onclick="tolist('${map.parent.unitId}','yes');" href="javascript:;"><i class="my-icon lsm-sidebar-icon "></i><span>${map.parent.unitName}</span>
                                        <c:if test="${map.child.size()>0}">
                                        <i class="my-icon lsm-sidebar-more"></i>
                                        </c:if>
                                    </a>

                                    <ul>
                                        <c:forEach items="${map.child}" var="childUnit" varStatus="vs">
                                        <li><a style="text-decoration: none;" onclick="tolist('${childUnit.unitId}','no');" href="javascript:;"><span>${childUnit.unitName}</span></a></li>
                                        </c:forEach>
                                    </ul>

                                </li>
                                </c:forEach>
                            </ul>

                    </li>
                </ul>
                <ul>
                    <li class="lsm-sidebar-item">
                        <a style="text-decoration: none;" href="javascript:;"><i class="fa fa-volume-up" aria-hidden="true"></i><span>公告管理</span></a>
                    </li>
                </ul>
                <ul>
                    <li class="lsm-sidebar-item">
                        <a style="text-decoration: none;" onclick="toUserList();" href="javascript:;"><i class="fa fa-user" aria-hidden="true"></i><span>用户管理</span><%--<i class="my-icon lsm-sidebar-more"></i>--%></a>
                       <%-- <ul>
                            <li><a style="text-decoration: none;" href="javascript:;"><span>新增用户</span></a></li>
                            <li><a  style="text-decoration: none;" href="javascript:;"><span>修改用户</span></a></li>
                        </ul>--%>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

        <div class="modal1_right">
            <iframe frameborder="0" scrolling="yes" style="width:100%;height:100%" src=""  name = "rightFrame" id="rightFrame"></iframe>
        </div>

    <div class="modal fade bs-example-modal-lg" id="modifyPass" tabindex="-1" role="dialog" aria-labelledby="modifyPass">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="">修改密码</h4>
                </div>
                <div class="modal-body">
                    <form id="modifyPassfrom" class="form-horizontal" >

                        <div class="row">
                            <div class="form-group col-md-8 col-lg-8 ">
                                <label class="col-sm-4 control-label"><span>*</span>原密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control"  id="old_accountPass" name="old_accountPass"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-8 col-lg-8 ">
                                <label class="col-sm-4 control-label"><span>*</span>设置新密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control"  id="new_accountPass" name="new_accountPass"/>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="form-group col-md-8 col-lg-8 ">
                                <label class="col-sm-4 control-label"><span>*</span>确认密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" id="again_accountPass" name="again_accountPass"/>
                                </div>
                            </div>
                        </div>



                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="userSubmit()">确定</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>

                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
<script>
    /*请求右侧页面*/
    function tolist(id,isfname) {
        var right = document.getElementById("rightFrame");
        right.src="/info/toListPage?unitId="+id+"&default1="+isfname;
    }
    function toUserList() {
        var right = document.getElementById("rightFrame");
        right.src="/user/toListPage";
    }
    
    
    function modifyPass() {
        $("#modifyPass").modal("show");
    }
</script>