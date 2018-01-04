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

	<title>�����˵���</title>

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
<script type="text/javascript">

    function getTotal() {
        var total = 0;
        if (${tUserBean != null}) {
        <c:forEach items="${shoppingCartList}" var="shoppingCartBean">
            <c:forEach items="${mcList}" var="mcBean">
            if (${shoppingCartBean.mname == mcBean.mname}) {
                total = total + ${shoppingCartBean.sccount * mcBean.mprice};
            }
        </c:forEach>
            </c:forEach>
        }
        var t = document.getElementById("total");
        t.innerHTML = total.toFixed(2);
    }
</script>
<body onload="getTotal()">
<div class="header">
	<div class="container">
		<div class="header-top">
			<div class="header-logo">
				<a href="<%=path%>/index"><img
						src="<%=path%>/images/front_images/logo.png" /></a>
			</div>
			<div class="header-right">
				<ul>
					<li class="phone"><a>��ϵ����</a></li>
					<li class="mail">
						<c:if test="${tUserBean==null}">
							<a href="<%=path%>/userLogin">��¼</a>
						</c:if>
						<c:if test="${tUserBean!=null}">
							<a href="personalServletUrl?task=myorder">${tUserBean.tuser}</a>&nbsp;ح&nbsp;<a href="personalServletUrl?task=exit">�˳�</a>
						</c:if>
					</li>
					<li class="checkout"><a href="<%=path%>/shoppingCartServletUrl"
											target="_top"> <c:if test="${shoppingCartList==null }">
						<span class="check">��0.00</span>
					</c:if> <c:if test="${shoppingCartList!=null }">
						<span class="cart">��</span>
						<span id="total"></span>
						<span class="check">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ȥ����</span>
					</c:if>
					</a>
						<div class="shopping">
							<c:if test="${shoppingCartList==null }">
								<h5>���Ĺ��ﳵ�ǿյ�.</h5>
								<p>���ﳵ�л�û����Ʒ���Ͻ�ѡ���ɣ�</p>
							</c:if>
							<c:if test="${shoppingCartList!=null }">
								<p>��Ʒ��&nbsp;&nbsp;&nbsp;&nbsp;���� </p>
								<c:forEach items="${shoppingCartList}" var="shoppingCartBean">
									<p>${shoppingCartBean.mname }&nbsp;&nbsp;&nbsp;&nbsp;${shoppingCartBean.sccount }</p>
								</c:forEach>
							</c:if>
						</div></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="top-nav">
				<span class="menu"><img
						src="<%=path%>/images/front_images/menu.png" alt=""></span>
			<ul class="nav">
				<li class="dropdown1"><a href="<%=path%>/personalServletUrl?task=myorder">�ҵ��ֹ�</a>
					<ul class="dropdown2">
						<li><a href="<%=path%>/personalServletUrl?task=myorder">�ҵĶ���</a></li>
						<li><a href="<%=path%>/personalServletUrl?task=mywallet">�ҵ�Ǯ��</a></li>
						<li><a href="<%=path%>/personalServletUrl?task=myself">��������</a></li>
					</ul></li>
				<c:forEach items="${bigMcList}" var="bigMcBean">
					<li class="dropdown1"><a target="_top"
											 href="<%=path%>/searchMcServletUrl?task=bigMc&bname=${bigMcBean.bname}">${ bigMcBean.bname }</a>
						<ul class="dropdown2">
							<c:forEach items="${smallMcList}" var="smallMcBean">
								<c:if test="${smallMcBean.bid==bigMcBean.bid }">
									<li><a target="_top"
										   href="<%=path%>/searchMcServletUrl?task=smallMc&bname=${bigMcBean.bname}&sname=${smallMcBean.sname}">${smallMcBean.sname }</a></li>
								</c:if>
							</c:forEach>
						</ul></li>
				</c:forEach>
			</ul>
		</div>
		<div class="search">
			<form action="<%=path%>/searchMcServletUrl?task=mc" method="post">
				<input type="text" name="mname" value="${ mname==null?'����...':mname }"
					   onfocus="this.value = '';"
					   onblur="if (this.value == '') {this.value = '����...';}" required="">
			</form>
		</div>
	</div>
</div>
</body>
</html>
