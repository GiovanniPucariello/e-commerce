<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����ȷ��ҳ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/css/reg.css"> --%>
	
  </head>
  
  <body>
  <form action="<%=path %>/OderSureServlet" method="post" name="orderSureForm">
   	<table align="center">
   		<tr>
   		<td>֧����ʽ��</td>
   		<td><input type="radio" name="pay" value="����֧��" checked="checked"/>����֧��</td>
   		<td><input type="radio" name="pay" value="֧����֧��"/>֧����֧��</td>
   		</tr>
   		<tr>
   		<td>�ջ���ʽ��</td>
   		<td><input type="radio" name="shipping" value="ֱ�Ӹ���" checked="checked"/>ֱ�Ӹ���</td>
   		<td><input type="radio" name="shipping" value="��������"/>��������</td>
   		</tr>
   		<tr>
   		<td><input type="submit" value="ȷ�Ͻ���"/></td>
   		<td></td>
   		<td><input type="button" value="���ع��ﳵ" onclick="window.history.back()"/></td>
   		</tr>
   	</table>
   	</form>
  </body>
</html>
