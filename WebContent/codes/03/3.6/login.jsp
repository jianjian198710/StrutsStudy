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
<s:form action="login">
	<s:textfield name="username" key="user"></s:textfield>
	<s:textfield name="password" key="pass"></s:textfield>
	<s:submit key="login"></s:submit>
	<input type="submit" value="注册" onclick="regist();"/>
</s:form>
<script type="text/javascript">
function regist(){
	targetForm = document.forms[0];
	//指定Action的某个方法来处理 action="ActionName!methodName"
	targetForm.action="regist";
}
</script>
</body>
</html>