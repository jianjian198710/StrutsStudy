<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Action</title>
</head>
<body>
下面调用第一个Action,并将结果包含到本页面中
<s:action name="tag1" executeResult="true" namespace="/codes/03/3.11/action"></s:action><br/>
<hr/>
下面调用第二个Action,并将结果包含到本页面中.<br/>
但阻止本页面请求参数传入Action.<br/>
<s:action name="tag2" executeResult="true" ignoreContextParams="false" namespace="/codes/03/3.11/action"></s:action><br/>
<hr/>
下面调用第三个Action,且不将结果包含到本页面中<br/>
<s:action name="tag2" executeResult="false" namespace="/codes/03/3.11/action"></s:action>
本页面是否可访问? <s:property value="author"/>
</body>
</html>