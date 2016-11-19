<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/19
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>校验窗体</h1>
    <form:form action="reg" method="post" commandName="user">
        用户名：<form:input path="username"/>
        <form:errors path="username"/><br/>
        密码：<form:input path="password"/>
        <form:errors path="password"/><br/>

        邮箱：<form:input path="email"/>
        <form:errors path="email"/><br/>


        年龄：<input type="number" name="age" value="10"/>
        <form:errors path="age"/>

        <input type="submit" value="Submit" />
    </form:form>
</body>
</html>
