package com.kurly.marketkurly.model.order;

import java.util.List;

import com.kurly.marketkurly.domain.OrderSummary;

public interface OrderService {

	// OrderSummary
	public List selectAll();
	public OrderSummary select(int order_summary_id);
	public void insert(OrderSummary order_summary);
	public void delete(int order_summary_id);
	
	// OrderDetail
	public List selectDetailAll();
	public void insertDetail(int order_detail_id);
}

