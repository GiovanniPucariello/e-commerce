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

<title>�޸���Ʒ��Ϣ</title>

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
function changeImage(file){
		var img = document.getElementById("imgId");
		var s = "yyy";
		
		//�ж�ͼƬ��ʽjpg/png/gif/BMP �ļ��ĺ�׺
		var ext = file.substring(file.lastIndexOf(".")+1);
		//alert("ext="+ext);
		var regex = /^(jpg|png|gif|bmp)$/;
		//alert(regex.test(ext));
		if(regex.test(ext)){
			img.src=file;	
			
		}else{
			alert('ͼƬ��ʽ���Ϸ�jpg,png,gif,bmp');			
		}		
	}	

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
  
  function testSuser() {
	// �û���: ����, �ҳ��Ȳ�С��3;
	var user = sform.sname.value;
	var userSp = document.getElementById("snameSp");

	//var regex = /^a{3,15}$/;

	// alert(regex.test(sname));
	if (user != null && user != "") {
		if (user.length>=3&&user.lenth.length<=15) {
			userSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">��Ʒ���Ϸ�</font>";
			return true;
		} else {
			userSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">��Ʒ�����Ȳ��Ϸ�������Ӧ����3-15�ַ�!</font>";
		}
	} else {
		userSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">��Ʒ������Ϊ��!</font>";
	}
	return false;
}

function testNprice() {
	// �ʱ�: ����, ����6λ����;

	var nprice = sform.nprice.value;
	//alert(nprice);
	var npriceSp = document.getElementById("npriceSp");
	var regex = /^[-|+]?\d*([.]\d{0,2})?$/;
	if (nprice != null && nprice != "") {
		if (regex.test(nprice)) {
			npriceSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�۸�Ϸ�</font>";
			return true;
		} else {
			npriceSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�۸�������2λС��!</font>";
		}
	} else {
		npriceSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�۸���Ϊ��!</font>";
	}
	return false;
}
  
  function checkSform() {
	var t =   testNprice() && testSuser();
	//alert(t);
	return t;
}
  </script>
</head>

<body>
	<form method="post" action="AdminMcServlet?task=update&sid=${mcBean.nid}" name="sform" enctype="multipart/form-data"
		onsubmit="return checkSform();">
		<table width=800 height=100 border=0 cellpadding=5 align="center">
			<caption
				style="font-size: 20px;padding-bottom: 20px;padding-top: 30px">��Ʒ�޸�</caption>
			<tr>
				<td>��Ʒ���ƣ� <input type="text"  name="sname" value="${mcBean.sname }" maxlength=30 />
					<span id="snameSp"></span>
				</td>
			</tr>

			<tr>
				<td>��Ʒ�۸� <input type="text" name="nprice" maxlength=30
					value="${mcBean.nprice }" /> <span id="npriceSp"></span>
				</td>
			</tr>
			<tr>
				<td><font style="margin-top: 0px">��Ʒ����:</font>
				</td>
			</tr>
			<tr>
				<td width="200px"><textarea name="sdescription" title="��Ʒ����"
						cols="50" rows="10">${mcBean.sdescription }</textarea> <span id="sdescriptionSp" /></span>
				</td>
			</tr>
			<tr>
				<td>��ƷͼƬ��<input type="file" name="simg"  onchange="changeImage(this.value);"/>
  
				</td>
			</tr>
			<tr>
			<td> ͼƬ���:</td>
			</tr>
			<tr>
			<td><img src="" alt="��ʾ������Ҫ�ϴ���ͼƬ" width="100px" height="100px" id="imgId"/></td>
			</tr>
			<tr>
				<td>�Ƿ�ȱ���� <input type="radio" name="smctag" value="0"
					style="width:50px;" ${mcBean.smctag==0?"checked":""} /> ��
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="smctag" value="1"
					style="width:50px;" ${mcBean.smctag==1?"checked":""}/> ��</td>
			</tr>
			<tr>
				<td width="100">�������ࣺ<select class="index_select"
					name="nmaxid" id="nmaxid" onchange="getMin()">
						<option value="-1">��</option>
						<c:forEach items="${typeBeans}" var="maxtype" varStatus="vs">
							<c:if test="${maxtype.npid==0}">
								<option value="${maxtype.nid}" ${maxtype.nid==mcBean.nmaxid?'selected':''}>${maxtype.sname}</option>
							</c:if>
						</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
				<td width="100">����С�ࣺ<select class="index_select" name="nminid"
					id="nminid">
						<option value="-1">��</option>

						<c:forEach items="${typeBeans}" var="mintype" varStatus="vs">
							<c:if test="${mintype.npid==mcBean.nmaxid}">
								<option value="${mintype.nid}" ${mintype.nid==mcBean.nminid?'selected':''}>${mintype.sname}</option>
							</c:if>
						</c:forEach>
				</select>
				</td>
			</tr>

			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="����" title="����"
					style="border:none;width:100px; height:38px; cursor:pointer " />
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="����" title="����"
					style="border:none;width:100px; height:38px; cursor:pointer " />
				</td>

			</tr>
		</table>
	</form>
</body>
</html>
