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

<title>ǰ̨����ͼƬ����</title>

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
	//У���Ƿ����ļ�
	function checkFileType(file) {
		var span = document.getElementById(file.name + "Span");
		//�ж��ļ��������ļ�����Ϊnull���߲�Ϊnull ������ͼƬ
		var fileValue = file.value;
		//alert(fileValue);
		if (fileValue == null || fileValue == "") {
			span.innerHTML = "ͼƬ����Ϊ�գ�";
			return false;
		} else {
			//d://image/tt.gif
			var ext = fileValue.substring(fileValue.lastIndexOf(".") + 1);//gif
			//alert("ext=" + ext);
			//gif,jpg,bmp,png
			var regex = /^(gif|jpg|bmp|png|PNG|JPG|GIF|BMP){1}$/;
			if (regex.test(ext)) {
				//alert('true');
				return true;
			} else {
				span.innerHTML = "�ļ����͸�ʽ���淶";
				return false;
			}
		}
	}

	function checkRimg() {
		for (var i = 1; i < 5; i++) {
			var file = document.getElementByName("rimg" + i);
			var fileValue = file.value;
			if (fileValue == null || fileValue == "") {
				return false;
			} else {
				var ext = fileValue.substring(fileValue.lastIndexOf(".") + 1);
				var regex = /^(gif|jpg|bmp|png|PNG|JPG|GIF|BMP){1}$/;
				if (regex.test(ext)) {

				} else {
					return false;
				}
			}
		}
		return true;

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
										class="font2"><strong>��Ʒ��Ϣ����</strong></a></td>
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
										src="<%=path%>/admin/jsp/images/index1_35.gif" width="5"
										height="39" /></td>
									<td align="center"
										background="<%=path%>/admin/jsp/images/index1_36.gif"><a
										href="<%=path%>/rollingServletUrl?task=update" class="font3"><strong>����ͼƬ����</strong></a></td>
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
													class="font1">��ҳ</a> &gt; <a class="font1">ǰ̨ҳ�����</a> &gt;
													<a class="font1"><strong>����ͼƬչʾ</strong></a></td>
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
										<form action="<%=path%>/rollingServletUrl?task=updateSubmit"
											enctype="multipart/form-data" method="post"
											onSubmit="return checkRimg()" name="rollingForm">
											<table width="100%" border="0" cellpadding="0"
												cellspacing="1" bgcolor="#BBD3EB">
												<tr height="27px">
													<th background="<%=path%>/admin/jsp/images/index1_72.gif">���</th>
													<th background="<%=path%>/admin/jsp/images/index1_72.gif">��Ʒ��</th>
													<th background="<%=path%>/admin/jsp/images/index1_72.gif">����ͼƬ</th>

												</tr>
												<c:forEach items="${list}" var="rollingBean" varStatus="vs">
													<tr bgcolor="${vs.count%2==0?'#F7FAFF':''}">
														<td align="center">${vs.count}</td>
														<td align="center">
														<select style="width:180px" name="mid${vs.count}">
																<c:forEach items="${mcList}" var="mcBean">
																	<option value="${mcBean.mid}"
																		${rollingBean.mid==mcBean.mid?'selected':''}>${mcBean.mname }</option>
																</c:forEach>
														</select></td>
														<td align="center">${rollingBean.rimg}
														<input type="hidden" name="oldrimg${vs.count}" value="${rollingBean.rimg }"/>
														 <input type="file" name="rimg${vs.count}"
															onchange="checkFileType(this)"
															value="${rollingBean.rimg }" readonly="readonly" /><span
															id="rimg${vs.count}Span"></span></td>
													</tr>
												</c:forEach>
											</table>
											<div style="margin-top: 50px">���ϴ� 980*400 ����ͼƬ��</div>
											<div style="margin-left: 400px;margin-top: 50px ">
												<input type="submit" value="�޸�"
													style="height=28px;width=64px;" />&nbsp;&nbsp;&nbsp;
												<a href="<%=path%>/rollingServletUrl?task=update"><input
														type="button" value="ȡ��" style="height=28px;width=64px;" /></a>
											</div>
										</form>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td><hr /></td>
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
