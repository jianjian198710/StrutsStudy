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
<!-- 通过s:append将两个集合拼成一个新的 -->
<s:append var="newList">
	<s:param value="#{'切尔西':'穆里尼奥','曼联':'莫耶斯','曼城':'佩莱格里尼','阿森纳':'温格'}"></s:param>
	<s:param value="#{'尤文','皇马'}"></s:param>
</s:append>
<table border="1" width="300"> 
<s:iterator value="#newList" id="ele" status="st">
	<tr <s:if test="#st.odd"> style="background-color:#bbbbbb"</s:if>>
		<td><s:property value="key"/></td>
		<td><s:property value="value"/></td>
	</tr>
</s:iterator>
</table>
</body>
</html>