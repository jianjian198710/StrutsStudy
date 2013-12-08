<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Push</title>
</head>
<body>
<h2>使用s:push来将某个值放入ValueStack的桟顶</h2>
<s:bean name="codes3_11.Person" var="p">
	<s:param name="name" value="'Lampard'"></s:param>
	<s:param name="age" value="35"></s:param>
</s:bean>
<s:push value="#p">
	ValueStack桟顶对象的name属性:<s:property value="name"/><br/>
	ValueStack桟顶对象的age属性:<s:property value="age"/>
</s:push>
</body>
</html>