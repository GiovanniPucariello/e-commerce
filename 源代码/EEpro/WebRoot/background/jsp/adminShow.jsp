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

<title>����Ա�б�</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">

</head>

<body>
	<table width="780px" align="center" style="text-align: center;"
		border="1">


		<form action="AdminServlet" method="post" name="form">
			<table width="100%" border="0">
				<tr>
					<td width="25%" style="padding-left: 100px"><select
						class="index_select" name="sex" id="sex">
							<option value="-1">-�Ա�ѡ��-</option>

							<option value="��" ${sex=='��'?'selected':''}>��</option>
							<option value="Ů" ${sex=='Ů'?'selected':''}>Ů</option>

					</select></td>


					<td width="25%"><INPUT onBlur="if(!value){value='�������û���';}"
						class="index_top_input"
						onFocus="if(value == '�������û���'){this.value=''}" name="sname"
						value="${sname==null?'�������û���':sname}" type="text">
					</td>
					<td width="25%"><INPUT
						style="border:none;background: url('<%=path%>/front/image/icon_index_search04.png')  left top no-repeat;
							width:41px; height:25px; cursor:pointer "
						type="submit" value="" title="�ύ����"></td>
					<td width="25%"><a
						href="<%=path%>/background/jsp/addAdmin.jsp">���</a></td>
				</tr>

			</table>
		</form>

		<%-- <a href="<%=path%>/background/jsp/mainFrame.jsp">��̨</a> --%>



		<table border="1" style="width: 90%;margin-top: 40px; text-align: center;" align="center">
			<tr>
				<th>�û���</th>
				<th>�Ա�</th>
				<th>��ʵ����</th>
				<th>��������</th>
				<th>��������</th>
				<th>�绰����</th>
				<th>��ַ</th>
				<th>�ʱ�</th>

				<th colspan="2">����</th>
				
			</tr>
			<c:if test="${empty sessionScope.beans}">
				<tr align="center" style="margin-top: 50px">
					<td colspan="11"><font color="red">û�ҵ�����Ҫ��Ĺ���Ա�û���</font></td>
				</tr>
			</c:if>
			<c:forEach items="${sessionScope.beans}" var="bean" varStatus="vs">
				<form action="" method="post" name="form2">
					<tr>

						<td>${bean.user}</td>
						<td>${bean.sex}</td>
						<td>${bean.name}</td>
						<td>${bean.birth}</td>
						<td>${bean.email}</td>
						<td>${bean.tel}</td>
						<td>${bean.adress}</td>
						<td>${bean.postcode}</td>
						

						<td><a href="<%=path%>/UpdateServlet?suser=${bean.user}">�޸�</a>
						<td>
						<c:if test="${bean.status==1}">
						<a href="javascript:if(confirm('ȷ��ɾ�������'))
							{window.location.href='<%=path %>/AdminServlet?suser=${bean.user}&task=remove';}">ɾ��</a>
						</c:if>
						</td>

					</tr>
				</form>
			</c:forEach>

		</table>

	</table>
</table>
	<table>
	<tr><td></td></tr>
	<tr><td></td></tr>
	</table>

</body>
</html>
