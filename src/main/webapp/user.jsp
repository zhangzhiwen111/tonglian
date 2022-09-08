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
    <link href="/css/bootstrap-select.min.css" rel="stylesheet"/>
    <link href="/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="/css/css1.css" rel="stylesheet" type="text/css" />
    <link href="/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/css/bootstrapValidator.css"/>
    <link rel="stylesheet" href="/layui/css/layui.css">

    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/defaults-zh_CN.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript" src="/js/bootstrapValidator.js"></script>
    <script src="/layui/layui.js"></script>
    <%--<script type="text/javascript" src="/js/layer.js"></script>--%>

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

        <table id="table">

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
                    <form id="newform" class="form-horizontal" >

                        <div class="row">
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>登录名：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入登陆名" id="add_accountName" name="add_accountName"/>
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>用户名：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入用户名" id="add_nickName" name="add_nickName"/>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>设置密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入密码" id="add_accountPass" name="add_accountPass"/>
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>确认密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入用户名" id="add_accountPass1" name="add_accountPass1"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="form-group col-md-6 col-lg-6">
                                <label class="col-sm-4 control-label"><span>*</span>用户类型：</label>
                                 <div class="col-sm-8 col-md-8">
                                     <select class="selectpicker" id="add_accountType" name="add_accountType">
                                         <option value="">请选择</option>
                                         <option value="0">普通用户</option>
                                         <option value="1">系统管理员</option>

                                     </select>
                                 </div>

                            </div>
                            <div class="form-group col-md-6 col-lg-6">
                                <label class="col-sm-4 control-label"><span>*</span>单位：</label>
                                <div class="col-sm-8 col-md-8">
                                    <select class="selectpicker" id="add_unitId" name="add_unitId">
                                        <option value="">请选择</option>
                                        <option value="unit1">各民主党派</option>
                                        <option value="n1">民革市委</option>
                                        <option value="n2">民盟市委</option>


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
   <%-- 编辑--%>
    <div class="modal fade bs-example-modal-lg" id="editUser" tabindex="-1" role="dialog" aria-labelledby="editUser">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" >编辑用户</h4>
                </div>
                <div class="modal-body">
                    <form id="editform" class="form-horizontal" >
                        <input type="hidden" id="edit_accountId" >
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>登录名：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入登陆名" id="edit_accountName" name="edit_accountName"/>
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>用户名：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入用户名" id="edit_nickName" name="edit_nickName"/>
                                </div>
                            </div>

                        </div>

                       <%-- <div class="row">
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>设置密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入密码" id="edit_accountPass" name="edit_accountPass"/>
                                </div>
                            </div>
                            <div class="form-group col-md-6 col-lg-6 ">
                                <label class="col-sm-4 control-label"><span>*</span>确认密码：</label>
                                <div class="col-sm-8 col-md-8">
                                    <input type="text" class="form-control" placeholder="请输入用户名" id="edit_accountPass1" name="edit_accountPass1"/>
                                </div>
                            </div>
                        </div>--%>

                        <div class="row">

                            <div class="form-group col-md-6 col-lg-6">
                                <label class="col-sm-4 control-label"><span>*</span>用户类型：</label>
                                <div class="col-sm-8 col-md-8">
                                    <select class="selectpicker" id="edit_accountType" name="edit_accountType">
                                        <option value="">请选择</option>
                                        <option value="0">普通用户</option>
                                        <option value="1">系统管理员</option>

                                    </select>
                                </div>

                            </div>
                            <div class="form-group col-md-6 col-lg-6">
                                <label class="col-sm-4 control-label"><span>*</span>单位：</label>
                                <div class="col-sm-8 col-md-8">
                                    <select class="selectpicker" id="edit_unitId" name="edit_unitId">
                                        <option value="">请选择</option>
                                        <option value="unit1">各民主党派</option>
                                        <option value="n1">民革市委</option>
                                        <option value="n2">民盟市委</option>


                                    </select>
                                </div>

                            </div>
                        </div>

                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="editUserSubmit()">确定</button>
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
    formValidator();
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
            field : "accountId",
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
            field : "unitName",
            title : "所属单位",
            align : 'center'
        },{
            field : "opt",
            title : "操作",
            align : 'center',
            formatter: function (value, rows, index) {
                var accountId = rows.accountId;
                return '<a class="a_style" href="javascript:void(0);" onclick="editUser(\''+ accountId+'\')">编辑</a> | ' +
                    '<a class="a_style" href="javascript:void(0);" onclick="delUser(\''+ accountId+'\')">删除</a>';
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

    //新增弹框
    function addUser(){
       $("#addUser").modal("show");

    }

    //新增提交
    function userSubmit() {
       $.ajax({
           url:"/user/save",
           type:"post",
           dataType:"json",
           data:{
               accountName:$("#add_accountName").val(),
               accountType:$("#add_accountType").val(),
               nickName:$("#add_nickName").val(),
               accountPass:$("#add_accountPass").val(),
               unitId:$("#add_unitId").val()
           },
           success : function (data) {
               layer.alert("测试");
               if(data.status == "0"){
                   layer.alert("操作成功",{icon:1});
                   $("#addUser").modal("hide");
                   pageInit();
               }else{
                   layer.alert("操作失败",{icon:2});
               }
           }
       })
    }

    //编辑弹框
    function editUser(param){
        $.ajax({
            url: "/user/selUserById",
            type: "post",
            dataType: "json",
            data: {

                accountId: param
            },
            success : function (data) {
                if(data.status == "0"){
                    $("#edit_accountId").val(data.data.accountId);
                    $("#edit_accountName").val(data.data.accountName);
                    $("#edit_accountType").val(data.data.accountType);
                    $("#edit_nickName").val(data.data.nickName);
                    $("#edit_unitId").val(data.data.unitId);
                   /* $("#edit_windowType option").each( function (i, n) {
                        if (n.value == data.data.typeName) {
                            n.selected = true;
                        }
                    });
                    $(".selectpicker").selectpicker('refresh');*/
                    $("#editUser").modal("show");
                }else{

                }
            }

        })

    }

//编辑提交
function editUserSubmit(){
    $.ajax({
        url:"/user/edit",
        type:"post",
        dataType:"json",
        data:{
            accountId : $("#edit_accountId").val(),
            accountName : $("#edit_accountName").val(),
            accountType : $("#edit_accountType").val(),
            nickName : $("#edit_nickName").val(),
            accountPass : $("#edit_accountPass").val(),
            unitId : $("#edit_unitId").val()
        },
        success : function(data){
            if(data.status == "0"){
                layer.alert("操作成功！",{icon:1});
                $("#editUser").modal("hide");
                pageInit();

            }else{
                layer.alert("操作失败！",{icon:2});
            }
        }

    })
}


function delUser(param) {
    console.log(11);
    layer.confirm('确定删除该用户吗？',{icon: 3},
    function (index, layero) {
        $.ajax({
            url:"/user/del",
            type:"post",
            dataType:"json",
            data:{accountId:param},
            success: function (data) {
                if(data.status=="0"){
                    layer.alert("删除成功！",{icon:1});
                    pageInit();
                }else{
                    layer.alert("删除失败！",{icon:2});
                }
            }
        })
    })
}




//新增校验
function formValidator(){
    $('#newform').bootstrapValidator({
        message: '输入有误',//通用的验证失败消息
        feedbackIcons: {//根据验证结果显示的各种图标
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            add_accountName: {
                validators: {
                    notEmpty: {
                        message: '登录名不能为空'
                    } ,
                    stringLength: {
                        max:50,
                        message: '窗口名称长度必须小于50字符'
                    }
                }
            },
            add_nickName: {
                validators: {
                    notEmpty: {
                        message: '用户名不能为空'
                    }
                }
            },
            add_accountPass: {
                validators: {
                    notEmpty: {
                        message: '密码不能为空'
                    }
                }
            },
            add_accountType: {
                validators: {
                    notEmpty: {
                        message: '用户类型不能为空'
                    }
                }
            }
        }
    });
}
</script>