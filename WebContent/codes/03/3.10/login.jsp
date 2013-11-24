<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 使用s:text标签输出国际化消息 -->
<title><s:text name="loginPage"></s:text></title>
</head>
<body>
<s:form action="login">
	<!-- 在表单中使用key来指定国际化消息的信息(作为value的值用) -->
	<s:label key="user"/><s:textfield name="username"/><br/>
	<s:label key="pass"/><s:textfield name="password"/><br/>
	<s:submit key="login" value="登录"></s:submit>
</s:form>
</body>
</html>