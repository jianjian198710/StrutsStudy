<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SubsetDecider</title>
</head>
<body>
<s:bean var="mydecider" name="codes3_11.MyDecider"></s:bean>
<s:subset source="{'切尔西','曼联','曼城','阿森纳','AAA'}" decider="#mydecider" var="newList"/>
${pageScope.newList}
<s:iterator status="st" value="#newList">
	<s:property/>
</s:iterator>
</body>
</html>