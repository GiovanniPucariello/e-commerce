package servlet.admin;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;


import dao.bean.McBean;
import dao.bean.McTypeBean;
import dao.imp.McDao;
import dao.imp.McTypeDao;

public class AddMcServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		//���е�ҳ���ύ����Ϣȫ��������map
				Map<String, String> data = null;
				int r = 0;
				try {
					data = parseRequest(request);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					r = -1;

				}
		McBean mcBean=new McBean();
		McDao mcDao=new McDao();
		String simg;

		if (data.get("simg")==null||data.get("simg").equals("")) {
			simg="NoGood.gif";
		}else {
			simg=data.get("simg");
		}
		mcBean.setSname(data.get("sname"));
		mcBean.setSmctag(data.get("smctag"));
		mcBean.setSimg(simg);
		mcBean.setSdescription(data.get("sdescription"));
		mcBean.setNprice(data.get("nprice"));
		mcBean.setNminid(data.get("nminid"));
		mcBean.setNmaxid(data.get("nmaxid"));
		
		if(mcDao.addMc(mcBean)){		
	
			out.print("<script type=\"text/javascript\">");
			out.println("alert('��ӳɹ���');");
			out.println("location.href='BackMcServlet';");
			out.println("</script>");
			
			
		}else{
			
			out.print("<script type=\"text/javascript\">");
			out.println("alert('���ʧ�ܣ�');");
			out.println("window.history.back();");
			out.println("</script>");
		}
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		
		out.close();
	}
	
	public Map<String, String> parseRequest(HttpServletRequest request)
			throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		DiskFileUpload diskFileUpload = new DiskFileUpload();
		List<FileItem> list = diskFileUpload.parseRequest(request);
		for (FileItem fileItem : list) {
			// �������ͨ�ı�
			if (fileItem.isFormField()) {
				// ���е�Ԫ�ص�name��value
				String fieldName = fileItem.getFieldName();
				String value = fileItem.getString();

				map.put(fieldName, value);

			} else {
				// �ļ� ���ԭ�����ļ���
				String oldFileName = fileItem.getName();
				// ����ͻ���û���ύ�ļ� ""
				if (!"".equals(oldFileName)) {
					// �������ɲ��ظ����ļ���
					String newFileName = CopyFileName
							.makeNewFileName(oldFileName);

					//���Ҫ���ļ�д�뵱ǰ�Ĺ����� ��Ҫ��������Ŀ¼ server.xml,���������ӳصĵط�
					//<Context path="/EE1301_FileUpload" docBase="D:\Workspaces\EE1301_FileUpload\WebRoot"> 
//					</Context>
					String realPath = this.getServletContext().getRealPath(
							"/mcimg/" + newFileName);

					fileItem.write(new File(realPath));

					String fieldName = fileItem.getFieldName();
					map.put(fieldName, newFileName);
				} else {
					String fieldName = fileItem.getFieldName();
					map.put(fieldName, "");

				}

			}

		}

		return map;
	}

}
