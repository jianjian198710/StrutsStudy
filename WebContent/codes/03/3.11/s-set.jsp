<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Set</title>
</head>
<body>
<h2>使用s:set设置一个新变量</h2>
<s:bean name="codes3_11.Person" var="p">
	<s:param name="name" value="'Lampard'"></s:param>
	<s:param name="age" value="35"></s:param>
</s:bean>
将Stack Context中的p值放入默认范围(action)内<br/>
<s:set value="#p" name="xxx"/>
Stack Context内xxx对象的name属性:<s:property value="#xxx.name"/><br/>
Stack Context内xxx对象的age属性:<s:property value="#xxx.age"/><br/>
request范围内的xxx对象的name属性:${requestScope.xxx.name}<br/>
request范围内的xxx对象的age属性:${requestScope.xxx.age}<br/>

将Stack Context中的p值放入application范围内<br/>
<s:set value="#p" name="xxx" scope="application"/>
application范围内的xxx对象的name属性:${application.xxx.name}<br/>
application范围内的xxx对象的age属性:${application.xxx.age}<br/>

将Stack Context中的p值放入session范围内<br/>
<s:set value="#p" name="xxx" scope="session"/>
application范围内的xxx对象的name属性:${session.xxx.name}<br/>
application范围内的xxx对象的age属性:${session.xxx.age}<br/>
</body>
</html>