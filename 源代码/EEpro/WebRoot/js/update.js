function testSuser() {
	// �û���: ����, �ҳ��Ȳ�С��3;
	var user = sform.suser.value;
	var userSp = document.getElementById("suserSp");
	// var sname = document.all.sname.value;
	// �ʱ�У��
	// var regex = /[0-9]{6}/;//\d
	// �ʱ�У��
	// var regex = /^\d{6}$/;//\d
	// 6����Сд��ĸ
	// var regex = /^[a-zA-Z]{6}$/;//\d
	// ������֤ ����.��������.
	// var regex = /^\w+@\w+\.\w+\.?\w+$/;
	var regex = /^([a-zA-Z0-9]|[._]){3,12}$/;

	// alert(regex.test(sname));
	if (user != null && user != "") {
		if (regex.test(user)) {
			userSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�û����Ϸ�</font>";
			return true;
		} else {
			userSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�û������Ȳ��Ϸ�������Ӧ����3-12�ַ�!</font>";
		}
	} else {
		userSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�û�������Ϊ��!</font>";
	}
	return false;
}



function testSname() {
	// ��ʵ���� : ����; �ҳ��Ȳ��ܴ��� 15

	var name = sform.sname.value;
	var nameSp = document.getElementById("snameSp");
	regex = /^a{0,15}$/;
	if (name != null && name != "") {
		if (name.length <= 15) {
			nameSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">��ʵ�����Ϸ�</font>";
			return true;
		} else {
			nameSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">��ʵ�������Ȳ��Ϸ������Ȳ��ܴ���15���ַ�!</font>";
		}
	} else {
		nameSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">��ʵ��������Ϊ��!</font>";
	}
	return false;
}

function testSdate() {
	// ��������: ����
	var date = sform.sdate.value;
	var dateSp = document.getElementById("sdateSp");
	if (date != null && date != "") {

		dateSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�������ںϷ�</font>";
		return true;
	} else {
		dateSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�������ڱ���!</font>";
	}

	return false;
}

function testSemail() {
	// ��������: ����
	var email = sform.semail.value;
	var emailSp = document.getElementById("semailSp");
	var regex = /^\w+@\w+\.\w+\.?\w+$/;
	if (email != null && email != "") {
		if (regex.test(email)) {
			emailSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">��������Ϸ�</font>";
			return true;
		} else {
			emailSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">���������ʽ����!</font>";
		}

	} else {
		emailSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�����������!</font>";
	}
	return false;

}

function testSnumber() {
	// �绰����: ����, ��������;

	var number = sform.snumber.value;
	var numberSp = document.getElementById("snumberSp");
	var regex = /^\d+$/;// \d
	if (number != null && number != "") {
		if (regex.test(number)) {
			numberSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�绰����Ϸ�</font>";
			return true;
		} else {
			numberSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�绰�������������!</font>";
		}
	} else {
		numberSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�绰���벻��Ϊ��!</font>";
	}
	return false;
}

function testSadress() {
	// ��ַ: ����, �ҳ��Ȳ��ܴ���100

	var adress = sform.sadress.value;
	var adressSp = document.getElementById("sadressSp");

	if (adress != null && adress != "") {
		if (adress.length <= 100) {
			adressSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">��ַ�Ϸ�</font>";
			return true;
		} else {
			adressSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">��ַ���Ȳ��Ϸ������Ȳ��ܴ���100���ַ�!</font>";
		}
	} else {
		adressSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">��ַ����Ϊ��!</font>";
	}
	return false;
}

function testSpostcode() {
	// �ʱ�: ����, ����6λ����;

	var postcode = sform.spostcode.value;
	var postcodeSp = document.getElementById("spostcodeSp");
	var regex = /^\d{6}$/;// \d
	if (postcode != null && postcode != "") {
		if (regex.test(postcode)) {
			postcodeSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�ʱ�Ϸ�</font>";
			return true;
		} else {
			postcodeSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ʱ����Ϊ��λ����!</font>";
		}
	} else {
		postcodeSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ʱ಻��Ϊ��!</font>";
	}
	return false;
}

function checkSform() {
	var t = testSuser()  && testSname()
			&& testSdate() && testSemail() && testSnumber() && testSadress()
			&& testSpostcode();
	// alert(t);
	return t;
}