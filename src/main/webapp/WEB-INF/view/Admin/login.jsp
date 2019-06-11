<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2019/6/10
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post"   action="/insertUser.action">
   用户名: <input type="text" name="username">
    密码:<input type="password" name="password">
    邮箱:<input type="text" name="userEmail">
    <input type="submit"/>

</form>
</body>
</html>
