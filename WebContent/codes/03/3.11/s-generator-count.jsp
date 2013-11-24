<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- 如果指定了var属性,就可以将生成的集合放入Struts2的Stack Context中,并设置成request范围的属性 -->
<s:generator separator="," val="'切尔西,曼联,阿森纳'" var="books" count="2">
<table border="1" width="300">
<s:iterator value="#books">
	<tr>
		<td><s:property/></td>
	</tr>
</s:iterator>
</table>
<table>
<c:forEach items="${requestScope.books}" var="book">
	<tr>
		<td>book</td>
	</tr>
</c:forEach>
</table>
</s:generator>
</body>
</html>