
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>新增文章</title>
    <link href="/plugin/layui/layui/css/layui.css" rel="stylesheet"/>
    <script src="/plugin/layui/layui/layui.all.js"></script>
</head>
<body>
<form  class="layui-form"  method="post" action="/Aricle/insertSubmit">
    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">内容 <span style="color: #FF5722; ">*</span></label>
    <div class="layui-input-block">
        <textarea  class="layui-textarea layui-hide"  lay-verify="context" name="context" id="context1"></textarea>
    </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">分类</label>
        <div class="layui-input-block">
    <select name="groupId">
        <c:forEach items="${aircleGroups}" var="c">
            <option value="${c.fid}">${c.groupName}</option>
        </c:forEach>
    </select>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

</body>

<script>
    layui.use(['form', 'layedit'], function() {
        var form = layui.form
            , layedit = layui.layedit;
        form.render();
        var index=layedit.build('context1', {
            height: 350
        });//建立编辑器

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length <= 0) {
                    return '标题不能为空';
                }
            }

            , context: function () {
                var context2=layedit.getText(index);
                if (context2.length <= 0) {
                    return '正文不能为空';
                }
            }
        });
        //监听提交
       /* form.on('submit(demo1)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });*/


        form.on('submit(demo1)', function (data) {
            return true;
        });
    });
</script>
</html>

