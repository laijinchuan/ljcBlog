<%--
  Created by IntelliJ IDEA.
  User: l_computer
  Date: 2019/6/13
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link href="/plugin/layui/layui/css/layui.css" rel="stylesheet"/>
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("button").click(function () {
                $.ajax({
                    url:"insertGroup.action",
                    type:"post",
                    dataType:"json",
                    data:{
                    "groupName":$('input[name="groupName"]').val(),
                        "groupIcon":$('input[name="groupIcon"]').val(),
                        "remark":$('input[name="remark"]').val()
                },
                    success:function(data){
                        alert(data.code);
                        $("#message").html(data);
                    }
                    //注意：这里不能加下面这行，否则数据会传不到后台
                    //contentType:'application/json;charset=UTF-8',
                });
            });



        });

    </script>

    <title>新增分组</title>
</head>
<body>
<form class="layui-form">
    <br>
<div class="layui-form-item">
    <label class="layui-form-label">标题</label>
    <div class="layui-input-block">
        <input  id="groupName" type="text" name="groupName" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
    </div>
</div>
<div class="layui-form-item">
    <label class="layui-form-label">标签</label>
    <div class="layui-input-block">
        <input type="text" name="groupIcon" lay-verify="title" autocomplete="off" placeholder="请输入标签" class="layui-input">
    </div>
</div>
<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">描述</label>
    <div class="layui-input-block">
        <textarea placeholder="请输入内容" class="layui-textarea" name="remark"></textarea>
    </div>
</div>
</form>
</body>
</html>
