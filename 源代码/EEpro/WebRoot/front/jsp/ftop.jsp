<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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

<title>front top</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<LINK rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
<LINK rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_new.css">
<script src='<%=path%>/kf/jqqonline.js' language='JavaScript' charset='gb2312'></script>
</head>

<body>
	<DIV class="index_top">
		<DIV class="index_top_logo">
			<A href=""><IMG src="<%=path%>/front/image/icon_index_logo.png">
			</A>
		</DIV>
		<DIV class="index_top_search">
			<UL>
				<LI>
					<DIV class="index_top_search_icon">
						<IMG src="<%=path%>/front/image/icon_index_search01.png">
					</DIV>
					<DIV class="index_top_search_text">
						<A class="linkBlack" href="<%=path%>/front/jsp/loginPage.jsp" target="_blank">��¼</A>
					</DIV></LI>
				<LI>
					<DIV class="index_top_search_icon">
						<IMG src="<%=path%>/front/image/icon_index_search02.png">
					</DIV>
					<DIV class="index_top_search_text">
						<A class="linkBlack" href="<%=path%>/front/jsp/regPage.jsp" target="_blank">ע��</A>
					</DIV></LI>
				<LI>
					<DIV class="index_top_search_icon">
						<IMG src="<%=path%>/front/image/icon_index_search03.png">
					</DIV>
					<DIV class="index_top_search_text">
						<A class="linkBlack"
							onClick="window.external.AddFavorite(document.location.href,'��������ƽ̨')"
							href="javascript:void(0);">�ղ���վ</A>
					</DIV></LI>
			</UL>
		</DIV>
	</DIV>
	<!--  -->
	<DIV class="index_content">
		<!--  -->
		<DIV class="index_content_left">
			<!-- �������˵���ʼ     -->
			<DIV class="menu">
				<UL id="menu_items">
					<LI class="menu_item" style="padding-left: 140px;"><A
						class="linkYahei" href=""><font color="white">��ҳչʾ </font> </A>
					</LI>
					<LI class="menu_item"><A class="linkYahei" href="McServlet"><font
							color="white">��Ʒչʾ</font> </A>
					</LI>
					<LI class="menu_item"><A class="linkYahei" href="<%=path%>/front/jsp/userCenter/userPage.jsp"><font
							color="white">�û�����</font> </A>
					</LI>
					<LI class="menu_item"><A class="linkYahei" href="<%=path %>/MyOrderServlet?fuser=${sessionScope.fuser}"><font
							color="white">�ҵĶ���</font> </A>
					</LI>

					<LI class="menu_item"><A class="linkYahei" href="<%=path%>/front/jsp/carPage.jsp"><font
							color="white">������Ϣ</font> </A>
					</LI>

				
					<LI style="height: 38px; overflow: hidden; float: right;"><IMG
						src="<%=path%>/front/image/icon_index_column03.png">
					</LI>
				</UL>

			</DIV>

			
		</DIV>
	</DIV>
</body>
</html>
