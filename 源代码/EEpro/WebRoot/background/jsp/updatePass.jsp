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

<title>�޸�����</title>

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
<script language="javascript" >
function testSoldpass() {
	// ����: ����; �ҳ��Ȳ�С��3;
	var pass = sform.spass.value;
	var passSp = document.getElementById("soldpassSp");
	var regex = /^(\w){3,15}$/;
	if (pass != null && pass != "") {
		if (regex.test(pass)) {
			passSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">����Ϸ�</font>";
			return true;
		} else {
			passSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">���볤�Ȳ��Ϸ�������Ӧ����3-15�ַ�!</font>";
		}
	} else {
		passSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">���벻��Ϊ��!</font>";
	}
	return false;
}

function testSpass() {
	// ����: ����; �ҳ��Ȳ�С��3;
	var pass = sform.spass.value;
	var passSp = document.getElementById("spassSp");
	var regex = /^(\w){3,15}$/;
	if (pass != null && pass != "") {
		if (regex.test(pass)) {
			passSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">����Ϸ�</font>";
			return true;
		} else {
			passSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">���볤�Ȳ��Ϸ�������Ӧ����3-15�ַ�!</font>";
		}
	} else {
		passSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">���벻��Ϊ��!</font>";
	}
	return false;
}

function testSrepass() {
	// ȷ������: ֵҪ�� ������ֵ ��ͬ
	var pass = sform.spass.value;
	var repass = sform.srepass.value;
	var repassSp = document.getElementById("srepassSp");
	if (pass == repass) {

		repassSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">ȷ��������ȷ</font>";
		return true;
	} else {
		repassSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">ȷ�����������벻һ��!</font>";
	}

	return false;
}

function checkSform() {
	var t = testSoldpass() && testSrepass() && testSpass();
	// alert(t);
	return t;
}
</script>
</head>

<body>
	<form method="post" action="<%=path %>/UpdateBasicServlet?task=pass&suser=${sessionScope.suser}" name="sform"
		onsubmit="return checkSform();">
		<table width=800 height=100 border=0 cellpadding=5 align="center">
			<caption
				style="font-size: 20px;padding-bottom: 20px;padding-top: 30px">�޸�����</caption>
			<tr>
				<td>��&nbsp;��&nbsp;�룺 <input type="password"
					name="soldpass" /> <span id="soldpassSp"></span>
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�룺 <input type="password"
					name="spass" /> <span id="spassSp"></span>
				</td>
			</tr>
			<tr>
				<td>ȷ�����룺 <input type="password" name="srepass" /> <span
					id="srepassSp"></span>
				</td>
			</tr>
			
			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="�޸�" title="�޸�"
					style="border:none;width:100px; height:38px; cursor:pointer " />
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="����" title="����"
					style="border:none;width:100px; height:38px; cursor:pointer " /></td>

			</tr>
		</table>
	</form>
</body>
</html>
