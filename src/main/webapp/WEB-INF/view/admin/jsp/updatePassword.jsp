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
<link href="<%=path%>/admin/jsp/images/style.css" rel="stylesheet"
	type="text/css" />
<style type="text/css">
body {
	margin-left: 5px;
	margin-top: 10px;
	margin-right: 5px;
	margin-bottom: 0px;
	font-family: "����";
	font-size: 12px;
	color: #333333;
	background-color: #2286C2;
}
</style>
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
<body>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="8" height="8"><img
				src="<%=path%>/admin/jsp/images/index1_28.gif" width="8" height="39" /></td>
			<td width="99%" background="<%=path%>/admin/jsp/images/index1_40.gif">
				<table border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<table width="120" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_29.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_30.gif"><a
										href="<%=path%>/mcServletUrl" class="font2"><strong>��Ʒ��Ϣ����</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_33.gif" width="5"
										height="39" /></td>
								</tr>
							</table>
						</td>
						<td>
							<table width="120" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_29.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_30.gif"><a
										class="font2" href="<%=path%>/tUserServletUrl?task=selectUser"><strong>ע���û�����</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_33.gif" width="5"
										height="39" /></td>
								</tr>
							</table>
						</td>
						<td>
							<table width="120" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_29.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_30.gif"><a
										href="<%=path%>/orderServletUrl" class="font2"><strong>��������</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_33.gif" width="5"
										height="39" /></td>
								</tr>
							</table>
						</td>
						<td>
							<table width="120" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_29.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_30.gif"><a
										href="<%=path%>/rollingServletUrl?task=update" class="font2"><strong>����ͼƬ����</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_33.gif" width="5"
										height="39" /></td>
								</tr>
							</table>
						</td>
						<td>
							<table width="120" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_35.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_36.gif"><a
										class="font3"><strong>���������޸�</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_38.gif" width="5"
										height="39" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
			<td width="8" height="8"><img
				src="<%=path%>/admin/jsp/images/index1_43.gif" width="8" height="39" /></td>
		</tr>
		<tr>
			<td background="<%=path%>/admin/jsp/images/index1_45.gif"></td>
			<td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
				<table width="100%" border="0" cellspacing="10" cellpadding="0">
					<tr>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="1"
								bgcolor="#C4E7FB">
								<tr>
									<td>
										<table width="100%" border="0" cellpadding="0" cellspacing="5"
											bgcolor="#FFFFFF">
											<tr>
												<td>&nbsp;<a href="<%=path%>/admin/jsp/adminright.jsp"
													class="font1">��ҳ</a> &gt; <a class="font1">�������Ϲ���</a> &gt;
													<a class="font1"><strong>�����޸�</strong></a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<form
								action="<%=path%>/tUserServletUrl?task=updatePasswordSubmit"
								method="post" onSubmit="return checkForm()" name="pwdForm">
								<table width="85%" border="0" cellspacing="0" align="center">
									<tr>
										<td>
											<div style="line-height: 80px">&nbsp;</div>
											<div style="margin-left:260px">
												&nbsp;&nbsp;&nbsp;ԭ���룺<input name="oldPwd" type="password"
													value="" /><span id="oldPwdSpan"></span>
											</div>
											<div>&nbsp;</div>
											<div style="margin-left:260px">
												&nbsp;&nbsp;&nbsp;�����룺<input name="newPwd" type="password"
													value="" /><span id="newPwdSpan"></span>
											</div>
											<div>&nbsp;</div>
											<div style="margin-left:260px">
												&nbsp;ȷ�����룺<input name="newPwd2" type="password" value="" /><span
													id="newPwd2Span"></span>
											</div>
											<div>&nbsp;</div>
											<div style="margin-left:290px">
												<input type="submit" value="ȷ���޸�" style="width: 80px" />&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="javascript:history.back(0);"><input
													type="button" value="ȡ��" style="width: 80px" /></a>
											</div>
										</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
				</table>
			</td>
			<td background="<%=path%>/admin/jsp/images/index1_47.gif"></td>
		</tr>
		<tr>
			<td width="8" height="8"><img
				src="<%=path%>/admin/jsp/images/index1_91.gif" width="8" height="8" /></td>
			<td background="<%=path%>/admin/jsp/images/index1_92.gif"></td>
			<td width="8" height="8"><img
				src="<%=path%>/admin/jsp/images/index1_93.gif" width="8" height="8" /></td>
		</tr>
	</table>
</body>
</html>
