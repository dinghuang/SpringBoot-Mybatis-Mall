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

<title>�����ƷС��</title>

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
<script language="javascript">
	function checkSname() {
		var sname = smallMcForm.sname;
		var span = document.getElementById("snameSpan");
		if (sname.value == '') {
			sname.focus();
			span.innerHTML = "&nbsp;*���Ʊ���";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkBid() {
		var bid = smallMcForm.bid;
		var span = document.getElementById("bidSpan");
		if (bid.value == -1) {
			bid.focus();
			span.innerHTML = "&nbsp;*�����ѡ";
			return false;
		} else {
			span.innerHTML = "&nbsp;*������ȷ";
			return true;
		}
	}
	function checkForm() {
		return checkSname() && checkBid();
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
										src="<%=path%>/admin/jsp/images/index1_35.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_36.gif"><a
										class="font3"><strong>��Ʒ��Ϣ����</strong></a></td>
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
										href="<%=path%>/tUserServletUrl?task=selectUser" class="font2"><strong>ע���û�����</strong></a></td>
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
													class="font1">��ҳ</a> &gt; <a class="font1">��Ʒ����</a>
													&gt; <a href="<%=path%>/smallMcServletUrl" class="font1">��ƷС�����</a>
													&gt;<a class="font1"><strong> ���С��</strong></a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>
							<form action="<%=path%>/smallMcServletUrl?task=addSubmit"
								method="post" onSubmit="return checkForm()" name="smallMcForm">
								<table width="85%" border="0" cellspacing="0" align="center"
									style="font-size:20px">
									<tr>
										<td width="40%" align="right">��ƷС���ţ�</td>
										<td width="60%"><input type="text" name="sid"
											style="width:180px" value="${sid }" readonly="readonly" /></td>
									</tr>

									<tr>
										<td align="right">��ƷС�����ƣ�</td>
										<td><input type="text" name="sname" style="width:180px"
											value="" /> <span id="snameSpan"></span></td>
									</tr>
									<tr>
										<td align="right">�����������ƣ�</td>
										<td><select style="width:180px" name="bid">
												<option value="-1">=ѡ����=</option>
												<c:forEach items="${bigMcList}" var="bigMcBean"
													varStatus="vs">
													<option value="${bigMcBean.bid }">${bigMcBean.bname }</option>
												</c:forEach>
										</select><span id="bidSpan"></span></td>
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
