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

<title>�鿴�û�</title>

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
													href="<%=path%>/tUserServletUrl?task=${tUserBean.trights==2?'selectUser':'selectAdmin'}"
													class="font1">${tUserBean.trights==2? 'ע���û�����':'ϵͳ�û�����'}</a>
													&gt;<a class="font1"><strong> �鿴�û���Ϣ</strong></a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="85%" border="0" cellspacing="0" align="center">
								<tr>
									<td width="40%" align="right">��&nbsp;��&nbsp;����</td>
									<td width="60%"><input type="text" name="tuser"
										style="width:180px" value="${tUserBean.tuser}"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">�˻���</td>
									<td><input type="text" name="taccount" style="width:180px"
										value="${tUserBean.taccount}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">��ʵ������</td>
									<td><input type="text" name="tname" style="width:180px"
										value="${tUserBean.tname}" readonly="readonly" /> <span
										id="tnameSpan"></span></td>
								</tr>
								<tr>
									<td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
									<td><input type="text" name="tsex" style="width:180px"
										value="${tUserBean.tsex}" readonly="readonly" /> <span
										id="tsexSpan"></span></td>
								</tr>

								<tr>
									<td align="right">�������ڣ�</td>
									<td><input type="text" name="tbirth" style="width:180px"
										value="${tUserBean.tbirth}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">�������䣺</td>
									<td><input type="text" name="temail" style="width:180px"
										value="${tUserBean.temail}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">�绰���룺</td>
									<td><input type="text" name="tphone" style="width:180px"
										value="${tUserBean.tphone}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;ַ��</td>
									<td><input type="text" name="taddress" style="width:180px"
										value="${tUserBean.taddress}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�ࣺ</td>
									<td><input type="text" name="tcode" style="width:180px"
										value="${tUserBean.tcode}" readonly="readonly" /></td>
								</tr>

								<tr>
									<td align="right">ע��ʱ�䣺</td>
									<td><input type="text" name="tregdate" style="width:180px"
										value="${tUserBean.tregdate}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">�˻�״̬��</td>
									<td><input type="text" name="tlock" style="width:180px"
										value="${tUserBean.tlock==0?'�ⶳ':'����'}" readonly="readonly" />
									</td>
								</tr>
								<tr>
									<td align="right">����¼��</td>
									<td><input type="text" name="tlastdate"
										style="width:180px" value="${tUserBean.tlastdate}"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">��¼������</td>
									<td><input type="text" name="tlogin" style="width:180px"
										value="${tUserBean.tlogin}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td align="right">�û�Ȩ�ޣ�</td>
									<td><input type="text" name="trights" style="width:180px"
										value="${tUserBean.trights==1?'ϵͳ����Ա':'��ͨ�û�'}"
										readonly="readonly" /></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<a href="javascript:history.back(0);"><input type="button"
												value="����" style="height=28px;width=64px;" /></a>
									</td>

								</tr>
							</table>
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
