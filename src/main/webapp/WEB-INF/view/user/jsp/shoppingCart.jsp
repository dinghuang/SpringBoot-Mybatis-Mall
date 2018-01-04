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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<title>ȷ�϶���ҳ��</title>
<link rel="stylesheet" href="<%=path%>/user/css/tasp.css" />
<link rel="stylesheet" href="<%=path%>/user/css/orderconfirm.css" />

<style>
#page {
	width: auto;
}

#comm-header-inner,#content {
	width: 950px;
	margin: auto;
}
</style>
<script type="text/javascript">
	var xmlHttp = null;
	function createXmlHttpRequest() {
		if (window.ActiveXObject) {
			//IE�Ƚϵ͵İ汾 ʹ��
			//alert("ActiveXObject");
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		} else if (window.XMLHttpRequest) {
			//�Ƚ��µİ汾 ��ʹ��
			//alert("XMLHttpRequest");
			xmlHttp = new XMLHttpRequest();
		}
	}

	function buyAllMc() {
		var buyAll = document.getElementById("buyAll");
		<c:forEach items="${shoppingCartList}" var="shoppingCartBean">
		var buy = document.getElementById("${shoppingCartBean.scid}buy");
		if (buyAll.checked == true) {
			buy.checked = true;
		} else {
			buy.checked = false;
		}
		</c:forEach>
		getTotal();
	}
	function buySomeMc() {
		var buyAll = document.getElementById("buyAll");
		var state = true;
		<c:forEach items="${shoppingCartList}" var="shoppingCartBean">
		var buy = document.getElementById("${shoppingCartBean.scid}buy");
		if (buy.checked == false) {
			buyAll.checked = false;
			state = false;
		}
		</c:forEach>
		if (state == true) {
			buyAll.checked = true;
		}
		getTotal();
	}
	function getTotal() {
		var total = 0;
		if (${tUserBean != null}) {
			<c:forEach items="${shoppingCartList}" var="shoppingCartBean">
			<c:forEach items="${mcList}" var="mcBean">
			var buy = document.getElementById("${shoppingCartBean.scid}buy");
			if (${shoppingCartBean.mname == mcBean.mname} && buy != null
					&& buy.checked) {
				var sccount = document
						.getElementById("${shoppingCartBean.scid}");
				var mprice = document
						.getElementById("${shoppingCartBean.scid}mprice");
				var count = parseInt(sccount.value);
				var price = parseFloat(mprice.value);
				total = total + count * price;
			}
			</c:forEach>
			</c:forEach>
		}
		var t = document.getElementById("total");
		t.innerHTML = total.toFixed(2);
		var p = document.getElementById("pay");
		p.innerHTML = total.toFixed(2);
	}

	function getSubtotal() {
		if (${tUserBean != null}) {
			<c:forEach items="${shoppingCartList}" var="shoppingCartBean">
			var subtotal = document
					.getElementById("${shoppingCartBean.scid}subtotal");
			var sccount = document.getElementById("${shoppingCartBean.scid}");
			var mprice = document
					.getElementById("${shoppingCartBean.scid}mprice");
			var count = parseInt(sccount.value);
			var price = parseFloat(mprice.value);
			subtotal.value = (count * price).toFixed(2);
			</c:forEach>
		}

	}

	function reduceCount(scid) {
		var count = document.getElementById(scid).value;
		count--;
		
		createXmlHttpRequest();
		//url�������ʱ�����Ŀ�ı���url����.
		url = "<%=path%>/shoppingCartServletUrl?task=change&scid="+scid+"&sccount="+count+"&date="+new Date().getTime();
		xmlHttp.open("post", url, true);
		xmlHttp.send(null);
		
		
		document.getElementById(scid).value = count;
		var subtotal = document.getElementById(scid + "subtotal");
		var mprice = document.getElementById(scid + "mprice");
		var price = parseFloat(mprice.value);
		subtotal.value = (count * price).toFixed(2);
		if (count <= 0) {
			deleteRow(scid);
		}
		getTotal();
	}
	function addCount(scid) {
		var count = document.getElementById(scid).value;
		count++;
		
		createXmlHttpRequest();
		//url�������ʱ�����Ŀ�ı���url����.
		url = "<%=path%>/shoppingCartServletUrl?task=change&scid="+scid+"&sccount="+count+"&date="+new Date().getTime();
		xmlHttp.open("post", url, true);
		xmlHttp.send(null);
		
		document.getElementById(scid).value = count;
		var subtotal = document.getElementById(scid + "subtotal");
		var mprice = document.getElementById(scid + "mprice");
		var price = parseFloat(mprice.value);
		subtotal.value = (count * price).toFixed(2);
		getTotal();
	}
	function changeCount(input) {
		var sccount = input.value;
		if (sccount == null || sccount == '') {
			alert('����������!');
			input.focus();
			return;
		}
		createXmlHttpRequest();
		//url�������ʱ�����Ŀ�ı���url����.
		url = "<%=path%>/shoppingCartServletUrl?task=change&scid="+input.id+"&sccount="+sccount+"&date="+new Date().getTime();
		xmlHttp.open("post", url, true);
		xmlHttp.send(null);
		
		var subtotal = document.getElementById(input.id + "subtotal");
		var mprice = document.getElementById(input.id + "mprice");
		var price = parseFloat(mprice.value);
		var count = parseInt(sccount);
		input.value = count;
		subtotal.value = (count * price).toFixed(2);
		if (sccount == 0) {
			deleteRow(input.id);
		}
		getTotal();
		//ajax  ��servlet����
	}

	function deleteRow(scid) {
		createXmlHttpRequest();
		//url�������ʱ�����Ŀ�ı���url����.
		url = "<%=path%>/shoppingCartServletUrl?task=delete&scid=" + scid
				+ "&date=" + new Date().getTime();
		xmlHttp.open("post", url, true);
		xmlHttp.send(null);

		var mcTable = document.getElementById("mcTable");
		//����id��ý�Ҫɾ���еĶ���
		var tr1 = document.getElementById(scid + "tr1");
		var tr2 = document.getElementById(scid + "tr2");
		//ȡ���е�����������ɾ���е�����
		mcTable.deleteRow(tr1.rowIndex);
		mcTable.deleteRow(tr2.rowIndex);
	}

	$(function() {
		$("#xxxxxx").keyup(
				function() {
					//�����������֣����滻Ϊ''������������֣�����ÿ4λ֮�����һ���ո�ָ�
					this.value = this.value.replace(/[^\d]/g, '').replace(
							/(\d{4})(?=\d)/g, "$1 ");
				});
	});

	function load() {
		getTotal();
		getSubtotal();
	}
