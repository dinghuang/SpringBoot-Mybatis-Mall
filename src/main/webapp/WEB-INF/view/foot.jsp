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

<title>�ײ�</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="<%=path%>/css/front/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" href="<%=path%>/css/front/style.css"
	type="text/css" media="all" />
<link href="<%=path%>/css/front/nav.css" rel="stylesheet"
	type="text/css" media="all" />

</head>
<body>
	<div class="footer">
		<div class="container">
			<div class="col-md-3 stores-grid">
				<div class="stores">
					<h3 style="color: gray">�����̳�</h3>
					<ul>
						<li>�ͷ�����: 400 820 8820</li>
						<li>����: +1 800 658 5784</li>
						<li>E-mail: info@buyshop.com</li>
						<span>
							<li class="drive">�̳�����ȫ��2050�������ṩ��Ӫ</li>
							<li>���ͷ���֧�ֻ������POS��</li>
							<li>ˢ�����ۺ����ŷ���</li>
						</span>
					</ul>
				</div>

			</div>
			<div class="col-md-3 blog">
				<div class="stores">
					<h3 style="color: gray">����ָ��</h3>
					<ul>
						<li>���ͷ�ʽ</li>
						<li>&nbsp;&nbsp;��������</li>
						<li>&nbsp;&nbsp;211��ʱ��</li>
						<li>&nbsp;</li>
						<li>&nbsp;</li>
						<li>֧����ʽ</li>
						<li>&nbsp;&nbsp;��������</li>
						<li>&nbsp;&nbsp;����֧��</li>
						<li>&nbsp;&nbsp;���ڸ���</li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 support">
				<h3 style="color: gray">��Ʒ֧��</h3>
				<div class="support-grids">
					<div class="support-left">
						<ul>
							<li><a>��������</a></li>
							<li><a>��������</a></li>
							<li><a>֧������</a></li>
							<li><a>�˿�άȨ</a></li>
							<li><a>������ѯ</a></li>
							<li><a>�ۺ����</a></li>
						</ul>
					</div>
					<div class="support-left support-right">
						<ul>
							<li><a>��������</a></li>
							<li><a>��ϵ����</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
