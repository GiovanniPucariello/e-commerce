package dao.inf;

import java.util.List;

import dao.bean.OrderItemBean;

//��ɾ�Ĳ飨��request������ѯ����getCount(String sql)  ��������
public interface OrderItemInf {
	public List<OrderItemBean> selectOrderItem(String norderid);

	public boolean addOrderItem(OrderItemBean orderItemBean);

	public boolean delOrderItem(String sid);

	public boolean updateOrderItem(OrderItemBean orderItemBean, String sid);

	public OrderItemBean getOrderBySid(String norderid);


}
