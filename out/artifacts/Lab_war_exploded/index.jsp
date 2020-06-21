<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<jsp:useBean id="user" type="dao.UserDao" scope="request"/>



<html>
<head>
    <title>DARK SOULS III</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<head><title>用户界面</title>
</head>

<body>
welcome.${user.id}
</body>

</html>
