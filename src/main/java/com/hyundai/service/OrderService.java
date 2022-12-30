package com.hyundai.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.mapper.OrderMapper;
import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.OrderDTO;
import com.hyundai.vo.OrderProductDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrderService {
	private final ProductService prodcutService;
	private final OrderMapper orderMapper;
	
	public List<OrderProductDTO> getOrderProductList(BeforeOrderDTO before){
		return before.getList().stream()
				.map(l -> {
					OrderProductDTO p = prodcutService.getOrderProductById(l.getOid());
					p.setQty(l.getQty());
					return p;
				})
			.collect(Collectors.toList());
	}
	
	@Transactional
	public int insertOrder(String userId, OrderDTO order) {
		int result = orderMapper.insertOrder(order, userId);
		order.getList().forEach(el ->{
			orderMapper.insertOrderList(el, userId, order.getOrderId());
		});
		return 1;
	}
	

}
