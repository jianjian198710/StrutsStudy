<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<s:form action="regist">
	<s:fielderror></s:fielderror>
	<s:textfield name="name" label="name"></s:textfield>
	<s:textfield name="pass" label="pass"></s:textfield>
	<s:textfield name="age" label="age"></s:textfield>
	<s:textfield name="birth" label="birth"></s:textfield>
	<s:submit value="注册"/>
</s:form>
</body>
</html>