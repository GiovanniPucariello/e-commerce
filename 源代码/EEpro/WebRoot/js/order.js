
function testSname() {
	// ��ʵ���� : ����; �ҳ��Ȳ��ܴ��� 15

	var name = sform.sname.value;
	var nameSp = document.getElementById("snameSp");
	
	if (name != null && name != "") {
		if (name.length <= 10&&name.length>=2) {
			nameSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�ջ������������Ϸ�</font>";
			return true;
		} else {
			nameSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ����������Ȳ��Ϸ�������2-10���ַ�!</font>";
		}
	} else {
		nameSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ�����������Ϊ��!</font>";
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
			emailSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�ջ�������Ϸ�</font>";
			return true;
		} else {
			emailSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ��������ʽ����!</font>";
		}

	} else {
		emailSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ����������!</font>";
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
			numberSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�ջ��˵绰�Ϸ�</font>";
			return true;
		} else {
			numberSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ��˵绰����������!</font>";
		}
	} else {
		numberSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ��˵绰����Ϊ��!</font>";
	}
	return false;
}

function testSadress() {
	// ��ַ: ����, �ҳ��Ȳ��ܴ���100

	var adress = sform.sadress.value;
	var adressSp = document.getElementById("sadressSp");

	if (adress != null && adress != "") {
		if (adress.length <= 100 && adress.length >= 3) {
			adressSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�ջ��˵�ַ�Ϸ�</font>";
			return true;
		} else {
			adressSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ��˵�ַ���Ȳ��Ϸ�������3-100���ַ�!</font>";
		}
	} else {
		adressSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ��˵�ַ����Ϊ��!</font>";
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
			postcodeSp.innerHTML = "<img src=\"front/image/agree_ok.gif\"/><font color=\"green\">�ջ����ʱ�Ϸ�</font>";
			return true;
		} else {
			postcodeSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ����ʱ����Ϊ��λ����!</font>";
		}
	} else {
		postcodeSp.innerHTML = "<img src=\"front/image/agree_no.gif\"/><font color=\"red\">�ջ����ʱ಻��Ϊ��!</font>";
	}
	return false;
}

function checkSform() {
	var t =  testSname() && testSemail() && testSnumber() && testSadress() && testSpostcode();
	// alert(t);
	return t;
}