<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Include</title>
</head>
<body>
<h2>使用s:include标签来包含目标页面</h2>
<s:include value="included-file.jsp"></s:include>
<s:include value="included-file.jsp">
	<s:param name="author" value="'jianjian'"></s:param>
</s:include>
</body>
</html>