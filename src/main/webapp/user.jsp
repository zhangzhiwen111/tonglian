<%@page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <title>用户管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/css/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
    <link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrap-select.min.css" />
    <link href="/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="/css/css1.css" rel="stylesheet" type="text/css" />
    <link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/layui/css/layui.css">

    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/defaults-zh_CN.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-table-zh-CN.min.js"></script>

    <script src="/layui/layui.js"></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="background-color: aliceblue;">
    <div class="lb3">
        <div class="lb2">
            <form id="form1" name="form1" method="post" action="">


                <span>登录名：</span>
                <input type="text" class="lb2_textfield" placeholder="请输入" id="accountName"  name="accountName" value=""/>
                <span>用户名：</span>
                <input type="text" class="lb2_textfield" placeholder="请输入" id="nickName"  name="nickName" value="" />
                <input type="button" class="lb2_button3" value="搜索" onclick="submitSearch();"/>
                <input type="button" class="lb2_button3" value="重置" onclick="clearSearch();"/>
                <input type="button" class="lb2_button6" value="+ 新增" onclick="addUser();" />
            </form>
        </div>

        <table id="table" <%--width="100%" cellpadding="0" cellspacing="0" class="table table-hover"--%>>

        </table>

    </div>

    <div class="modal fade bs-example-modal-lg" id="addUser" tabindex="-1" role="dialog" aria-labelledby="addUser">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="">新建用户</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" >

                        <div class="row">
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>登录名：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入登陆名" id="add_accountName" name="add_accountName"/>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>用户名：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入用户名" id="add_nickName" name="add_nickName"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="form-group col-md-6 col-lg-6">
                                <label class="col-sm-4 control-label"><span>*</span>用户类型：</label>
                                 <div class="col-sm-8 col-md-8">
                                     <select class="selectpicker" id="accountType" name="accountType">
                                         <option value="">请选择</option>
                                         <option value="0">普通用户</option>
                                         <option value="1">系统管理员</option>

                                     </select>
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
</body>
</html>
<script>
$(function(){
    pageInit();
});

function pageInit(){
    $("#table").bootstrapTable('destroy');
    $("#table").bootstrapTable({
        url:"/user/list",
        method:"post",
        queryParamsType:"",
        pagination : true,
        sidePagination: "server",
        contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
        pageList: [10, 25, 50, 100],
        pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
        pageSize: 10,
        queryParams : function(params) {
            var param={
                pageNumber:params.pageNumber,
                pageSize:params.pageSize,
                "accountName":$("#accountName").val(),
                "nickName":$("#nickName").val()
            }
            return param;
        },
        columns : [/*{
            checkbox : true,
            width : "30px",
        },*/{
            field : "id",
            title : "id",
            visible : false,
            align : 'center'
        },{
            field : "accountOrder",
            title : "序号",
            align : 'center'

        },{
            field : "accountName",
            title : "登录名",
            align : 'center'

        },{
            field : "nickName",
            title : "用户名",
            align : 'center'

        },{
            field : "accountType",
            title : "用户类型",
            align : 'center',
            formatter: function (value, rows, index) {
                if (rows.accountType == 0) {
                    return "普通用户";
                }else{
                    return "系统管理员";
                }
            }
        },{
            field : "opt",
            title : "操作",
            align : 'center',
            formatter: function (value, rows, index) {
                return '<a class="a_style" href="javascript:void(0);" onclick="editUser('+rows.accountId+' )">编辑</a>';
            }

        }],
        onLoadSuccess:function(){
            $("#loading").css('display','none');
        },
        onLoadError : function() {

        }
    });
}

    function submitSearch(){
        pageInit();
    }

    function clearSearch(){
        $("#accountName").val("");
        $("#nickName").val("");
        pageInit();
    }

    function addUser(){
       $("#addUser").modal("show");

    }

    function userSubmit() {
       $.ajax({
           url:"/user/save",
           type:"post",
           dataType:"post",
           data:{
               accountName:$("#accountName").val(),
               accountType:$("#accountType").val(),
               nickName:$("#nickName").val()
           },
           success:function (data) {
               if(data.status == "0"){
                   layer.alert("操作成功",{icon:1});
                   pageInit();
               }else{
                   layer.alert("操作失败",{icon:2});
               }

              // $("#addUser").modal();

           }
       })
    }
    function editUser(param){
        alert(param);
    }
</script>