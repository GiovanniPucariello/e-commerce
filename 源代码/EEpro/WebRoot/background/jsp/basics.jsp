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

<title>��������</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="/EEpro/css/right_css.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
</head>

<body>
	
	<table width=300 height=100 border=0 cellpadding=5 align="center">
		<caption
			style="font-size: 20px;padding-bottom: 20px;padding-top: 30px">��Ա����</caption>
		<tr>
			<td>��&nbsp;��&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.suser}
		</tr>

		<tr>
			<td>��&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.sex }</td>
		</tr>
		<tr>
			<td>��ʵ������&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.name }</td>
			</tr>
			<tr>
				<td>�������ڣ�&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.birth }
				</td>
			</tr>
			<tr>
				<td>�������䣺&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.email }
				</td>
			</tr>
			<tr>
				<td>�绰���룺&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.tel }
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;ַ��&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.adress }
				</td>
			</tr>
			<tr>
				<td>��&nbsp;&nbsp;&nbsp;&nbsp;�ࣺ&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.bean.postcode }
				</td>
			</tr>
			
		</table>
	<br>
</body>
</html>
