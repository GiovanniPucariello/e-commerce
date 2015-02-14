package dao.inf;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.bean.McBean;
import dao.bean.OrderBean;
import dao.bean.OrderItemBean;
import dao.bean.UserBean;

//��ɾ�Ĳ飨��request������ѯ����getCount(String sql)  ��������
public interface OrderInf {
	public List<OrderBean> selectOrder(HttpServletRequest request);

//	public boolean addOrder(OrderBean orderBean);

	public boolean delOrder(String sid);

	public boolean updateOrder(OrderBean orderBean, String sid);

	public OrderBean getOrderBySid(String sid);

	public String getCount(String sql);

	boolean addOrder(OrderBean orderBean, List<OrderItemBean> lists);

}
