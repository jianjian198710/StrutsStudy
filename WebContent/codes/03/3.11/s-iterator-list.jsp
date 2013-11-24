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
<table border="1" width="200">
<s:iterator value="{'切尔西','曼联','曼城','阿森纳'}" id="name" status="st">
	<tr>
		<td><s:property value="#st.count"/>
		<s:property value="name"/>
	</td>
</s:iterator>
</table>
</body>
</html>