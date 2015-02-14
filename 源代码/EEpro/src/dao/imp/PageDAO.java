/*
 *
 */
package dao.imp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import dao.db.DbConnection;




public class PageDAO {
	public static final String Text = "text";

	public static final String Image = "image";

	public static final String BbsText = "bbstext";

	public static final String BbsImage = "bbsimage";

	private HttpServletRequest request;

	private int currentPage = 1; // ��ǰ�ǵڼ�ҳ

	private int pageCount = 0; // һ���ж���ҳ

	private int rscount = 0; // һ���ж�����

	private int pagesize = 5; // ÿҳ�ж�����[Ĭ��Ϊ20��]

	public PageDAO(HttpServletRequest request) {
		this.request = request;
	}



	public void setcurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	

	public void setPageCount(int pagecount) {
		this.pageCount = pagecount;
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public int getRscount() {
		return rscount;
	}

	public void setRscount(int rscount) {
		this.rscount = rscount;
	}

	/**
	 * ����SQL����ȡ�ܼ�¼��
	 */
	public int getRsCountForSQL(String sql) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DbConnection.getCon();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				this.rscount = rs.getInt(1);
			} else {
				this.rscount = 0;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			this.rscount = 0;
		} finally {
			DbConnection.close(conn, stmt, rs);
		}
		return this.rscount;
	}

	/**
	 * ��ȡ��ҳ��
	 * 
	 * @return int
	 */
	public int getPageCount() {
		try {
			this.pageCount = ((this.rscount - 1) / this.pagesize) + 1;
		} catch (Exception ex) {
			this.pageCount = 0;
		}
		return this.pageCount;
	}

	/**
	 * ��ȡ��ǰҳ�������
	 * 
	 * @return int
	 */
	public int getCurrentPage() {
		try {
			if (this.request.getParameter("currentPage") != null
					&& Integer.parseInt(this.request
							.getParameter("currentPage")) > 1) {
				this.currentPage = Integer.parseInt(this.request
						.getParameter("currentPage"));
			} else {
				this.currentPage = 1;
			}
		} catch (Exception ex) {
			this.currentPage = 1;
		}
		return this.currentPage;
	}

	/**
	 * ��ҳ������
	 * 
	 * @param fileName
	 *            String
	 * @return String
	 */
	public String pagetool(String flag) {
		
		getPageCount();
		
		
		
		
		StringBuffer str = new StringBuffer();
		String temp = "";
		String url = this.getParamUrl();
		int ProPage = this.currentPage - 1;
		int Nextpage = this.currentPage + 1;
		// ���ֵķ�ҳ
		if (flag.equals(PageDAO.Text)) {
			str.append("<form method='post' name='pageform' action=''>");
			str
					.append("<table width='100%' border='0' cellspacing='0' cellpadding='0'>");
			str.append("<tr>");
			str.append("<td width='3%'>&nbsp;</td>");
			str.append("<td height='36' width='40%'>");
			str.append("���м�¼" + this.rscount + "��&nbsp;&nbsp;&nbsp;");
			str.append("��" + this.pageCount + "ҳ&nbsp;&nbsp;&nbsp;");
			str.append("ÿҳ" + this.pagesize + "��¼&nbsp;&nbsp;&nbsp;");
			str.append("����" + this.currentPage + "/" + this.pageCount + "ҳ");
			str.append("</td><td>");
			if (this.currentPage > 1) {
				str.append("<a style='width: 60px' href='" + url + "currentPage=1'>��ҳ</a>");
				str.append("&nbsp;");
				str.append("<a style='width: 60px' href='" + url + "currentPage=" + ProPage
						+ "'>��һҳ</a>");
				str.append("&nbsp;&nbsp;&nbsp;");
			} else {
				str.append("��ҳ");
				str.append("&nbsp;&nbsp;&nbsp;");
				str.append("��һҳ");
				str.append("&nbsp;&nbsp;&nbsp;");
			}
			if (this.currentPage < this.pageCount) {
				str.append("<a style='width: 60px' href='" + url + "currentPage=" + Nextpage
						+ "'>��һҳ</a>");
				str.append("&nbsp;&nbsp;&nbsp;");
			} else {
				str.append("��һҳ");
				str.append("&nbsp;&nbsp;&nbsp;");
			}
			if (this.pageCount > 1 && this.currentPage != this.pageCount) {
				str.append("<a style='width: 60px' href='" + url + "currentPage=" + pageCount
						+ "'>βҳ</a>");
				str.append("&nbsp;&nbsp;&nbsp;");
			} else {
				str.append("βҳ");
				str.append("&nbsp;&nbsp;&nbsp;");
			}
			str.append("ת��");
			str
					.append("<select name='currentPage' onchange='javascript:ChangePage(this.value);'>");
			for (int j = 1; j <= pageCount; j++) {
				str.append("<option value='" + j + "'");
				if (currentPage == j) {
					str.append("selected");
				}
				str.append(">");
				str.append("" + j + "");
				str.append("</option>");
			}
			str.append("</select>ҳ");
			str.append("</td><td width='3%'>&nbsp;</td></tr></table>");
			str.append("<script language='javascript'>");
			str.append("function ChangePage(testpage){");
			str.append("document.pageform.action='" + url
					+ "&currentPage='+testpage+'';");
			str.append("document.pageform.submit();");
			str.append("}");
			str.append("</script>");
			str.append("</form>");
		} else if (flag.equals(PageDAO.Image)) {
			/**
			 * ͼƬ�ķ�ҳ
			 */

		} else if (flag.equals(PageDAO.BbsText)) {
			/**
			 * ��̳��ʽ�ķ�ҳ[ֱ�������ַ�ʽ����]
			 */
			str
					.append("<table width='100%' border='0' cellspacing='0' cellpadding='0'>");
			str.append("<tr>");
			str.append("<td width='3%'>&nbsp;</td>");
			str.append("<td height='26'>");
			str.append("��¼" + this.rscount + "��&nbsp;&nbsp;");
			str.append("��" + this.pageCount + "ҳ&nbsp;&nbsp;");
			str.append("ÿҳ" + this.pagesize + "��¼&nbsp;&nbsp;");
			str.append("����" + this.currentPage + "/" + this.pageCount + "ҳ");
			str.append("</td><td>");
			// �趨�Ƿ�����ҳ������
			if (this.currentPage > 1) {
				str.append("<a href='" + url + "&currentPage=1'>��ҳ</a>");
				str.append("&nbsp;&nbsp;");
			}
			// �趨�Ƿ�����һҳ������
			if (this.currentPage > 1) {
				str.append("<a href='" + url + "&currentPage=" + ProPage
						+ "'>��һҳ</a>");
				str.append("&nbsp;&nbsp;&nbsp;");
			}
			// �����ҳ��ֻ��10�Ļ�
			if (this.pageCount <= 10) {
				for (int i = 1; i <= this.pageCount; i++) {
					if (this.currentPage == i) {
						str.append("<font color=red>[" + i
								+ "]</font>&nbsp;&nbsp;");
					} else {
						str.append("<a href='" + url + "&currentPage=" + i
								+ "'>" + i + "</a>&nbsp;&nbsp;");
					}
				}
			} else {
				// ˵�������г���10ҳ
				// �ƶ��ػ��Ŀ�ʼҳ�ͽ���ҳ

				int endPage = this.currentPage + 4;
				if (endPage > this.pageCount) {
					endPage = this.pageCount;
				}
				int startPage = 0;
				if (this.pageCount >= 8 && this.currentPage >= 8) {
					startPage = this.currentPage - 5;
				} else {
					// ��ʾ�ӵ�һҳ��ʼ��
					startPage = 1;
				}
				System.out.println(startPage);
				System.out.println(endPage);
				for (int i = startPage; i <= endPage; i++) {
					if (this.currentPage == i) {
						str.append("<font color=red>[" + i
								+ "]</font>&nbsp;&nbsp;");
					} else {
						str.append("<a href='" + url + "&currentPage=" + i
								+ "'>" + i + "</a>&nbsp;&nbsp;");
					}
				}
			}
			// �趨�Ƿ�����һҳ������
			if (this.currentPage < this.pageCount) {
				str.append("<a href='" + url + "&currentPage=" + Nextpage
						+ "'>��һҳ</a>");
				str.append("&nbsp;&nbsp;");
			}
			// �趨�Ƿ���βҳ������
			if (this.pageCount > 1 && this.currentPage != this.pageCount) {
				str.append("<a href='" + url + "&currentPage=" + pageCount
						+ "'>βҳ</a>");
				str.append("&nbsp;&nbsp;");
			}

			str.append("</td><td width='3%'>&nbsp;</td></tr></table>");
		} else if (flag.equals(PageDAO.BbsImage)) {
			/**
			 * ��̳��ʽ�ķ�ҳ[��ͼƬ�ķ�ʽ����]
			 */
			// �趨��ҳ��ʾ��CSS
			str.append("<style>");
			str
					.append("BODY {FONT-SIZE: 12px;FONT-FAMILY:����;WIDTH: 60%; PADDING-LEFT: 25px;}");
			str
					.append("DIV.meneame {PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-SIZE: 80%; PADDING-BOTTOM: 3px; MARGIN: 3px; COLOR: #ff6500; PADDING-TOP: 3px; TEXT-ALIGN: center}");
			str
					.append("DIV.meneame A {BORDER-RIGHT: #ff9600 1px solid; PADDING-RIGHT: 7px; BACKGROUND-POSITION: 50% bottom; BORDER-TOP: #ff9600 1px solid; PADDING-LEFT: 7px; BACKGROUND-IMAGE: url('"
							+ this.request.getContextPath()
							+ "/meneame.jpg'); PADDING-BOTTOM: 5px; BORDER-LEFT: #ff9600 1px solid; COLOR: #ff6500; MARGIN-RIGHT: 3px; PADDING-TOP: 5px; BORDER-BOTTOM: #ff9600 1px solid; TEXT-DECORATION: none}");
			str
					.append("DIV.meneame A:hover {BORDER-RIGHT: #ff9600 1px solid; BORDER-TOP: #ff9600 1px solid; BACKGROUND-IMAGE: none; BORDER-LEFT: #ff9600 1px solid; COLOR: #ff6500; BORDER-BOTTOM: #ff9600 1px solid; BACKGROUND-COLOR: #ffc794}");
			str
					.append("DIV.meneame SPAN.current {BORDER-RIGHT: #ff6500 1px solid; PADDING-RIGHT: 7px; BORDER-TOP: #ff6500 1px solid; PADDING-LEFT: 7px; FONT-WEIGHT: bold; PADDING-BOTTOM: 5px; BORDER-LEFT: #ff6500 1px solid; COLOR: #ff6500; MARGIN-RIGHT: 3px; PADDING-TOP: 5px; BORDER-BOTTOM: #ff6500 1px solid; BACKGROUND-COLOR: #ffbe94}");
			str
					.append("DIV.meneame SPAN.disabled {BORDER-RIGHT: #ffe3c6 1px solid; PADDING-RIGHT: 7px; BORDER-TOP: #ffe3c6 1px solid; PADDING-LEFT: 7px; PADDING-BOTTOM: 5px; BORDER-LEFT: #ffe3c6 1px solid; COLOR: #ffe3c6; MARGIN-RIGHT: 3px; PADDING-TOP: 5px; BORDER-BOTTOM: #ffe3c6 1px solid}");
			str.append("</style>");
			str.append("<div class=\"meneame\">");
			// �ж��Ƿ�����һҳ
			if (this.currentPage > 1) {
				str.append("<a href='" + url
						+ "&currentPage=1' hidefocus=\"true\">��ҳ</a>");
				str.append("&nbsp;&nbsp;&nbsp;");
				str.append("<a href='" + url + "&currentPage=" + ProPage
						+ "' hidefocus=\"true\">��һҳ</a>");
				str.append("&nbsp;&nbsp;&nbsp;");
			} else {
				str.append("<span class=\"disabled\">��ҳ</span>");
				str.append("&nbsp;&nbsp;");
				str.append("<span class=\"disabled\">��һҳ</span>");
				str.append("&nbsp;&nbsp;");
			}
			// ��ʾ�м��ͼƬ
			if (this.pageCount <= 10) {
				for (int i = 1; i <= this.pageCount; i++) {
					if (this.currentPage == i) {
						str.append("<span class=\"current\">" + i + "</span>");
					} else {
						str.append("<a href='" + url + "&currentPage=" + i
								+ "' hidefocus=\"true\">" + i
								+ "</a>&nbsp;&nbsp;");
					}
				}
			} else {
				// ˵�������г���10ҳ
				// �ƶ��ػ��Ŀ�ʼҳ�ͽ���ҳ
				int endPage = this.currentPage + 4;
				if (endPage > this.pageCount) {
					endPage = this.pageCount;
				}
				int startPage = 0;
				if (this.pageCount >= 8 && this.currentPage >= 8) {
					startPage = this.currentPage - 5;
				} else {
					// ��ʾ�ӵ�һҳ��ʼ��
					startPage = 1;
				}
				System.out.println(startPage);
				System.out.println(endPage);
				for (int i = startPage; i <= endPage; i++) {
					if (this.currentPage == i) {
						str.append("<span class=\"current\">" + i + "</span>");
					} else {
						str.append("<a href='" + url + "&currentPage=" + i
								+ "' hidefocus=\"true\">" + i
								+ "</a>&nbsp;&nbsp;");
					}
				}
			}

			// �ж���һҳ��βҳ
			if (this.currentPage < this.pageCount) {
				if (this.currentPage < this.pageCount - 10) {
					str.append("...");
					str.append("<a href='" + url + "&currentPage="
							+ (this.pageCount - 1) + "' hidefocus=\"true\">"
							+ (this.pageCount - 1) + "</a>&nbsp;&nbsp;");
					str.append("<a href='" + url + "&currentPage="
							+ this.pageCount + "' hidefocus=\"true\">"
							+ this.pageCount + "</a>&nbsp;&nbsp;");
				}

				str.append("<a href='" + url + "&currentPage=" + Nextpage
						+ "' hidefocus=\"true\">��һҳ</a>");
				str.append("&nbsp;&nbsp;");
			} else {
				str.append("<span class=\"disabled\">��һҳ</span>");
				str.append("&nbsp;&nbsp;");
			}
			if (this.pageCount > 1 && this.currentPage != this.pageCount) {
				str.append("<a href='" + url + "&currentPage=" + pageCount
						+ "' hidefocus=\"true\">βҳ</a>");
				str.append("&nbsp;&nbsp;");
			} else {
				str.append("<span class=\"disabled\">βҳ</span>");
				str.append("&nbsp;&nbsp;");
			}
			str.append("</div>");
		}
		return str.toString();
	}

	public String getParamUrl() {
		String url = "";
		url = this.request.getRequestURI().toString();
		if (url.indexOf("?") == -1) {
			url = url + "?";
		}
		String totalParams = "";
		Enumeration params = this.request.getParameterNames();// �õ����в�����
		while (params.hasMoreElements()) {
			String tempName = params.nextElement().toString();
			String tempValue = this.request.getParameter(tempName);
			if (tempValue != null && !tempValue.equals("")
					&& !tempName.equals("currentPage")) {
				if (totalParams.equals("")) {

					totalParams = totalParams + tempName + "=" + tempValue;
				} else {
					totalParams = totalParams + "&" + tempName + "="
							+ tempValue;
				}
			}
		}
		String totalUrl = url + totalParams+"&";
		return totalUrl;
	}
}