</script>
</head>

<body onload="load()">
	<div id="page">

		<div class="grid-c"
			style="margin-top: 32px;margin-left: 105px; width:1100px; height:50px">
			<div style="float:left;">
				<ul>
					<li><a href="<%=path%>"><img
							src="<%=path%>/images/front_images/logo.png" /></a></li>
				</ul>
			</div>
			<div style="float:right;margin-right: 40px;">
				<ul style="font-size: 14px;text-transform: uppercase;">
					<li style="text-decoration:none;"><a
						href="personalServletUrl?task=myorder"
						style="text-decoration:none;"><font color=#7e7f84>${tUserBean.tuser}</font></a>
					</li>
				</ul>
			</div>

		</div>
		<hr style="margin-top: 38px;width: 80%;" />
		<div id="content" class="grid-c" style="margin-top: 20px;">
			<form id="J_Form" name="J_Form"
				action="<%=path%>/personalServletUrl?task=addOrder" method="post">
				<div>
					<h3 class="dib" style="align:right">�ҵĹ��ﳵ</h3>
					<table class="order-table" id="mcTable">
						<thead>
							<tr>
								<th class="s-amount">ѡ��
									<hr />
								</th>
								<th class="s-title">��Ʒ
									<hr />
								</th>
								<th class="s-price">����(Ԫ)
									<hr />
								</th>
								<th class="s-amount">����
									<hr />
								</th>
								<th class="s-agio">�Żݷ�ʽ(Ԫ)
									<hr />
								</th>
								<th class="s-total">С��(Ԫ)
									<hr />
								</th>
							</tr>

						</thead>
						<tbody>
							<tr class="first">
								<td colspan="5"></td>
							</tr>
							<tr class="shop blue-line">
								<td colspan="2" class="promo">
									<div>
										<ul class="scrolling-promo-hint J_ScrollingPromoHint">
										</ul>
									</div>
								</td>
							</tr>
							<c:forEach items="${shoppingCartList}" var="shoppingCartBean">
								<c:forEach items="${mcList}" var="mcBean">
									<c:if test="${mcBean.mname==shoppingCartBean.mname }">
										<tr class="first" id="${shoppingCartBean.scid}tr1">
											<td colspan="5"></td>
										</tr>
										<tr class="item" id="${shoppingCartBean.scid}tr2">
											<td><input type="checkbox"
												id="${ shoppingCartBean.scid }buy" style="cursor:pointer"
												onchange="buySomeMc()" value="${shoppingCartBean.scid }"
												name="gobuy" checked /></td>

											<td class="s-title"><a
												href="<%=path%>/mcItemServletUrl?mid=${mcBean.mid}"
												target="_top" class="J_MakePoint"> <img
													src="<%=path%>/images/mc_images/${mcBean.mimg }"
													class="itempic"> <span class="title J_MakePoint">${shoppingCartBean.mname }</span>
											</a>
												<div class="props">
													<span>${mcBean.mdescription } </span>
												</div></td>
											<td class="s-price"><span class='price '> <input
													id="${ shoppingCartBean.scid }mprice"
													style="width: 60px; border:0" value="${mcBean.mprice }" />
											</span></td>
											<td class="s-amount"><img
												src="<%=path%>/images/pay_images/reduce.jpg" name="reduce"
												onclick="reduceCount(${shoppingCartBean.scid})" width="15"
												height="15" border="0" style="cursor:pointer" />&nbsp;&nbsp;

												<input type="text" style="width: 30px" maxlength="4"
												onkeyup="value=value.replace(/[^\d]/g,'')"
												id="${shoppingCartBean.scid}" onblur="changeCount(this)"
												value="${shoppingCartBean.sccount }" />&nbsp;&nbsp; <img
												src="<%=path%>/images/pay_images/add.jpg" name="add"
												onclick=" addCount(${shoppingCartBean.scid } )" width="15"
												height="15" border="0" style="cursor:pointer" /></td>

											<td class="s-agio">
												<div class="J_Promotion promotion">���Ż�</div>
											</td>
											<td class="s-total"><span class='price '> <input
													id="${shoppingCartBean.scid}subtotal"
													style="width: 70px; border:0" value="" />
											</span></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:forEach>
							<tr class="item-service">
								<td colspan="5" class="servicearea" style="display: none"></td>
							</tr>
							<tr class="blue-line" style="height: 2px;">
								<td colspan="6"></td>
							</tr>
							<tr class="shop-total blue-line">
								<td><input type="checkbox" id="buyAll"
									style="cursor:pointer" onchange="buyAllMc()" checked />&nbsp;&nbsp;&nbsp;&nbsp;ȫѡ</td>
								<td style="text-align: left;float: left; margin-left: 20px"><a
									href="shoppingCartServletUrl?task=deleteAll">��չ��ﳵ</a></td>
								<td colspan="6">�ϼ�&nbsp;&nbsp;�� <span class='price g_price'><em
										class="style-middle-bold-red J_ShopTotal" id="total"> </em> </span>
								</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6">
									<div class="order-go">
										<div class="J_AddressConfirm address-confirm">
											<div class="kd-popup pop-back" style="margin-bottom: 40px;">
												<div class="box" style="width: 400px">
													<div class="bd">
														<div class="point-in">
															<em class="t">ʵ���&nbsp;&nbsp;��</em> <em
																class="style-large-bold-red" id="pay"></em>
														</div>
														<ul>
															<li><em>������:</em><span id="J_AddrConfirm"
																style="word-break: break-all;">${tUserBean.taddress}
															</span></li>
															<li><em>�ջ���:</em><span id="J_AddrNameConfirm">
																	${tUserBean.tuser}</span></li>
															<li><em>��ϵ�绰:</em><span id="J_AddrNameConfirm">
																	${tUserBean.tphone} </span></li>
														</ul>
													</div>
												</div>
												<a id="J_Go" class=" btn-go" tabindex="0"
													style="cursor:pointer"
													onclick="document.getElementById('J_Form').submit();">�ύ����<b
													class="dpl-button"></b></a>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>