<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>通联平台</title>
	<link href="/css/css.css" rel="stylesheet" type="text/css" />
      <script type="text/javascript" src="/js/jquery.js"></script>
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
    function login(){
        var loginame= $('#loginame').val();
        var loginpwd= $('#loginpwd').val();
        $.ajax({
            url: '/login/login',
            data:{
                "accountName":loginame,
                "accountPass":loginpwd
            },
            type: 'POST',
            datatype:"json",
            success: function (data) {
                if(data.status==0){
                    /*location.href="main.jsp";*/
                }
            }
        });
    }


</script>