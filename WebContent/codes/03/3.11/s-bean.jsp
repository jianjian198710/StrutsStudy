<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Bean</title>
</head>
<body>
<s:bean name="codes3_11.Person">
	<s:param name="name" value="'Lampard'"></s:param>
	<s:param name="age" value="35"></s:param>
	<!-- 因为在bean标签内,Person实例位于ValueStack的栈顶,可以直接访问 -->
	Person实例的name为:<s:property value="name"/><br/>
	Person实例的age为:<s:property value="age"/>
</s:bean>
</body>
</html>