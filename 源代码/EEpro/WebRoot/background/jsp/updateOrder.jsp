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

<title>�޸Ķ���</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	-->
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/reg.css">
<script type="text/javascript" src="<%=path%>/js/order.js"></script>

</head>

<body>
	<form action="<%=path %>/UpdateOrderServlet?nid=${order.nid}"
		method="post" name="sform">
		<table border="1" width="90%"
			style="text-align: center; margin-top: 20px" align="center">
			<caption>
				<h2 style="margin-top: 20px;margin-bottom: 20px;">��������</h2>
			</caption>

			<tr>
				<td >�������</td>
				<td >${order.nid}</td>
			</tr>
			<tr>
				<td>�µ�ʱ��</td>
				<td >${order.dgdate}</td>
			</tr>
			<tr>
				<td>���ʽ</td>
				<td style="text-align: left;"><input type="radio" name="pay" value="����֧��"
					${order.spayType== "����֧��"?"checked":""}/>����֧�� <input type="radio"
					name="pay" value="֧����֧��" ${order.spayType== "֧����֧��"?"checked":""}/>֧����֧��</td>

			</tr>
			<tr>
				<td>�ջ���ʽ</td>
				<td style="text-align: left;"><input type="radio" name="shipping" value="ֱ�Ӹ���"
					${order.ssendType== "ֱ�Ӹ���"?"checked":""}/>ֱ�Ӹ��� <input type="radio"
					name="shipping" value="��������" ${order.ssendType== "��������"?"checked":""}/>��������</td>

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
				<td><input type="text" name="sname" maxlength=30
					value="${order.ssname}" /> <span id="snameSp" /></span></td>
			</tr>
			<tr>
				<td>�ջ���ַ</td>
				<td><input type="text" name="sadress" maxlength=30
					value="${order.ssaddress}" /> <span id="sadressSp"></span></td>
			</tr>
			<tr>
				<td>�ջ��ʱ�</td>
				<td><input type="text" name="spostcode" maxlength=30
					value="${order.sscode}" /> <span id="spostcodeSp"></span></td>
			</tr>
			<tr>
				<td>�ջ��绰</td>
				<td><input type="text" name="snumber" maxlength=30
					value="${order.ssphone}" /> <span id="snumberSp"></span></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><input type="text" name="semail" maxlength=30
					value="${order.ssemail}" /> <span id="semailSp"></span></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="ȷ���޸�" /></td>
			</tr>

		</table>

	
	<%-- <table border="1" width="90%"
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
				<td><img src="<%=path%>/mcimg/${orderItem.simg}" width="80px"
					height="60px" /></td>
				<td>${orderItem.ncount}</td>
				<td>${orderItem.nprice}</td>
				<td>${orderItem.ntotalprice}</td>
			</tr>
		</c:forEach> --%>

		</form>
</body>
</html>
