function testSuser() {
	// �û���: ����, �ҳ��Ȳ�С��3;
	var user = sform.suser.value;
	var userSp = document.getElementById("suserSp");
	var span = document.getElementById("span");
	// var sname = document.all.sname.value;
	// �ʱ�У��
	// var regex = /[0-9]{6}/;//\d
	// �ʱ�У��
	// var regex = /^\d{6}$/;//\d
	// 6����Сд��ĸ
	// var regex = /^[a-zA-Z]{6}$/;//\d
	// ������֤ ����.��������.
	// var regex = /^\w+@\w+\.\w+\.?\w+$/;
	var regex = /^([a-zA-Z0-9]|[._]){3,15}$/;

	// alert(regex.test(sname));
	if (user != null && user != "") {
		if (regex.test(user)) {
			userSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/>";
			return true;
		} else {
			userSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/>";
			span.innerHTML = "<font color=\"red\">�û������Ȳ��Ϸ�������Ӧ����3-15�ַ�!</font>";
		}
	} else {
		userSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/>";
		span.innerHTML = "<font color=\"red\">�û�������Ϊ��!</font>";
	}
	return false;
}

function testSpass() {
	// ����: ����; �ҳ��Ȳ�С��3;
	var pass = sform.spass.value;
	var passSp = document.getElementById("spassSp");
	var span = document.getElementById("span");
	var regex = /^(\w){3,15}$/;
	if (pass != null && pass != "") {
		if (regex.test(pass)) {
			passSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/>";
			return true;
		} else {
			passSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/>";
			span.innerHTML = "<font color=\"red\">���볤�Ȳ��Ϸ�������Ӧ����3-15�ַ�!</font>";
		}
	} else {
		passSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/>";
		span.innerHTML = "<font color=\"red\">���벻��Ϊ��!</font>";
	}
	return false;
}




function checkSform() {
	var t = testSuser() && testSpass() ;
	// alert(t);
	return t;
}