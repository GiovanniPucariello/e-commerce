<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
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

<title>��Ʒ��ϸ</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/list.css"/>
</head>

<body>
<div ><input type="button"
				value="������Ʒ�б�" onclick="window.history.back()" />
			</div>
	<table border="0" width="90%"
		style="text-align: center; margin-top: 50px" align="center">
		<caption>
			<h3>��Ʒ������Ϣ</h3>
		</caption>
		<tr>
			<td>��Ʒ���</td>
			<td>${mcbean.nid}</td>
		</tr>

		<tr>
			<td>��Ʒ����</td>
			<td>${mcbean.sname}</td>
		</tr>
		<tr>
			<td>��Ʒ���</td>
			<td>${mcbean.sdescription}</td>
		</tr>
		<tr>
			<td>��ƷͼƬ</td>
			<td><img src="<%=path%>/mcimg/${mcbean.simg}" width="80px"
				height="60px" />
			</td>
		</tr>
		<tr>
			<td>��Ʒ����</td>
			<td>��${mcbean.nprice}</td>
		</tr>
		<tr>
			<td>�Ƿ�ȱ��</td>
			<td>${mcbean.smctag}</td>
		</tr>
		<tr>
			<td>�ϼ�ʱ��</td>
			<td>${mcbean.dcdate}</td>
		</tr>
		<tr>
			<td>��������</td>
			<td>${mcbean.nmaxid}</td>
		</tr>
		<tr>
			<td>����С��</td>
			<td>${mcbean.nminid}</td>
		</tr>

	</table>
	<table align="center" style="margin-top: 40px">
		<tr>		
			<td  style="text-align:center;"><input type="image"
				onclick="document.location.href='CarServlet?task=buy&nid=${mcbean.nid}'" alt="����" id="img"
				src="<%=path%>/front/image/pay.jpg"></td>
		</tr>
	</table>
</body>
</html>
