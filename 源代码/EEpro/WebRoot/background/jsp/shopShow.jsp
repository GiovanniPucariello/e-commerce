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

<title>��Ʒչʾҳ��</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/reg.css">
<script type="text/javascript">
    function getMin(){
    var nmaxid=document.getElementById("nmaxid");
    var nminid=document.getElementById("nminid");
    var smax=nmaxid.selectedIndex;
	var i=1;
	nminid.options.length = 1;
      <c:forEach items="${typeBeans}" var="mintype" varStatus="vs">
      	if (${mintype.npid}==smax&&smax!=0) 
      	{
			nminid[i]=new Option("${mintype.sname}","${mintype.nid}");
			i++;
		}
	  </c:forEach>  
  }
  </script>

</head>

<body>
	<table width="780px" align="center" style="text-align: center;"
		border="0">


		<form action="BackMcServlet" method="post" name="form">
			<table width="100%">
				<tr>
					<td width="100" style="padding-left: 100px"><select
						class="index_select" name="nmaxid" id="nmaxid" onchange="getMin()">
							<option value="-1">-��������-</option>
							<c:forEach items="${typeBeans}" var="maxtype" varStatus="vs">
								<c:if test="${maxtype.npid==0}">
									<option value="${maxtype.nid}" ${maxtype.nid==smaxid?'selected':''}>${maxtype.sname}</option>
								</c:if>
							</c:forEach>
					</select></td>

					<td width="100"><select class="index_select" name="nminid"
						id="nminid">
							<option value="-1">-С������-</option>
							<!-- С���£�������ѯ�����������������еĴ����ŵ�����Ӧ�õ�С�࣬����?'selected':'' -->
							<c:forEach items="${typeBeans}" var="mintype" varStatus="vs">
								<c:if test="${mintype.npid==smaxid}">
									<option value="${mintype.nid}" ${mintype.nid==sminid?'selected':''}>${mintype.sname}</option>
								</c:if>
							</c:forEach>
					</select></td>
					<td width="150"><INPUT onBlur="if(!value){value='��������Ʒ����';}"
						class="index_top_input"
						onFocus="if(value == '��������Ʒ����'){this.value=''}" name="sname"
						value="${sname==null?'��������Ʒ����':sname}" type="text">
					</td>
					<td width="150"><INPUT
						style="border:none;background: url('<%=path%>/front/image/icon_index_search04.png')  left top no-repeat;
							width:41px; height:25px; cursor:pointer "
						type="submit" value="" title="�ύ����"></td>
						<td width="20%"><a href="<%=path%>/AddMcTypeServlet">�����Ʒ</a></td>
				</tr>
			</table>

		</form>

		<%-- <a href="<%=path%>/background/jsp/mainFrame.jsp">��̨</a> --%>
	

						<table border="1" style="width: 90%; margin-top: 40px; text-align: center;"
							align="center">
							<tr>
								<th>��Ʒ���</th>
								<th>��Ʒ����</th>
								<th>��Ʒ�۸�</th>
								<th>��Ʒ����</th>
								<th>��ƷͼƬ</th>
								<th>ȱ��</th>
								<th>�ϴ�ʱ��</th>
								<th>����</th>
								<th>С��</th>

								<th colspan="2">����</th>
							</tr>
							<c:if test="${empty beans}">
						<tr align="center" style="margin-top: 50px">
						<td colspan="11"><font color="red">û�ҵ�����Ϊ"${sname}"����Ʒ��</font>	
					</td>	</tr>
					</c:if>
							<c:forEach items="${beans}" var="bean" varStatus="vs">
								<form action="" method="post" name="form2">
									<tr>
										<!-- <td><input type="hidden" name="nid" /></td> -->
										<td>${bean.nid}</td>
										<td width="10%">${bean.sname}</td>
										<td>��${bean.nprice}</td>
										<td width="25%">${bean.sdescription}</td>
										<td rowspan="1" style="text-align:center;"><img
											width="60px" height="45px" alt="${bean.sname}"
											src="<%=path %>/mcimg/${bean.simg}">
										</td>
										<td>${bean.smctag}</td>
										<td>${bean.dcdate}</td>
										<td>${bean.nmaxid}</td>
										<td>${bean.nminid}</td>
										<td><a
											href="UpdateMcServlet?task='update'&sid=${bean.nid}">�޸�</a>
										</td>
										<td><a
											href="javascript:if(confirm('ȷ��ɾ������Ʒ��')){window.location.href='<%=path %>/AdminMcServlet?sid=${bean.nid}&task=remove';}">ɾ��</a>
										</td>
									</tr>
								</form>
							</c:forEach>
							<tr>
								<td colspan="11" align="center">${pageTool}</td>
							</tr>
						</table>
						</table>
				
</body>
</html>
