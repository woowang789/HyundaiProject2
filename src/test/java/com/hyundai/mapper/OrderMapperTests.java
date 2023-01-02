package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.vo.OrderDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private OrderMapper mapper;
	
	private String userId = "user1@email.com";
	
	
	@Test
	@Transactional
	public void test() {
		OrderDTO order = new OrderDTO();
		order.setReceiverName("receiverName");
		order.setReceiverAddrRoad("road");
		order.setReceiverAddrJibun("jibun");
		order.setReceiverTel("tel");
		order.setPayment("payment");
		order.setTotalPrice(1000);
		
		int t = mapper.insertOrder(order, userId);
		log.info(order.getOrderId());
	}
}
