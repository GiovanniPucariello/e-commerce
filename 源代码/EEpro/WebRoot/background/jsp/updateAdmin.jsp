<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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

<title>�޸Ļ�������</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/main.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
<script language="javascript" src="<%=path%>/js/calendar.js"
	charset="GBK"></script>
<script language="javascript" src="<%=path%>/js/update.js"></script>
</head>

<body>
	<form method="post" action="UpdateBasicServlet?task=update&suser=${sessionScope.suser}" name="sform"
		onsubmit="return checkSform();">
		<table width=800 height=100 border=0 cellpadding=5 align="center">
			<caption
				style="font-size: 20px;padding-bottom: 20px;padding-top: 30px">�޸Ļ�������</caption>
			<tr>
				<td>��&nbsp;��&nbsp;���� <input type="text" disabled="disabled"
					name="suser" value="${sessionScope.suser}" maxlength=30 /> <span
					id="suserSp"></span></td>
			</tr>

			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�� <input type="radio" name="sex"
					value="��" style="width:50px;"
					${sessionScope.bean.sex=="��"?"checked":""} /> ��
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="Ů"
					${sessionScope.bean.sex=="Ů"?"checked":"" }
					style="width:50px;" /> Ů</td>
			</tr>
			<tr>
				<td>��ʵ������ <input type="text" name="sname" maxlength=30
					value="${sessionScope.bean.name }" /> <span id="snameSp" /></span></td>
			</tr>
			<tr>
				<td>�������ڣ� <input type="text" name="sdate" size="30"
					value="${sessionScope.bean.birth }"
					onfocus="javascript:{show_cele_date(this,'','',this);}" /> <span
					id="sdateSp"></span></td>
			</tr>
			<tr>
				<td>�������䣺 <input type="text" name="semail" maxlength=30
					value="${sessionScope.bean.email }" /> <span id="semailSp"></span>
				</td>
			</tr>
			<tr>
				<td>�绰���룺 <input type="text" name="snumber" maxlength=30
					value="${sessionScope.bean.tel }" /> <span id="snumberSp"></span></td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;ַ�� <input type="text"
					value="${sessionScope.bean.adress }" name="sadress" maxlength=30 />
					<span id="sadressSp"></span></td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�ࣺ <input type="text"
					value="${sessionScope.bean.postcode }" name="spostcode"
					maxlength=30 /> <span id="spostcodeSp"></span></td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="����" title="����"
					style="border:none;width:100px; height:38px; cursor:pointer " />
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="����" title="����"
					style="border:none;width:100px; height:38px; cursor:pointer " /></td>

			</tr>
		</table>
	</form>
</body>
</html>
