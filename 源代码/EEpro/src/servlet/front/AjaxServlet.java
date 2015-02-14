package servlet.front;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.imp.UserDao;

public class AjaxServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��������
		String sname = request.getParameter("sname");
//		System.out.println("sname=" + sname);
		String mes = null;
		
		UserDao userDao=new UserDao();
		if (userDao.getUserBySid(sname)!=null) {
			mes = "�û����Ѿ����ڣ�������ʹ��";
		} else {
			mes = "��ϲ�����û�������ʹ��";
		}

		
		//��Ӧajax����
		response.setContentType("text/html;charset=GBK");
		PrintWriter out = response.getWriter();
		
		out.print(mes);

		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("GBK");

		doGet(request, response);
	}

}
