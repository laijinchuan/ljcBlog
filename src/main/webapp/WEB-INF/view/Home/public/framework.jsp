
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="max-age=72000"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="applicable-device" content="pc,mobile">
    <meta name="MobileOptimized" content="width"/>
    <meta name="HandheldFriendly" content="true"/>
    <link href="/plugin/layui/layui/css/layui.css" rel="stylesheet"/>
    <link href="/css/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/plugin/font-awesome/css/font-awesome.min.css">
    <title>这是首页</title>
</head>
<body >
<div id="page" class="site" style="transform: none;">
    <%@ include file="part/header.jsp" %>
    <div id="content" class="site-content" style="transform: none;">
        <rapid:block name="left"></rapid:block>
        <rapid:block name="right">
        </rapid:block>
    </div>
    <div class="clear"></div>
    <rapid:block name="link"></rapid:block>
    <%--<a href="/Aricle/insert">新增文章</a>
    <button data-method="setTop" class="layui-btn">新增分组</button>--%>
    <%@ include file="part/footer.jsp" %>
</div>
<script src="/plugin/layui/layui/layui.all.js"></script>
<script>
    layui.use(['element','layer'], function(){
        var element = layui.element,//导航的hover效果、二级菜单等功能，需要依赖element模块
             $ = layui.jquery,
         layer = layui.layer; //独立版的layer无需执行这一句;

        //监听导航点击
        element.on('nav(demo)', function(elem){
            console.log(elem)
            layer.msg(elem)
        });

    //触发事件
    var active = {
        setTop: function(){
            var that = this;
            //多窗口模式，层叠置顶
            layer.open({
                type: 2 //此处以iframe举例
                ,skin:'layui-layer-lan'
                ,title: ['请新增分组','font-size:18px']
                ,area: ['500px', '400px']
                ,anim:1
                ,maxmin: false
                ,offset: 'auto'
                ,content: 'enterGroup.action'
                ,btn: ['确定新增', '取消'] //只是为了演示
                ,yes: function(index){
                    var body=layer.getChildFrame('body', index);
                    var groupName=body.find('input[name="groupName"]').val();
                    var remark=body.find('textarea[name="remark"]').val();
                    var groupIcon=body.find('input[name="groupIcon"]').val();
                    $.ajax({
                        url:"insertGroup.action",
                        type:"post",
                        dataType:"json",
                        data:{
                            "groupName":groupName,
                            "groupIcon":groupIcon,
                            "remark":remark
                        },
                        success:function(data){
                            layer.closeAll();
                            layer.msg(data.message);
                        }
                    });

                }
                ,btn2: function(){
                    layer.closeAll();
                }

              /*  ,zIndex: layer.zIndex //重点1
                ,success: function(layero){
                    layer.setTop(layero); //重点2
                }*/
            });
        }}
       /* $('.layui-btn').on('click', function(){
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });*/
    });
</script>
</body>
</html>
