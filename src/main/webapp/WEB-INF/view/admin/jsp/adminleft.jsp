<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>��̨����ҳ��left</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="<%=path%>/css/admin/images/style.css" rel="stylesheet"
	type="text/css" />
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: "Microsoft Yahei", Verdana, Arial, Helvetica, sans-serif;
	background-color: #2286C2;
	margin-left: 5px;
	margin-top: 10px;
	margin-right: 5px;
}

.leftMenu {
	width: 228px;
	min-width: 220px;
	margin: 0px auto 0 auto;
}

.menu {
	border: #bdd7f2 1px solid;
	border-top: #0080c4 4px solid;
	border-bottom: #0080c4 4px solid;
	background: #f4f9ff url(images/leftdhbg.jpg) repeat-y right;
	margin-left: 0px;
}

.menu .ListTitle {
	border-bottom: 1px #98c9ee solid;
	display: block;
	text-align: center;
	height: 38px;
	line-height: 38px;
	cursor: pointer;
	width: 100%;
}

.ListTitlePanel {
	position: relative;
}

.leftbgbt {
	position: absolute;
	background: url(images/leftbgbt.jpg) no-repeat;
	width: 11px;
	height: 52px;
	left: -11px;
	top: -4px;
}

.leftbgbt2 {
	position: absolute;
	background: url(images/leftbgbt2.jpg) no-repeat;
	width: 11px;
	height: 48px;
	left: -11px;
	top: -1px;
}

.menuList {
	display: block;
	height: auto;
}

.menuList div {
	height: 28px;
	line-height: 24px;
	border-bottom: 1px #98c9ee dotted;
	text-align: center;
}

.menuList div a {
	display: block;
	background: #fff;
	line-height: 28px;
	height: 28px;
	text-align: center;
	color: #185697;
	text-decoration: none;
}

.menuList div a:hover {
	color: #f30;
	background: #0080c4;
	color: #fff;
}
</style>
<script type="text/javascript" src="<%=path%>/js/jquery-1.5.1.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var menuParent = $('.menu > .ListTitlePanel > div');//��ȡmenu�µĸ����DIV
				var menuList = $('.menuList');
				$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(
						function(i) {//��ȡ�б�Ĵ���Ⲣ����
							$(this).click(function() {
								if ($(menuList[i]).css('display') == 'none') {
									$(menuList[i]).slideDown(300);
								} else {
									$(menuList[i]).slideUp(300);
								}
							});
						});
			});
</script>
</head>

<body>
	<table width="90%" border="0" cellspacing="0" cellpadding="0"
		align="left" >
		<tr>
			<td width="8" height="8"><img
				src="<%=path%>/css/admin/images/index1_23.gif" width="8" height="29" /></td>
			<td width="99%" background="<%=path%>/css/admin/images/index1_24.gif"></td>
			<td width="8" height="8"><img
				src="<%=path%>/css/admin/images/index1_26.gif" width="8" height="29" /></td>
		</tr>
		<tr>
			<td background="<%=path%>/css/admin/images/index1_45.gif"></td>
			<td bgcolor="#FFFFFF"
				style="padding:0 2px 0 2px; vertical-align:top;height:500px;">
				<div class="leftMenu">
					<div class="menu">
						<div class="menuParent">
							<div class="ListTitlePanel">
								<div class="ListTitle">
									<strong>��Ʒ����</strong>
									<div class="leftbgbt"></div>
								</div>
							</div>
							<div class="menuList">
								<div>
									<a href="<%=path%>/bigMcServletUrl" target="rightFrame">��Ʒ�������</a>
								</div>
								<div>
									<a href="<%=path%>/smallMcServletUrl" target="rightFrame">��ƷС�����</a>
								</div>
								<div>
									<a href="<%=path%>/mcServletUrl" target="rightFrame">��Ʒ��Ϣ����</a>
								</div>
							</div>
						</div>
						<c:if test="${tUserBean.trights=='0'}">
							<div class="menuParent">
								<div class="ListTitlePanel">
									<div class="ListTitle">
										<strong>�û���Ϣ����</strong>
										<div class="leftbgbt2"></div>
									</div>
								</div>
								<div class="menuList">
									<div>
										<a href="<%=path%>/tUserServletUrl?task=selectUser"
											target="rightFrame">ע���û�����</a>
									</div>
									<div>
										<a href="<%=path%>/tUserServletUrl?task=selectAdmin"
											target="rightFrame">ϵͳ�û�����</a>
									</div>
									<div>
										<a href="<%=path%>/tUserServletUrl?task=resetPassword"
											target="rightFrame">�û���������</a>
									</div>
								</div>
							</div>
						</c:if>
						<div class="menuParent">
							<div class="ListTitlePanel">
								<div class="ListTitle">
									<strong>������Ϣ����</strong>
									<div class="leftbgbt2"></div>
								</div>
							</div>
							<div class="menuList">
								<div>
									<a href="<%=path%>/orderServletUrl" target="rightFrame">��������</a>
								</div>
								<div>
									<a href="<%=path%>/orderServletUrl?ostatus=0" target="rightFrame">�������</a>
								</div>
							</div>
						</div>
						<div class="menuParent">
							<div class="ListTitlePanel">
								<div class="ListTitle">
									<strong>ǰ̨ҳ�����</strong>
									<div class="leftbgbt2"></div>
								</div>
							</div>
							<div class="menuList">
								<div>
									<a href="<%=path%>/rollingServletUrl?task=update" target="rightFrame">����ͼƬ����</a>
								</div>
							</div>
						</div>
						
						
						<div class="menuParent">
							<div class="ListTitlePanel">
								<div class="ListTitle">
									<strong>�������Ϲ���</strong>
									<div class="leftbgbt2"></div>
								</div>
							</div>
							<div class="menuList">
								<div>
									<a href="<%=path%>/tUserServletUrl?task=update"
										target="rightFrame">���������޸�</a>
								</div>
								<div>
									<a href="<%=path%>/tUserServletUrl?task=updatePassword"
										target="rightFrame">�����޸�</a>
								</div>
							</div>
							
						</div>
					</div>
				</div>

			</td>
			<td background="<%=path%>/css/admin/images/index1_47.gif"></td>
		</tr>
		<tr>
			<td width="8" height="8"><img
				src="<%=path%>/css/admin/images/index1_91.gif" width="8" height="8" /></td>
			<td background="<%=path%>/css/admin/images/index1_92.gif"></td>
			<td width="8" height="8"><img
				src="<%=path%>/css/admin/images/index1_93.gif" width="8" height="8" /></td>
		</tr>
	</table>
</body>
</html>
