package dao.inf;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.bean.UserBean;

//��ɾ�Ĳ飨��request������ѯ����getCount(String sql)  ��������
public interface UserInf {
	public List<UserBean> selectUser(HttpServletRequest request);

	public boolean addUser(UserBean userBean);

	public boolean delUser(String sid);

	public boolean updateUser(UserBean userBean, String sid);

	public UserBean getUserBySid(String sid);

	public String getCount(String sql);

}
