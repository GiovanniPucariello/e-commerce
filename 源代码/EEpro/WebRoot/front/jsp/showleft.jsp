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

<title>My JSP 'showleft.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<LINK rel="stylesheet" type="text/css" href="<%=path%>/css/common.css">
<LINK rel="stylesheet" type="text/css"
	href="<%=path%>/css/index_new.css">
</head>

<body>
	<DIV class="homebanner" >
		<DIV id="YSlide" >
			<P style="display: block;" class="YSample">
				<A href="McServlet"><IMG style="opacity: 1;"
					src="<%=path%>/front/image/8a82014c3be5190b013c12f0f5281ad4_sgcc01.jpg">
				</A>
			</P>
			<P style="display: none;" class="YSample">
				<A href="McServlet"><IMG style="opacity: 1;"
					src="<%=path%>/front/image/8a82014c3be5190b013c12f1543d1ad5_sgcc02.jpg">
				</A>
			</P>
			<P style="display: none;" class="YSample">
				<A href="McServlet"><IMG style="opacity: 1;"
					src="<%=path%>/front/image/8a82014c3be5190b013c12f1a2c41ad6_sgcc03.jpg">
				</A>
			</P>
			<P style="display: none;" class="YSample">
				<A href="McServlet"><IMG
					src="<%=path%>/front/image/8a82014c3be5190b013c12f1f19f1ad7_sgcc04.jpg">
				</A>
			</P>
			<P id="YSIndex">
				<A class="  current" href="javascript:;">1</A><A class="  current"
					href="javascript:;">2</A><A class="  current" href="javascript:;">3</A><A
					class="  current" href="javascript:;">4</A>
			</P>
		</DIV>
		<SCRIPT language="javascript" type="text/javascript"
			src="<%=path%>/js/yao.js"></SCRIPT>
		<SCRIPT language="javascript" type="text/javascript">
			YAO.YTabs({
				tabs : YAO.getEl('YSIndex').getElementsByTagName('a'),
				contents : YAO.getElByClassName('YSample', 'p', 'YSlide'),
				defaultIndex : 0,
				auto : true,
				fadeUp : true
			});
		</SCRIPT>
	</DIV>
	<!-- Banner���λ����ͼƬ End -->
	<DIV class="clearit"></DIV>
	<DIV class="index_new_gg">
		<DIV class="index_new_gg_left">���¹���</DIV>
		<DIV class="index_new_gg_rihgt">
			<MARQUEE onMouseOver="this.stop()" onMouseOut="this.start()"
				direction="left" height="32" behavior="type" loop="-1"
				scrollAmount="3" aligh="left">

				<A onclick="" href="McServlet"><SPAN
					style="color: rgb(255, 0, 0); font-weight: 700;">100%��Ʒ�л�,��������.�����Ź�,�ͼ����ͻ���,�����̳�,������ֵ�լ��,����������߹���!</SPAN>
				</A>

			</MARQUEE>
		</DIV>
	</DIV>




	<DIV class="clearit"></DIV>

	<DIV class="clearit"></DIV>
	<DIV class="tab_div">
		<DIV class="index_con2">
			<DIV class="Menubox">
				
				<DIV style="line-height: 24px; float: right;">
					
				</DIV>
			</DIV>
			<!--  end of menubox -->
			<!-- start of scroll area //-->
			<DIV class="scroll-area">
				<DIV class="noticeList"></DIV>
			</DIV>
			<!-- end of scroll area //-->
		</DIV>
		<!--  end of index_con2 -->
		<DIV class="tab_right">
			<DIV class="tab_right_content">
				<DIV class="tab_right_content_top" style="height: 35px">
					<P align="left">����ר��</P>
					<SPAN><A class="linkWhite12" href="">����&gt;&gt;</A> </SPAN>
				</DIV>
				<DIV
					style='background: url("<%=path%>/front/image/bg_index_tab01.png") no-repeat right bottom;'
					class="tab_right_content_bg">
					<UL>
						
						<LI><A style="text-align: left;" href="">˵������</A></LI>


					</UL>
				</DIV>
			</DIV>
			<DIV style="margin-top: 15px;" class="tab_right_content">
				<DIV class="tab_right_content_top" style="height: 40px;text-align: left;">
					<P>
						<A class="linkWhite12" href="" style="height: 35px"><STRONG>ҵ�񳣼�����</STRONG> </A>
					</P>
				</DIV>
				<DIV class="tab_right_content_bg">
					<TABLE style="margin: 0px 0px 0px;" cellSpacing="8" align="center">
						<TBODY>
							<TR>
								<TD height="16" vAlign="top"><SPAN
									style="padding-right: 5px; float: left;"><IMG
										src="<%=path%>/front/image/1.png"> </SPAN><A href="">����֧��</A>
								</TD>
								<TD height="16" vAlign="top"><SPAN
									style="padding-right: 5px; float: left;"><IMG
										src="<%=path%>/front/image/2.png"> </SPAN><A href="">�����Ż�</A>
								</TD>
							</TR>
							<TR>
								<TD height="16" vAlign="top"><SPAN
									style="padding-right: 5px; float: left;"><IMG
										src="<%=path%>/front/image/3.png"> </SPAN><A href="">��Աע��</A>
								</TD>
								<TD height="16" vAlign="top"><SPAN
									style="padding-right: 5px; float: left;"><IMG
										src="<%=path%>/front/image/4.png"> </SPAN><A href="">�����ͻ�</A>
								</TD>
							</TR>
							
						</TBODY>
					</TABLE>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
	</DIV>

</body>
</html>
