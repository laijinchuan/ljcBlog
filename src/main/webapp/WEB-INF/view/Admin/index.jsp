<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2019/7/22
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台首页</title>
    <link href="/plugin/layui/layui/css/layui.css" rel="stylesheet"/>
</head>
<body>
<button type="button" class="layui-btn layui-btn-radius"><a href="/Aricle/insert">新增文章</a></button>
<button data-method="setTop"  type="button" class="layui-btn layui-btn-normal layui-btn-radius">新增分组</button>
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
                    ,offset: '100px'
                    ,content: '/enterGroup.action'
                    ,btn: ['确定新增', '取消'] //只是为了演示
                    ,yes: function(index){
                        var body=layer.getChildFrame('body', index);
                        var groupName=body.find('input[name="groupName"]').val();
                        var remark=body.find('textarea[name="remark"]').val();
                        var groupIcon=body.find('input[name="groupIcon"]').val();
                        if(groupName==null||groupName.length==0){
                            layer.msg("名称不能为空");
                        }
                        $.ajax({
                            url:"/insertGroup.action",
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

                      ,zIndex: layer.zIndex //重点1
                      ,success: function(layero){
                          layer.setTop(layero); //重点2
                      }
                });
            }}
         $('.layui-btn').on('click', function(){
             var othis = $(this), method = othis.data('method');
             active[method] ? active[method].call(this, othis) : '';
         });
    });
</script>
</body>
</html>
