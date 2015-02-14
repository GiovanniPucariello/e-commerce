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

<title>��������</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
<script language="javascript" src="<%=path%>/js/calendar.js"
	charset="GBK"></script>
</head>

<body>
	<table width="90%" style="text-align: center; margin-top: 20px"
		border="0">


		<form action="<%=path%>/BorderServlet" method="post" name="orderForm">
			<table width="100%">
				<tr>
					<td width="100" style="padding-left: 100px"><select
						class="index_select" name="sstatus" id="sstatus">
							<option value="-1">-���״̬-</option>
							<option value="δ���" ${sstatus=='δ���'?'selected':''}>δ���</option>
							<option value="ͨ��" ${sstatus=='ͨ��'?'selected':''}>ͨ��</option>
							<option value="��ͨ��" ${sstatus=='��ͨ��'?'selected':''}>��ͨ��</option>

					</select></td>


					<td width="150"><INPUT onBlur="if(!value){value='�������û���';}"
						class="index_top_input" style="width: 130px"
						onFocus="if(value == '�������û���'){this.value=''}" name="scuser"
						value="${scuser==null?'�������û���':scuser}" type="text">
					</td>

					<td width="150"><INPUT onBlur="if(!value){value='�������µ���ʼ����';}"
						class="index_top_input" style="width: 130px"
						onFocus="if(value == '�������µ���ʼ����'){this.value=''};javascript:{show_cele_date(this,'','',this);}"
						name="sdgdate" value="${sdgdate==null?'�������µ���ʼ����':sdgdate}"
						type="text"> -</td>

					<td width="150"><INPUT onBlur="if(!value){value='�������µ���������';}"
						class="index_top_input" style="width: 130px"
						onFocus="if(value == '�������µ���������'){this.value=''};javascript:{show_cele_date(this,'','',this);}"
						name="edgdate" value="${edgdate==null?'�������µ���������':edgdate}"
						type="text">
					</td>

					<td width="150"><INPUT onBlur="if(!value){value='��������Ʒ����';}"
						class="index_top_input" style="width: 130px"
						onFocus="if(value == '��������Ʒ����'){this.value=''}" name="smcname"
						value="${smcname==null?'��������Ʒ����':smcname}" type="text">
					</td>
					<td width="150"><INPUT
						style="border:none;background: url('<%=path%>/front/image/icon_index_search04.png')  left top no-repeat;
							width:41px; height:25px; cursor:pointer "
						type="submit" value="" title="�ύ����"></td>


				</tr>
			</table>

		</form>




		<table border="1"
			style="width: 90%; margin-top: 40px; text-align: center;"
			align="center">
			<tr>
				<th>�������</th>
				<th>�û���</th>
				<th>�µ�ʱ��</th>
				<th>����״��</th>
				<th>�������</th>
				<th>��Ʒ����</th>
				<th colspan="3">����</th>
			</tr>
			<c:if test="${empty orders}">
				<tr align="center" style="margin-top: 50px">
					<td colspan="11"><font color="red">û�ҵ�����Ҫ��Ķ�����</font></td>
				</tr>
			</c:if>
			<c:forEach items="${orders}" var="order" varStatus="vs">

				<tr>

					<td>${order.nid}</td>
					<td>${order.scuser}</td>
					<td>${order.dgdate}</td>
					<td>${order.sstatus}</td>
					<td>${order.ntotalPrice}</td>
					<td>${order.nmcSize}</td>
					<td><a href="InUpdateOrderServlet?sid=${order.nid}">�޸Ķ���</a>
					</td>
					<td><a href="<%=path %>/BviewOrderServlet?&sid=${order.nid}">�鿴��ϸ</a>
					</td>
					<td><a
						href="<%=path %>/background/jsp/checkOrder.jsp?sid=${order.nid}">�޸Ķ���״̬</a>
					</td>

				</tr>

			</c:forEach>
			<tr>
				<td colspan="11" align="center">${pageTool}</td>
			</tr>
		</table>
	</table>
</body>
</html>
