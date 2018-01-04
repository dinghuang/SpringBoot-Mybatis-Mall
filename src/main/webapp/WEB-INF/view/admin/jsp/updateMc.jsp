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
<title>�޸���Ʒ��Ϣ</title>
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
<script src="<%=path%>/admin/js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript">
	//����һ��ȫ�ֵ�����
	var arr = new Array();
	<c:forEach items="${smallMcList}" var="smallMcBean" varStatus="vs">
	arr[${vs.index}] = new Array(${smallMcBean.sid}, "${smallMcBean.sname}",
			${smallMcBean.bid});
	</c:forEach>
	
	function testChange(fileImage) {
		//document.all.imgId.src = filePath;
		//���������İ汾
		var browserVersion = window.navigator.userAgent.toUpperCase();
		var imageRegex = /^(jpg|gif|png|bmp|JPG|GIF|BMP|PNG){1}$/;
		var fileValue = fileImage.value;
		if (fileValue == '') {
			return;
		}
		var ext = fileValue.substring(fileValue.lastIndexOf(".") + 1);
		if (!imageRegex.test(ext)) {
			alert("�����ļ���ʽ����!����Ϊjpg|gif|png|bmp��ʽ��ͼƬŶ!");
			fileImage.value = "";
			if (browserVersion.indexOf("MSIE") > -1) {
				//���ݵͰ汾��IE
				fileImage.select();
				document.selection.clear();
			}
			//fileImage.outerHTML = fileImage.outerHTML;
			return;
		}

		if (fileImage.files) {//����chrome�����7+��360�����5.5+�ȣ�Ӧ��Ҳ����ie10��HTML5ʵ��Ԥ��
			if (window.FileReader) {
				var reader = new FileReader();
				reader.onload = function(e) {
					document.getElementById("imgId").setAttribute("src",
							e.target.result);
				};
				reader.readAsDataURL(fileImage.files[0]);
			} else if (browserVersion.indexOf("SAFARI") > -1) {
				alert("��֧��Safari�����6.0���°汾��ͼƬԤ��!");
			} else {
				alert("��֧������ǰʹ�õ��������ͼƬԤ��!");
			}
		} else if (browserVersion.indexOf("MSIE") > -1) {//ie��360�Ͱ汾Ԥ��
			if (browserVersion.indexOf("MSIE 6") > -1) {//ie6
				document.getElementById('imgId').setAttribute("src",
						fileImage.value);
			} else {
				alert("��Ǹ����ʹ�õ�������汾̫�ͣ��ݲ�֧�������������ͼƬԤ������!");
			}
		} else if (browserVersion.indexOf("FIREFOX") > -1) {//firefox
			var firefoxVersion = parseFloat(browserVersion.toLowerCase().match(
					/firefox\/([\d.]+)/)[1]);
			if (firefoxVersion < 7) {//firefox7���°汾
				document.getElementById('imgId').setAttribute("src",
						fileImage.files[0].getAsDataURL());
			} else {//firefox7.0+    
				document.getElementById('imgId').setAttribute("src",
						window.URL.createObjectURL(fileImage.files[0]));
			}
		} else {
			alert("��Ǹ��ϵͳ�ݲ�֧������ǰʹ�õ��������ͼƬԤ������!");
		}
		//ie��
		// alert(fileImage.value);
		//$("#imgId").attr("src", fileImage.value);
		//���7���°汾
		//$("#imgId").attr("src",fileImage.files[0].getAsDataURL());
		//��� 7���ϰ汾
		//$("#imgId").attr("src", window.URL.createObjectURL(fileImage.files[0]));
	}
	
	function changeBigMc(bid) {a
		//-1û��ѡ��
		var sid = document.getElementsByName("sid")[0];
		sid.options.length = 1;
		if (bid != -1) {
			for (var i = 0; i < arr.length; i++) {
				if (bid == arr[i][2]) {
					var opt = new Option(arr[i][1], arr[i][0]);
					sid.options.add(opt);
				}
			}
		}
	}

	function checkMname() {
		var mname = mcForm.mname;
		var span = document.getElementById("mnameSpan");
		if (mname.value == '') {
			mname.focus();
			span.innerHTML = "&nbsp;*���Ʊ���";
			return false;
		} else {
			return true;
		}
	}
	function checkBid() {
		var bid = mcForm.bid;
		var span = document.getElementById("bidSpan");
		if (bid.value == -1) {
			bid.focus();
			span.innerHTML = "&nbsp;*�����ѡ";
			return false;
		} else {
			return true;
		}
	}
	function checkSid() {
		var sid = mcForm.sid;
		var span = document.getElementById("sidSpan");
		if (sid.value == -1) {
			sid.focus();
			span.innerHTML = "&nbsp;*Ʒ�Ʊ�ѡ";
			return false;
		} else {
			return true;
		}
	}
	function checkMprice() {
		var mprice = mcForm.mprice;
		var span = document.getElementById("mpriceSpan");
		var regex = /^([1-9][\d]{0,7}|0)(\.[\d]{1,2})?$/;
		if (mprice.value == '') {
			mprice.focus();
			span.innerHTML = "&nbsp;*�۸����";
			return false;
		} else if (!regex.test(mprice.value)) {
			mprice.focus();
			span.innerHTML = "&nbsp;*�۸񲻺Ϸ�";
			return false;
		} else {
			return true;
		}
	}
	function checkMtotal() {
		var mtotal = mcForm.mtotal;
		var span = document.getElementById("mtotalSpan");
		var regex = /^[0-9]*$/;
		if (mtotal.value == '') {
			mtotal.focus();
			span.innerHTML = "&nbsp;*��������";
			return false;
		} else if (!regex.test(mtotal.value)) {
			mtotal.focus();
			span.innerHTML = "&nbsp;*�������Ϸ�������ȫΪ����";
			return false;
		} else {
			return true;
		}
	}
	function checkForm() {
		return checkMname() && checkBid() && checkSid() && checkMprice()
				&& checkMtotal();
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
													class="font1">��ҳ</a> &gt; <a class="font1">��Ʒ����</a> &gt;
													&gt; <a href="<%=path%>/mcServletUrl" class="font1">��Ʒ��Ϣ����</a>
													&gt;<a class="font1"><strong> ��Ʒ��Ϣ�޸�</strong></a></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<form action="<%=path%>/mcServletUrl?task=updateSubmit"
								enctype="multipart/form-data" method="post"
								onSubmit="return checkForm()" name="mcForm">
								<table width="85%" border="0" cellspacing="0" align="center">
									<tr>
										<td width="40%" align="right">��Ʒ��ţ�</td>
										<td width="60%"><input type="text" name="mid"
											style="width:180px" value="${mcListBean.mid}"
											readonly="readonly" /></td>
									</tr>
									<tr>
										<td align="right">��Ʒ���ƣ�</td>
										<td><input type="text" name="mname" style="width:180px"
											value="${mcListBean.mname}" /> <span id="mnameSpan"></span></td>
									</tr>
									<tr>
										<td align="right">���ࣺ</td>
										<td><select name="bid" onChange="changeBigMc(this.value)">
												<option value="-1">==ѡ������==</option>
												<c:forEach items="${bigMcList}" var="bigMcBean"
													varStatus="vs">
													<option value="${bigMcBean.bid}"
														${mcListBean.bname==bigMcBean.bname?'selected':''}>${bigMcBean.bname }</option>
												</c:forEach>
										</select> <span id="bidSpan"></span></td>
									</tr>
									<tr>
										<td align="right">Ʒ�ƣ�</td>
										<td><select name="sid">
												<option value="-1">==ѡ��Ʒ��==</option>
												<c:forEach items="${smallMcList}" var="smallMcBean"
													varStatus="vs">
													<option value="${smallMcBean.sid}"
														${smallMcBean.sname==mcListBean.sname?'selected':''}>${smallMcBean.sname}</option>
												</c:forEach>
										</select> <span id="sidSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��Ʒ�۸�</td>
										<td><input type="text" name="mprice" style="width:180px"
											value="${mcListBean.mprice}" /> <span id="mpriceSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��Ʒ��������</td>
										<td><input type="text" name="mtotal" style="width:180px"
											value="${mcListBean.mtotal}" /> <span id="mtotalSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��Ʒ������ڣ�</td>
										<td><input type="text" name="mdate" style="width:180px"
											value="${mcListBean.mdate}" class="Wdate"
											onclick="WdatePicker()" readonly="readonly" /> <span
											id="mdateSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��Ʒ������</td>
										<td><textarea cols="20" rows="10" style="width:180px"
												name="mdescription">${mcListBean.mdescription}
									</textarea><span id="mdescriptionSpan"></span></td>
									</tr>
									<tr>
										<td align="right">��ƷͼƬ��</td>
										<td><input type="hidden" name="${mcListBean.mid}"
											value="${mcListBean.mimg }" /> <input type="file"
											name="mimg" onchange="testChange(this)" readonly="readonly" /><span
											id="mimgSpan"></span></td>
									</tr>
									<tr>
										<td></td>
										<td><img title="��ʾͼƬ" id="imgId"
											src="<%=path%>/images/mc_images/${mcListBean.mimg}"
											width="200px" height="200px"></td>
									</tr>
									<tr>
										<td colspan="2" align="center"><input type="submit"
											value="�޸�" style="height=28px;width=64px;" />&nbsp;&nbsp;&nbsp;
											<a href="javascript:history.back(0);"><input
								type="button" value="ȡ��" style="height=28px;width=64px;" /></a></td>

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
