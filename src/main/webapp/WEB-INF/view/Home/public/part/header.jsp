<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="layui-nav">
    <c:forEach items="${aircleGroups}" var="a">
        <li class="layui-nav-item"><a href="/queryByGroup?groupId=${a.fid}">${a.groupName}</a></li>
    </c:forEach>
</ul>
<rapid:block name="breadcrumb"></rapid:block>


