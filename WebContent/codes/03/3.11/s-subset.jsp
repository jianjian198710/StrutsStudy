<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Subset</title>
</head>
<body>
<!-- 选取第二个到第四个作为子集 -->
<s:subset source="{'切尔西','曼联','曼城','阿森纳'}" start="1" count="3">
<s:iterator status="st">
	<s:property/>
</s:iterator>
</s:subset>
</body>
</html>