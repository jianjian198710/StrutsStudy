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
<!-- s:generator标签将指定字符串按指定分隔符分隔成多个子字符串,使用iterator迭代输出 -->
<s:generator separator="," val="'切尔西,曼联,阿森纳'">
<s:iterator status="st">
	<s:property/>
</s:iterator>
</s:generator>
</body>
</html>