<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>ע��ɹ�</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=path%>/css/register/login.css" rel="stylesheet"
	type="text/css" />
</head>

<body>
	<div id="login" class="bor">
		<h1>ע��ɹ�</h1>
		<a class="back" href="<%=path%>">������ҳ&gt;&gt;</a>
		<div class="theme">
			<p class="success">
				��ϲ����${tUserBean.tuser}
				ע��ɹ�!<br />
				<a href="personalServletUrl?task=myorder">�����Ա����</a>&nbsp;&nbsp;<a
					href="<%=path%>">������վ��ҳ</a>
			</p>
		</div>
		<br class="clear" />
	</div>
</body>
</html>
