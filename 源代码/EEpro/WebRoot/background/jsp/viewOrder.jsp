<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>������ϸ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">


</head>

<body>
<input type="button" value="���ض����б�" style="width: 150px;margin-top: 30px;margin-left: 50px" onclick="window.history.back()">
	<table border="1" width="90%"
		style="text-align: center; margin-top: 20px" align="center">
		<caption >
			<h2 style="margin-top: 20px;margin-bottom: 20px;">��������</h2>
		</caption>
		
		<tr>
			<td>�������</td>
			<td>${order.nid}</td>
		</tr>
		<tr>
			<td>�µ�ʱ��</td>
			<td>${order.dgdate}</td>
		</tr>
		<tr>
			<td>���ʽ</td>
			<td>${order.spayType}</td>
		</tr>
		<tr>
			<td>�ջ���ʽ</td>
			<td>${order.ssendType}</td>
		</tr>
		<tr>
			<td>��Ʒ����</td>
			<td>${order.nmcTypeSize}</td>
		</tr>
		<tr>
			<td>��Ʒ����</td>
			<td>${order.nmcSize}</td>
		</tr>
		<tr>
			<td>��Ʒ�ܼ�</td>
			<td>${order.ntotalPrice}</td>
		</tr>
		<tr>
			<td>����״̬</td>
			<td>${order.sstatus}</td>
		</tr>
		<tr>
			<td>��������</td>
			<td>${order.smsg}</td>
		</tr>
		<tr>
			<td>�����</td>
			<td>${order.sauser}</td>
		</tr>
		<tr>
			<td>���ʱ��</td>
			<td>${order.dadate}</td>
		</tr>
		<tr>
			<td>�ջ���</td>
			<td>${order.ssname}</td>
		</tr>
		<tr>
			<td>�ջ���ַ</td>
			<td>${order.ssaddress}</td>
		</tr>
		<tr>
			<td>�ջ��ʱ�</td>
			<td>${order.sscode}</td>
		</tr>
		<tr>
			<td>�ջ��绰</td>
			<td>${order.ssphone}</td>
		</tr>
		<tr>
			<td>��������</td>
			<td>${order.ssemail}</td>
		</tr>

	</table>


	<table border="1" width="90%"
		style="text-align: center; margin-top: 50px;" align="center">
		<caption>
			<h2 style="margin-top: 20px;margin-bottom: 20px;">��Ʒ������Ϣ</h2>
		</caption>
		<tr>
			<th>��Ʒ���</th>
			<th>��Ʒ����</th>
			<th>��Ʒ���</th>
			<th>��ƷͼƬ</th>
			<th>��Ʒ����</th>
			<th>��������</th>
			<th>�۸�С��</th>

		</tr>

		<c:forEach items="${orderItems}" var="orderItem">
			<tr>
				<td>${orderItem.nmcid}</td>
				<td>${orderItem.smcname}</td>
				<td>${orderItem.sdescription}</td>
				<td><img src="<%=path%>/mcimg/${orderItem.simg}" width="80px" height="60px"/></td>
				<td>${orderItem.ncount}</td>
				<td>${orderItem.nprice}</td>
				<td>${orderItem.ntotalprice}</td>
			</tr>
		</c:forEach>


	</table>
	<table>
	<tr><td></td></tr>
	<tr><td></td></tr>
	</table>
</body>
</html>
