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

<title>�����޸�</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=path%>/css/personal/main.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="<%=path%>/css/personal/ec.css" rel="stylesheet"
	type="text/css" media="all" />
</head>


<script type="text/javascript">
	function checkOldPwd() {
		var oldPwd = pwdForm.oldPwd;
		var span = document.getElementById("oldPwdSpan");
		if (oldPwd.value != "${tUserBean.tpwd}") {
			span.innerHTML = "&nbsp;*ԭ�����������";
			return false;
		}
		return true;

	}

	function checkNewPwd() {
		var newPwd = pwdForm.newPwd;
		var span = document.getElementById("newPwdSpan");
		var regex = /^\w{3,20}$/;
		if (newPwd.value == '') {
			newPwd.focus();
			span.innerHTML = "&nbsp;*���������";
			return false;
		} else if (!regex.test(newPwd.value)) {
			newPwd.focus();
			span.innerHTML = "&nbsp;*���볤�Ȳ��Ϸ���������3���ַ�����";
			return false;
		} else {
			return true;
		}

	}
	function checkNewPwd2() {
		var newPwd2 = pwdForm.newPwd2;
		var span = document.getElementById("newPwd2Span");
		var newPwd = pwdForm.newPwd;
		if (newPwd2.value == newPwd.value) {
			return true;
		} else {
			newPwd2.focus();
			span.innerHTML = "&nbsp;*�����벻һ��";
			return false;
		}
	}
	function checkForm() {
		return checkOldPwd() && checkNewPwd() && checkNewPwd2();
	}
</script>
<jsp:include page="../../top.jsp"></jsp:include>
<body class="wide">

	<div class="fr u-4-5" style="position: absolute;top:190px;left:25%;font-family: Microsoft YaHei;font-size: 15px">
		<div class="myHome-unpay-record">
			<form action="<%=path%>/personalServletUrl?task=changepwdSubmit"
				method="post" onSubmit="return checkForm()" name="pwdForm">

				<div style="line-height: 80px">&nbsp;</div>
				<div style="margin-left:200px">
					&nbsp;&nbsp;&nbsp;ԭ���룺<input name="oldPwd" type="password" value="" /><span
						id="oldPwdSpan"></span>
				</div>
				<div>&nbsp;</div>
				<div style="margin-left:200px">
					&nbsp;&nbsp;&nbsp;�����룺<input name="newPwd" type="password" value="" /><span
						id="newPwdSpan"></span>
				</div>
				<div>&nbsp;</div>
				<div style="margin-left:200px">
					ȷ�����룺<input name="newPwd2" type="password" value="" /><span
						id="newPwd2Span"></span>
				</div>
				<div>&nbsp;</div>
				<div style="margin-left:230px">
					<input type="submit" value="ȷ���޸�" style="width: 80px" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="ȡ��" onclick="history.back()"
						style="width: 80px" />
				</div>
			</form>
		</div>
	</div>




	<div class="fl u-1-5" style="position: absolute;top:180px;left:8%">
		<!--��߲˵� -->
		<div class="mc-menu-area">
			<div class="h">
				<a href="<%=path%>" class="button-go-mc"><span>�ҵ��̳�</span></a>
			</div>
			<div class="b">
				<ul>
					<li>
						<h3>
							<span>��������</span>
						</h3>
						<ol>
							<li id="li-order"><a
								href="<%=path%>/personalServletUrl?task=myorder"><span>�ҵĶ���</span></a></li>
							<li id="li-exchange"><a
								href="<%=path%>/personalServletUrl?task=myorder&ostatus=1"><span>����˵Ķ���</span></a></li>
							<li id="li-groupBuyRecord"><a
								href="<%=path%>/personalServletUrl?task=myorder&ostatus=0"><span>δ��˵Ķ���</span></a></li>
						</ol>
					</li>
					<li>
						<h3>
							<span>��������</span>
						</h3>
						<ol>
							<li id="li-notification"><a
								href="<%=path%>/personalServletUrl?task=changepwd"><span>�����޸�</span></a></li>
							<li id="li-point"><a href="<%=path%>/personalServletUrl?task=data"><span>�ҵ�����</span></a></li>
						</ol>
					</li>
					<li>
						<h3>
							<span>��������</span>
						</h3>
						<ol>
							<li id="li-msg"><a href="personalServletUrl?task=exit"><span>�˳�</span></a></li>
						</ol>
					</li>
				</ul>
			</div>
			<div class="f"></div>
		</div>
	</div>

</body>
</html>
