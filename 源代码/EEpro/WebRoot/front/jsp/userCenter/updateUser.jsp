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
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/list.css"/>
<script language="javascript" src="<%=path%>/js/calendar.js"
	charset="GBK"></script>
<script language="javascript" src="<%=path%>/js/update.js"></script>
</head>

<body>
<table align="center" width="90%" border="0" height="20px" style="text-align: center;font-size: 40px;">
	<tr>
	<td><a href="<%=path%>/front/jsp/userCenter/userPage.jsp"><font size="3" >��������</font></a></td>
	<td><a href="<%=path%>/front/jsp/userCenter/updateUserPage.jsp"><font size="3">�û������޸�</font></a></td>
	<td><a href="<%=path%>/front/jsp/userCenter/updatePassPage.jsp"><font size="3">�û������޸�</font></a></td>
	<td><a href="<%=path %>/MyOrderServlet?fuser=${sessionScope.fuser}"><font size="3">�ҵĶ���</font></a></td>

	</tr>
	</table>
	<form method="post" action="UpdaUserInfoServlet?task=update&suser=${fbean.user}" name="sform"
		onsubmit="return checkSform();">
		<table width=600 height=100 border=0 cellpadding=5 align="center">
			<caption
				style="font-size: 20px;padding-bottom: 20px;padding-top: 30px">�޸Ļ�������</caption>
			<tr>
				<td>��&nbsp;��&nbsp;���� <input type="text" disabled="disabled"
					name="suser" value="${fbean.user}" maxlength=30 style="width: 200px;"/> <span
					id="suserSp"></span></td>
			</tr>

			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�� <input type="radio" name="sex"
					value="��" style="width:50px;"
					${fbean.sex=="��"?"checked":""} /> ��
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="Ů"
					${fbean.sex=="Ů"?"checked":"" }
					style="width:50px;" /> Ů</td>
			</tr>
			<tr>
				<td>��ʵ������ <input type="text" name="sname" maxlength=30
					value="${fbean.name }" style="width: 200px;"/> <span id="snameSp" /></span></td>
			</tr>
			<tr>
				<td>�������ڣ� <input type="text" name="sdate" size="30" style="width: 200px;"
					value="${fbean.birth }"
					onfocus="javascript:{show_cele_date(this,'','',this);}" /> <span
					id="sdateSp"></span></td>
			</tr>
			<tr>
				<td>�������䣺 <input type="text" name="semail" maxlength=30
					value="${fbean.email }" style="width: 200px;"/> <span id="semailSp"></span>
				</td>
			</tr>
			<tr>
				<td>�绰���룺 <input type="text" name="snumber" maxlength=30
					value="${fbean.tel }" style="width: 200px;"/> <span id="snumberSp"></span></td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;ַ�� <input type="text" style="width: 200px;"
					value="${fbean.adress }" name="sadress" maxlength=30 />
					<span id="sadressSp"></span></td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�ࣺ <input type="text"
					value="${fbean.postcode }" name="spostcode"
					maxlength=30 style="width: 200px;"/> <span id="spostcodeSp"></span></td>
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
