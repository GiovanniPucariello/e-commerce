package dao.inf;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.bean.McTypeBean;

//��ɾ�Ĳ飨��request������ѯ����getCount(String sql)  ��������
public interface McTypeInf {
	public List<McTypeBean> selectMcType(HttpServletRequest request);

	public boolean addMcType(McTypeBean typeBean);

	public boolean delMcType(String maxid,String minid);

	public boolean updateMcType(String sname, String sid);

	public McTypeBean getMcTypeBySid(String sid);

	public String getCount(String sql);

	List<McTypeBean> selectMcTypeByNpid(String npid);

}
