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
<!-- 通过s:append将两个集合拼成一个新的集合 -->
<s:append var="newList">
	<s:param value="{'切尔西','曼联','曼城','阿森纳'}"></s:param>
	<s:param value="{'尤文','皇马'}"></s:param>
</s:append>
<table border="1" width="300"> 
<s:iterator value="#newList" id="ele" status="st">
	<tr>
		<td><s:property value="#st.count"/>
		<s:property value="ele"/>
	</td>
</s:iterator>
</table>
</body>
</html>