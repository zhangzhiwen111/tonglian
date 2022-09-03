<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>通联平台</title>
    <link rel="stylesheet" type="text/css" href="/css/css1.css">
    <link rel="stylesheet" type="text/css" href="/css/left-side-menu.css">
    <link rel="stylesheet" type="text/css" href="/font/iconfont.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="/js/left-side-menu.js"></script>
</head>
<body>
<div class ="top"  style="width: 100%;height: 80px;background-color: #397bc5">
    <div class="header_left">
        <h1>通联平台</h1>
    </div>
    <div class="header_right"  width="100%" height="70">
        <ul>
            <li><a><i class="fa fa-user-circle-o" aria-hidden="true"></i>张志文</a></li>
            <li><a onclick="chagepwd();"><i class="fa fa-lock" aria-hidden="true" ></i>修改密码</a></li>
            <li><a onclick="logout();"><i class="fa fa-power-off" aria-hidden="true"></i>退出登录</a></li>
        </ul>
    </div>
</div>
<div class="left-side-menu" >
    <div class="lsm-expand-btn">
        <div class="lsm-mini-btn">
            <label>
                <input type="checkbox" checked="checked">
                <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="50" cy="50" r="30" />
                    <path class="line--1" d="M0 40h62c18 0 18-20-17 5L31 55" />
                    <path class="line--2" d="M0 50h80" />
                    <path class="line--3" d="M0 60h62c18 0 18 20-17-5L31 45" />
                </svg>
            </label>

        </div>
        <!--        <input type="text"/>-->

    </div>
    <div class="lsm-container">
        <div class="lsm-scroll" >
            <div class="lsm-sidebar">
                <ul>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_1"></i><span>系统设置</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>地爆天星</span></a></li>
                            <li><a class="active"  href="javascript:;"><span>无线月读</span></a></li>
                            <li><a href="javascript:;"><span>一乐拉面</span></a></li>
                            <li class="lsm-sidebar-item">
                                <a href="javascript:;"><i class="my-icon lsm-sidebar-icon "></i><span>二级菜单11</span><i class="my-icon lsm-sidebar-more"></i></a>
                                <ul>
                                    <li><a href="javascript:;"><span>地爆天星</span></a></li>
                                    <li><a href="javascript:;"><span>无线月读</span></a></li>

                                </ul>
                            </li>

                            <li class="lsm-sidebar-item">
                                <a href="javascript:;"><i class="my-icon lsm-sidebar-icon "></i><span>二级菜单22</span><i class="my-icon lsm-sidebar-more"></i></a>
                                <ul >
                                    <li><a href="javascript:;"><span>血继限界</span></a></li>
                                    <li><a href="javascript:;"><span>秽土转生</span></a></li>
                                    <li><a href="javascript:;"><span>万象天引</span></a></li>
                                    <li><a href="javascript:;"><span>尸鬼封尽</span></a></li>
                                    <li><a href="javascript:;"><span>飞雷神之术</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_2"></i><span>网络设置</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>地爆天星1</span></a></li>
                            <li><a href="javascript:;"><span>神罗天征1</span></a></li>
                            <li><a href="javascript:;"><span>八门遁甲1</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>退出系统</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国2</span></a></li>
                            <li><a href="javascript:;"><span>沙之国3</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者3</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-iconset0308"></i><span>购物车管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国4</span></a></li>
                            <li><a href="javascript:;"><span>沙之国4</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者4</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi1"></i><span>支付中心</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国5</span></a></li>
                            <li><a href="javascript:;"><span>沙之国5</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者5</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi"></i><span>充值中心</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国6</span></a></li>
                            <li><a href="javascript:;"><span>沙之国6</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者6</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi-copy"></i><span>充值中心</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国7</span></a></li>
                            <li><a href="javascript:;"><span>沙之国7</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者7</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-users"></i><span>用户管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国8</span></a></li>
                            <li><a href="javascript:;"><span>沙之国8</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者8</span></a></li>
                        </ul>
                    </li>

                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>退出系统</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国2</span></a></li>
                            <li><a href="javascript:;"><span>沙之国3</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者3</span></a></li>
                        </ul>
                    </li>


                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-iconset0308"></i><span>购物车管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国4</span></a></li>
                            <li><a href="javascript:;"><span>沙之国4</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者4</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi1"></i><span>支付中心</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国5</span></a></li>
                            <li><a href="javascript:;"><span>沙之国5</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者5</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi"></i><span>充值中心</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国6</span></a></li>
                            <li><a href="javascript:;"><span>沙之国6</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者6</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-chongzhi-copy"></i><span>充值中心</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国7</span></a></li>
                            <li><a href="javascript:;"><span>沙之国7</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者7</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon-users"></i><span>用户管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国8</span></a></li>
                            <li><a href="javascript:;"><span>沙之国8</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者8</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>订单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国9</span></a></li>
                            <li><a href="javascript:;"><span>沙之国9</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者9</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>订单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国10</span></a></li>
                            <li><a href="javascript:;"><span>沙之国10</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者10</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>订单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国11</span></a></li>
                            <li><a href="javascript:;"><span>沙之国11</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者11</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>订单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国12</span></a></li>
                            <li><a href="javascript:;"><span>沙之国12</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者12</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>订单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国13</span></a></li>
                            <li><a href="javascript:;"><span>沙之国13</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者13</span></a></li>
                        </ul>
                    </li>
                    <li class="lsm-sidebar-item">
                        <a href="javascript:;"><i class="my-icon lsm-sidebar-icon icon_3"></i><span>订单管理</span><i class="my-icon lsm-sidebar-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>火之国14</span></a></li>
                            <li><a href="javascript:;"><span>沙之国14</span></a></li>
                            <li><a href="javascript:;"><span>火影忍者14</span></a></li>
                        </ul>
                    </li>





                </ul>
            </div>
        </div>
    </div>

</div>

</body>
</html>

