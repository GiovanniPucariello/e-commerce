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

<title>��Ʒ���</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<!-- <link rel="stylesheet" type="text/css" href="/EEpro/css/left_css.css"> -->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
<script type="text/javascript">
	function add() {

		//var form = document.getElementById("addTypeForm");
		//var form="form"+id;
		//alert(form);
		var typeName = document.getElementById("typeName");
		//var regex = /^a{3,15}$/;
		//alert(count.value);
		if (typeName.value.length > 15 || typeName.value.length < 3) {//alert(count);
			alert("������Ƴ���3-15��");
			return false;
		} else {

			return true;

		}
	}
</script>

</head>

<body>
	<form action="<%=path%>/TypeAddServlet" name="addTypeForm"
		id="addTypeForm" method="post" onsubmit="return add();">
		<table width="500px" style="margin-top: 100px;margin-left: 100px;">
			<tr>

				<td width="" style="padding-left: 0">��ѡ����ࣺ&nbsp;&nbsp;<select
					class="index_select" name="nmaxid" id="nmaxid">
						<option value="0">��</option>
						<c:forEach items="${typeBeans}" var="maxtype" varStatus="vs">
							<c:if test="${maxtype.npid==0}">
								<option value="${maxtype.nid}">${maxtype.sname}</option>
							</c:if>
						</c:forEach>
				</select> <font style="font-style: italic;font-size: 15px">(��Ҫ����������ѡ���ޡ�)</font>
				</td>
			</tr>
			<tr>
				<td>�������������<input type="text" name="typeName" id="typeName">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="����" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
