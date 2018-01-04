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

<title>����û�</title>

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
<script src="<%=path %>/js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript">
	function checkTUser() {
		var tuser = userForm.tuser;
		var span = document.getElementById("tuserSpan");
		var regex = /^\w{2,15}$/;
		if (tuser.value == '') {
			tuser.focus();
			span.innerHTML = "&nbsp;*�û�������";
			return false;
		} else if (!regex.test(tuser.value)) {
			tuser.focus();
			span.innerHTML = "&nbsp;*��ʵ�������Ϸ���������2���ַ�����";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkTpwd() {
		var tpwd = userForm.tpwd;
		var span = document.getElementById("tpwdSpan");
		var regex = /^\w{3,20}$/;
		if (tpwd.value == '') {
			tpwd.focus();
			span.innerHTML = "&nbsp;*�������";
			return false;
		} else if (!regex.test(tpwd.value)) {
			tpwd.focus();
			span.innerHTML = "&nbsp;*���볤�Ȳ��Ϸ���������3���ַ�����";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}

	}
	function checkTpwd2() {
		var tpwd2 = userForm.tpwd2;
		var span = document.getElementById("tpwd2Span");
		var tpwd = userForm.tpwd;
		if (tpwd2.value == tpwd.value) {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		} else {
			tpwd2.focus();
			span.innerHTML = "&nbsp;*�����벻һ��";
			return false;
		}
	}

	function checkTname() {
		var tname = userForm.tname;
		var span = document.getElementById("tnameSpan");
		var regex = /^\w{2,}$/;
		if (tname.value == '') {
			tname.focus();
			span.innerHTML = "&nbsp;*��ʵ��������";
			return false;
		} else if (!regex.test(tname.value)) {
			tname.focus();
			span.innerHTML = "&nbsp;*��ʵ�������Ϸ���������2���ַ�����";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkTbirth() {
		var tbirth = userForm.tbirth;
		var span = document.getElementById("tbirthSpan");
		if (tbirth.value == '') {
			tbirth.focus();
			span.innerHTML = "&nbsp;*�������ڱ���";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkTemail() {
		var temail = userForm.temail;
		var span = document.getElementById("temailSpan");
		if (temail.value == '') {
			temail.focus();
			span.innerHTML = "&nbsp;*�����������";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkTphone() {
		var tphone = userForm.tphone;
		var span = document.getElementById("tphoneSpan");
		var regex = /^[0-9]*$/;
		if (tphone.value == '') {
			tphone.focus();
			span.innerHTML = "&nbsp;*�绰�������";
			return false;
		} else if (!regex.test(tphone.value)) {
			tphone.focus();
			span.innerHTML = "&nbsp;*�绰���벻�Ϸ�������ȫΪ����";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkTaddress() {
		var taddress = userForm.taddress;
		var span = document.getElementById("taddressSpan");
		if (taddress.value == '') {
			taddress.focus();
			span.innerHTML = "&nbsp;*��ַ����";
			return false;
		} else if (taddress.value.length<=2||taddress.value.length>30) {
			taddress.focus();
			span.innerHTML = "&nbsp;*��ַ���Ȳ��Ϸ�";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkTcode() {
		var tcode = userForm.tcode;
		var span = document.getElementById("tcodeSpan");
		var regex = /^\d{6}$$/;
		if (tcode.value == '') {
			tcode.focus();
			span.innerHTML = "&nbsp;*�ʱ����";
			return false;
		} else if (!regex.test(tcode.value)) {
			tcode.focus();
			span.innerHTML = "&nbsp;*�ʱ಻�Ϸ�,������6Ϊ����";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkForm() {
		return checkTUser() && checkTpwd() && checkTpwd2() && checkTname()
				&& checkTbirth() && checkTemail() && checkTphone()
				&& checkTaddress() && checkTcode();
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
										src="<%=path%>/admin/jsp/images/index1_35.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_36.gif"><a
										class="font3"><strong>ע���û�����</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_38.gif" width="5"
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
										src="<%=path%>/admin/jsp/images/index1_29.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_30.gif"><a
										href="<%=path%>/tUserServletUrl?task=update" class="font2"><strong>���������޸�</strong></a></td>
									<td width="5"><img
										src="<%=path%>/admin/jsp/images/index1_33.gif" width="5"
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
													class="font1">��ҳ</a> &gt; <a class="font1">�û���Ϣ����</a> &gt;
													<a
													href="<%=path%>/tUserServletUrl?task=${trights==2?'selectUser':'selectAdmin'}"
													class="font1">${trights==2? 'ע���û�����':'ϵͳ�û�����'}</a>
													&gt;<a class="font1"><strong> ����˻�</strong></a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<form action="<%=path%>/tUserServletUrl?task=addSubmit"
								method="post" onSubmit="return checkForm()" name="userForm">
								<table width="85%" border="0" cellspacing="0" align="center">
									<tr>
										<td width="40%" align="right">��&nbsp;��&nbsp;����</td>
										<td width="60%"><input type="text" name="tuser"
											style="width:180px" value="" /> <span id="tuserSpan"></span></td>
									</tr>
									<tr>
										<td align="right">���룺</td>
										<td><input type="password" name="tpwd"
											style="width:180px" value="" /> <span id="tpwdSpan"></span></td>
									</tr>
									<tr>
										<td align="right">ȷ�����룺</td>
										<td><input type="password" name="tpwd2"
											style="width:180px" value="" /> <span id="tpwd2Span"></span></td>
									</tr>
									<tr>
										<td align="right">��ʵ������</td>
										<td><input type="text" name="tname" style="width:180px"
											value="" /> <span id="tnameSpan"></span></td>
									</tr>
									<tr>
										<td align="right">�Ա�</td>
										<td><input type="radio" name="tsex" value="��" checked />��&nbsp;&nbsp;<input
											type="radio" name="tsex" value="Ů" />Ů <span id="tsexSpan"></span></td>
									</tr>

									<tr>
										<td align="right">�������ڣ�</td>
										<td><input type="text" name="tbirth" style="width:180px"
											readonly="readonly" class="Wdate" onClick="WdatePicker()"
											value="" /> <span id="tbirthSpan"></span></td>
									</tr>
									<tr>
										<td align="right">�������䣺</td>
										<td><input type="text" name="temail" style="width:180px"
											value="" /> <span id="temailSpan"></span></td>
									</tr>
									<tr>
										<td align="right">�绰���룺</td>
										<td><input type="text" name="tphone" style="width:180px"
											value="" /> <span id="tphoneSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;ַ��</td>
										<td><input type="text" name="taddress"
											style="width:180px" value="" /> <span id="taddressSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�ࣺ</td>
										<td><input type="text" name="tcode" style="width:180px"
											value="" /> <span id="tcodeSpan"></span></td>
									</tr>
									<tr>
										<td align="right">�˻����ͣ�</td>
										<td><input type="radio" name="trights" value="2" ${trights==2? 'checked':''} />��ͨ�û�&nbsp;&nbsp;
											<input type="radio" name="trights" value="1" ${trights==2? '':'checked'}/>ϵͳ����Ա<span
											id="trightsSpan"></span></td>
									</tr>
									<tr>
										<td><input type="hidden" name="taccount" value="0" /> <input
											type="hidden" name="tregdate" value="${tregdate}" /> <input
											type="hidden" name="tlock" value="0" /> <input type="hidden"
											name="tlastdate" value="${tregdate}" /> <input type="hidden"
											name="tlogin" value="1" /></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="submit"
											value="���" style="height=28px;width=64px;" />&nbsp;&nbsp;&nbsp;
											<a href="javascript:history.back(0);"><input type="button"
												value="ȡ��" style="height=28px;width=64px;" /></a></td>

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
