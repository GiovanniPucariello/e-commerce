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

<title>menu</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
<link rel="stylesheet" type="text/css" href="/EEpro/css/left_css.css">
<script type="text/javascript" src="<%=path%>/js/menu.js"></script>

</head>
<!-- <body background="<%=path%>/background/image/p_bg.gif" style="margin:0;"> -->
<body>
	<table width="180" border="0px">
		<tr>
			<td width="5%"><img
				src="<%=path%>/background/image/collapse.gif" title="������ش����"
				width="20" height="20" id="img1" onclick="hide(1)"
				style="cursor:pointer" />
			</td>
			<td width="95%">��Ʒ����</td>
		</tr>
		<tbody style="display:block" id="tbody1">
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="McTypeServlet" target="rightFrame">��Ʒ������</a></td>
			</tr>
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="BackMcServlet" target="rightFrame">��Ʒ��Ϣ����</a></td>
			</tr>
		</tbody>
		<tr>
			<td><img src="<%=path%>/background/image/collapse.gif"
				title="������ش����" width="20" height="20" id="img2" onclick="hide(2)"
				style="cursor:pointer" />
			</td>
			<td>�û�����</td>
		</tr>
		<tbody style="display:block" id="tbody2">
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="<%=path %>/UserServlet" target="rightFrame">ע���û�����</a>
				</td>
			</tr>
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="<%=path %>/AdminServlet" target="rightFrame">����Ա�û�����</a>
				</td>
			</tr>
		</tbody>
		<tr>
			<td><img src="<%=path%>/background/image/collapse.gif"
				title="������ش����" width="20" height="20" id="img3" onclick="hide(3)"
				style="cursor:pointer" />
			</td>
			<td>��������</td>
		</tr>
		<tbody style="display:block" id="tbody3">
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="<%=path %>/BorderServlet" target="rightFrame">�鿴����</a>
				</td>
			</tr>
			
		</tbody>
		<tr>
			<td><img src="<%=path%>/background/image/collapse.gif"
				title="������ش����" width="20" height="20" id="img4" onclick="hide(4)"
				style="cursor:pointer" />
			</td>
			<td>��������</td>
		</tr>
		<tbody style="display:block" id="tbody4">
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="<%=path %>/background/jsp/basics.jsp" target="rightFrame">�鿴��������</a>
				</td>
			</tr>
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="<%=path%>/background/jsp/updateAdmin.jsp" target="rightFrame">�޸Ļ�������</a>
				</td>
			</tr>
			<tr>
				<td><img src="<%=path%>/background/image/closed.gif" />
				</td>
				<td align="left"><a href="<%=path%>/background/jsp/updatePass.jsp" target="rightFrame">�޸�����</a>
				</td>
			</tr>
		</tbody>

		<tr>

			<td><img src="<%=path%>/background/image/closed.gif" />
			</td>
			<td><a href="<%=path %>/QuitLogin" target="_top">��ȫ�˳�</a></td>
		</tr>
	</table>
</body>
</html>
