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

<title>�û���Ϣ����</title>

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
	function subMitData(url) {
		//�ж��Ƿ�ѡ�����ݣ����ѡ�����ݵ�ֵ
		var tusers = document.getElementsByName("tuser");
		var value = null;
		for (var i = 0; i < tusers.length; i++) {
			if (tusers[i].checked == true) {
				value = tusers[i].value;
				break;
			}
		}
		if (value == null) {
			alert('��ѡ��Ҫ��Ŀ!');
			return;
		}
		//ƴ��url
		var newUrl = url + "&tuser=" + value;
		window.location.href = newUrl;
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
													<a class="font1"><strong> ${ trights==2? 'ע���û�����':'ϵͳ�û�����' }</strong></a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="1">
								<tr>
									<td>
										<center>
											<form
												action="<%=path%>/tUserServletUrl?task=${trights==2?'selectUser':'selectAdmin'}"
												method="post" name="selectForm">
												�û���:<input type="text" name="tuser" value="${tuser}" class="text" />
												&nbsp;סַ:<input type="text" name="taddress" value="${taddress}" class="text" /> 
												&nbsp;�Ա�<input type="radio" name="tsex" value="��" ${tsex=='��'?'checked':''} />��
												<input type="radio" name="tsex" value="Ů" ${tsex=='Ů'?'checked':''} />Ů
												
												<input type="hidden" name="trights" value="${trights}"> 
												&nbsp;&nbsp;<input type="submit" style="height=28px;width=64px;cursor:pointer" value="��ѯ" />
											</form>
										</center>
									</td>
								</tr>
								<tr>
									<td>
										<table width="100%" border="0" cellpadding="0" cellspacing="1"
											bgcolor="#BBD3EB">
											<tr>
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">ѡ��</th>
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">�û���</th>
												<c:if test="${trights==2 }">
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">�˻����</th>
												</c:if>
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">�Ա�</th>
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">��������</th>
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">�绰����</th>
												<th background="<%=path%>/admin/jsp/images/index1_72.gif">��ַ</th>
											</tr>
											<c:forEach items="${list}" var="tUserBean" varStatus="vs">
												<tr bgcolor="${vs.count%2==0?'#F7FAFF':''}">
													<td align="center"><input type="radio" name="tuser"
														value=${ tUserBean.tuser} /></td>
													<td align="center">${tUserBean.tuser}</td>
													<c:if test="${trights==2 }">
													<td align="center">${tUserBean.taccount}</td>
													</c:if>
													<td align="center">${tUserBean.tsex}</td>
													<td align="center">${tUserBean.temail}</td>
													<td align="center">${tUserBean.tphone}</td>
													<td align="center">${tUserBean.taddress}</td>
												</tr>
											</c:forEach>
										</table>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>
										<div>${pageTools}</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td><hr /></td>
					</tr>
					<tr>
						<td><a
							href="javascript:subMitData('<%=path%>/tUserServletUrl?task=look')">
								<img src="<%=path%>/admin/jsp/images/index1_88.gif" width="74"
								height="31" border="0" />
						</a>&nbsp;<a
							href="<%=path%>/tUserServletUrl?task=add&trights=${trights}">
								<img src="<%=path%>/admin/jsp/images/index1_86.gif" width="74"
								height="31" border="0" />
						</a>&nbsp; <a
							href="javascript:subMitData('<%=path%>/tUserServletUrl?task=lock&trights=${trights}')">
								<img src="<%=path%>/admin/jsp/images/index1_82.gif" width="74"
								height="31" border="0" />
						</a>&nbsp; <a
							href="javascript:subMitData('<%=path%>/tUserServletUrl?task=delete')">
								<img src="<%=path%>/admin/jsp/images/index1_84.gif" width="74"
								height="31" border="0" />
						</a></td>
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
