package com.hyundai.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.InsertOrderDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class OrderServiceTest {
	
	@Setter(onMethod_ = @Autowired)
	private OrderService service;
	
	private String userId = "user1@email.com";
	
	
	@Test
	public void test() {
		InsertOrderDTO order = new InsertOrderDTO();
		order.setReceiverName("receiverName");
		order.setReceiverAddrRoad("road");
		order.setReceiverAddrJibun("jibun");
		order.setReceiverTel("tel");
		order.setPayment("payment");
		order.setTotalPrice(2400);
		
		List<BeforeOrderDTO> list = new ArrayList<>();
		BeforeOrderDTO dto = new BeforeOrderDTO();
		dto.setOid("A000000158874002");
		dto.setPid("A000000158874");
		dto.setQty(2);
		dto.setMarketPrice(1200);
		list.add(dto);
		order.setList(list);
		
		service.insertOrder(userId, order);
		log.info(order.getOrderId());
	}
}
