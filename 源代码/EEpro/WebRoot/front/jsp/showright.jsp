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

<title>My JSP 'showright.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


</head>

<body>
	<DIV class="index_content_right">
		<DIV class="cut">
			<DIV class="cut_top provider opened"
				style="height: 90px; width: 180px; padding-top:20px;text-align: left;padding-left: 10px">
				<a class="linkYahei" href="<%=path%>/background/adminLogin.jsp" target="blank"><font
					color="rgb(22, 146, 116)" >��̨����</font>
				</a>
			</DIV>
			<UL>
				<LI style="width: 160px;text-align: center;"><A href="<%=path%>/front/jsp/userCenter/userPage.jsp">${fuser==null?'��½':fuser}</A></LI>
				<LI style="width: 160px;text-align: center;"><A href="<%=path %>/FquiteLogin">${fuser==null?'':'��ȫ�˳�'}</A></LI>
				
				<LI style="width: 180px;"><A href="<%=path%>/front/jsp/carPage.jsp">������<font color="red" size="5px">${car.totalCount==null?0:car.totalCount}</font>����Ʒδ���㣬����������빺�ﳵ</A></LI>
				
			</UL>
		</DIV>
		<DIV class="cut">
			<DIV class="cut_top collector"></DIV>
			<!-- <UL style="display: none;">
				<LI style="width: 60px;"><A href="">���۹���</A></LI>
				<LI style="width: 60px;"><A href="">������Ϣ</A></LI>
			</UL> -->
		</DIV>
		<DIV class="clearit"></DIV>
		<DIV class="right_news">
			<DIV class="right_news_top">
				<IMG src="<%=path%>/front/image/icon_index_right01.png">
			</DIV>
			<UL>
				<!-- ϵͳ���滺��10����begin -->
				<LI><A title="2013��4��20��ϵͳ��������"
					onClick="showNewsDetail('021001', '18222');"
					href="javascript:void(0);">2013��4��20��ϵͳ... </A></LI>
				<LI><A title="2013��3��29��ϵͳ��������"
					onClick="showNewsDetail('021001', '17919');"
					href="javascript:void(0);">2013��3��29��ϵͳ... </A></LI>

				<!-- ϵͳ���滺��10����end -->
				<LI style="text-indent: 80px;"><A href="">�鿴����</A></LI>
			</UL>
		</DIV>
		<DIV class="clearit"></DIV>
		<DIV class="right_img">
			<IMG src="<%=path%>/front/image/icon_index_right02.png">
		</DIV>
		<DIV class="clearit"></DIV>
		<DIV class="right_img">
			<IMG src="<%=path%>/front/image/icon_index_right03.png">
		</DIV>
		<DIV class="clearit"></DIV>
		<DIV class="right_img hotlines">
			<IMG style="cursor: pointer;"
				src="<%=path%>/front/image/icon_index_right04.png">
		</DIV>
		<DIV class="clearit"></DIV>
		<DIV class="right_input">
			<SELECT id="friendlink">
				<OPTION value="">------- �������� -------</OPTION>
				<OPTION value="http://www.taobao.com">�Ա���</OPTION>
				<OPTION value="http://www.fjut.edu.cn">��������ѧԺ</OPTION>
				<OPTION value="http://www.speedfull.com">��ӯ�Ƽ�</OPTION>
			</SELECT>
		</DIV>
	</DIV>
	


</body>
</html>
