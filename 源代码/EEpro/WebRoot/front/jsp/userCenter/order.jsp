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

<title>�µ�</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
<script type="text/javascript" src="<%=path%>/js/order.js"></script>

</head>

<body>
	<table border="1" width="90%"
		style="text-align: center; margin-top: 20px" align="center">
		<caption>
			<h3>��������</h3>
		</caption>
		<tr>
			<th>������Ʒ������</th>
			<th>������Ʒ�ܼ���</th>
			<th>�۸��ܼ�</th>
			<th>���ʽ</th>
			<th>�ջ���ʽ</th>
		</tr>
		<tr>
			<td>${car.totalType}</td>
			<td>${car.totalCount}</td>
			<td>��${car.totalPrice}</td>
			<td>${pay}</td>
			<td>${shipping}</td>
		</tr>

	</table>
	<form action="<%=path %>/OrderServlet?suser=${fbean.user}&pay=${pay}&shipping=${shipping}&totalType=${car.totalType}
	&totalCount=${car.totalCount}&totalPrice=${car.totalPrice}" method="post" name="sform">
	<table border="0" width="90%"
		style="text-align: center; margin-top: 50px" align="center">
		<caption>
			<h3>�ջ��������Ϣ</h3>
		</caption>
		
		<tr>
			<td>�ջ��������� <input type="text" name="sname" maxlength=30
				value="${fbean.name}" /> <span id="snameSp" /></span></td>
		</tr>
		<tr>
			<td>�ջ��˵�ַ�� <input type="text" name="sadress" maxlength=30
				value="${fbean.adress}" /> <span id="sadressSp"></span></td>
		</tr>
		<tr>
			<td>�ջ����ʱࣺ <input type="text" name="spostcode" maxlength=30
				value="${fbean.postcode}" /> <span id="spostcodeSp"></span></td>
		</tr>
		<tr>
			<td>�ջ��˵绰�� <input type="text" name="snumber" maxlength=30
				value="${fbean.tel}" /> <span id="snumberSp"></span></td>
		</tr>
		<tr>
			<td>�ջ������䣺 <input type="text" name="semail" maxlength=30
				value="${fbean.email}" /> <span id="semailSp"></span></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td><input type="submit" value="�ύ����"/></td></tr>
	</table>
	</form>
</body>
</html>
