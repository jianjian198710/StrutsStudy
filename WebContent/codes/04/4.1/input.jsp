<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
</head>
<body>
<form action="login">
	<!-- 将name和password直接作为User的属性值 -->
	<s:textfield name="user.name" label="用户名"></s:textfield>
	<s:textfield name="user.password" label="密码"></s:textfield>
<table>
	<tr>
		<td colspan="2"><s:submit value="转换"/><s:reset value="重填"/></td>
	</tr>
</table>
</form>
</body>
</html>