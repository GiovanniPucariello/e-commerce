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
<script type="text/javascript">
var xmlHttp = null;
function createXmlHttpRequest() {
	//IE�����
	if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	} else {
		//���������
		xmlHttp = new XMLHttpRequest();
	}
}

function testSusername() {
	createXmlHttpRequest();
	var suser = document.all.suser.value;
	//ƴ��url
	var url = "<%=path%>/AjaxServletUrl?sname=" + suser + "&date="
			+ new Date().getTime();
	xmlHttp.open("GET", url, true);
	xmlHttp.onreadystatechange = dealRes;
	xmlHttp.send(null);
}

function dealRes() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			//��÷�������Ӧ�������ı�
			var text = xmlHttp.responseText;
			//alert('text=' + text);
			var suserSp = document.getElementById("suserSp");
			//document.all.spid.innerText=text;
			document.all.suserSp.innerHTML=text;

		}

	}

}
</script>

<title>ע��</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script language="javascript" src="<%=path%>/js/calendar.js"
	charset="GBK"></script>
<script language="javascript" src="<%=path%>/js/reg.js"></script>
</head>

<body>
	<form method="post" action="regServlet" name="sform" 
		onsubmit="return checkSform();">
		<table width=800 height=100 border=0 cellpadding=5 align="center">
			<caption
				style="font-size: 20px;padding-bottom: 20px;padding-top: 30px"><h2>��Աע��</h2></caption>
			<tr>
				<td>��&nbsp;��&nbsp;���� <input type="text" name="suser"
					maxlength=30 style="width: 170px"/><input type="button" style="width: 70px" value="���Կ���" onclick="testSusername()" /> <span id="suserSp" style="color:blue;"></span>
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�룺 <input type="password"
					name="spass" style="width: 170px"/> <span id="spassSp"></span>
				</td>
			</tr>
			<tr>
				<td>ȷ�����룺 <input type="password" name="srepass"  style="width: 170px"/> <span
					id="srepassSp"></span>
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�� <input type="radio" name="sex"
					value="��" style="width:50px;" checked="checked" />
					�� &nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="Ů"
					style="width:50px;"  />
					Ů</td>
			</tr>
			<tr>
				<td>��ʵ������ <input type="text" name="sname" maxlength=30 style="width: 170px"/> <span
					id="snameSp" /></span>
				</td>
			</tr>
			<tr>
				<td>�������ڣ� <input type="text" name="sdate" size="30"
					onfocus="javascript:{show_cele_date(this,'','',this);}" style="width: 170px"/> <span
					id="sdateSp"></span>
				</td>
			</tr>
			<tr>
				<td>�������䣺 <input type="text" name="semail" maxlength=30 style="width: 170px"/> <span
					id="semailSp"></span>
				</td>
			</tr>
			<tr>
				<td>�绰���룺 <input type="text" name="snumber" maxlength=30 style="width: 170px"/> <span
					id="snumberSp"></span>
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;ַ�� <input type="text"
					name="sadress" maxlength=30 style="width: 170px"/> <span id="sadressSp"></span>
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�ࣺ <input type="text"
					name="spostcode" maxlength=30 style="width: 170px"/> <span id="spostcodeSp"></span>
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="" title="����ע��" height="40px"
					style="border:none;background:url(<%=path%>/front/image/icon_zc.png) 
					 left top no-repeat;width:148px; height:48px; cursor:pointer " />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
