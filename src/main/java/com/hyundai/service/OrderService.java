package com.hyundai.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.mapper.OrderMapper;
import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.InsertOrderDTO;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.ShowOrderDTO;

import lombok.RequiredArgsConstructor;

/**
 * 주문 관련 비스니스 로직을 처리하는 Service
 * @author 왕종휘
 */
@Service
@RequiredArgsConstructor
public class OrderService {
	private final ProductService prodcutService;
	private final OrderMapper orderMapper;

	/**
	 * 주문한 상품 아이디를 받아 상품 정보를 가져오는 메서드 
	 * @param BeforeOrderDTO
	 */
	public List<OrderProductDTO> getOrderProductList(BeforeOrderDTO before) {
		return before.getList().stream().map(l -> {
			OrderProductDTO p = prodcutService.getOrderProductById(l.getOid());
			p.setQty(l.getQty());
			return p;
		}).collect(Collectors.toList());
	}

	/**
	 * 하나의 트랜잭션 단위로 주문과 주문 상품 정보를 삽입
	 * @param InsertOrderDTO : 주문 정보
	 */
	@Transactional
	public int insertOrder(String userId, InsertOrderDTO order) {
		
		int result = orderMapper.insertOrder(order, userId);
		
		order.getList().forEach(el -> {
			orderMapper.insertOrderList(el, userId, order.getOrderId());
		});
		return 1;
	}

	public List<ShowOrderDTO> getOrderList(String userId, Criteria cri) {
		return orderMapper.getOrderListByUserId(userId, cri);
	}
	public int getOrderListCount(String userId) {
		return orderMapper.getOrderListCount(userId);
	}

}
