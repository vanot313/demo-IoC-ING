<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="msg" type="dao.MessageDao" scope="request"/>
<html>
<head>
	<title>登陆界面</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
		<form action="login" method="post">
			<table align="center">
				<tr><td align="center">用户名:<input type="text" name="id">
				</td></tr>
				<tr><td align="center">密     码:<input type="password" name="password">
				</td></tr>
				<tr><td><input type="submit" value="登陆" id="textfield" align="center">
				</td></tr>
			</table>
		</form>
		${msg.msg}


</body>
</html>
