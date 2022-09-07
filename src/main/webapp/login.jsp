<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>通联平台</title>
	<link href="/css/css.css" rel="stylesheet" type="text/css" />
      <script type="text/javascript" src="/js/jquery.min.js"></script>
  </head>
  
<body>
<div class="backstages">
      <div class="backstages_center">
             <div class="backstages_inner">
                    <div class="backstages_header">
                           <h1>通联平台</h1>
                    </div>
                    <div class="backstages_middle">
                           <%--<form id="loginform">--%>
                                 <div class="backstages_inner2">
                                       <label>用户名：</label>
                                       <input type="text" name="loginame" id = "loginame" placeholder="请输入您的账号" class="backstages_textfield1" />
                                 </div>
                                 <div class="backstages_inner2">
                                       <label>密码：</label>
                                       <input type="password" name="loginpwd" id = "loginpwd" placeholder="请输入您的密码" class="backstages_textfield2" />
                                 </div>
                                 <div class="backstages_inner2">
                                       <button  class="backstages_button1" onclick="login()";>登 陆</button>
                                       <button type ="button" class="backstages_button2" onclick="reset();">重 置<br></button>
                                 </div>
                          <%-- </form>--%>
                    </div>
             </div>
             <div class="backstages_word">
                    <h2>COPYRIGHT © 2020 ALL RIGHTS RESERVED </h2>
             </div>
      </div>
</div>
</body>
</html>
<script type="text/javascript">
    function login() {
        var loginame= $('#loginame').val();
        if (loginame == "") {
            alert("请输入用户名");
            return false;
        }
        var loginpwd= $('#loginpwd').val();
        if (loginpwd == "") {
            alert("请输入密码");
            return false;
        }
        //ajax请求
        $.ajax({
            type: "POST",
            url: "/login/login",
            contentType: "application/x-www-form-urlencoded;charset=UTF-8",
            dataType: "json",
            data: {
                "accountName":loginame,
                "accountPass":loginpwd
            },
            success: function (data) {
                if (data.status) {
                    window.location.href = "/login/index";
                } else {
                    alert(data.msg);
                }
            }/*,
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                if (XMLHttpRequest.status != 999) {
                    layer.alert("服务器异常，请联系管理员", {
                        icon: 2,
                        title: "提示信息"
                    });
                }
            }*/
        });
    }

    $(document).keydown(function (event) {
        if (event.keyCode == 13) {
            loginExt();
        }
    });


</script>