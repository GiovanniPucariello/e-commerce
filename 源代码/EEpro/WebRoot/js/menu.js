function hide(id) {
		var tbody = document.getElementById("tbody" + id);
		var img = document.getElementById("img" + id);
		if (tbody.style.display == "none") {
			tbody.style.display = "block";
			img.src = "background/image/collapse.gif";
			img.title = "������ش����";
		} else {
			tbody.style.display = "none";
			img.src = "background/image/expand.gif";
			img.title = "�����ʾ�����";
		}
	}