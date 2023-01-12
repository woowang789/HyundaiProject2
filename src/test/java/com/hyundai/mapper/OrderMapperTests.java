package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.InsertOrderDTO;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.ShowOrderDTO;

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
	public void insertOrder() {
		InsertOrderDTO order = new InsertOrderDTO();
		order.setReceiverName("receiverName");
		order.setReceiverAddrRoad("road");
		order.setReceiverAddrJibun("jibun");
		order.setReceiverTel("tel");
		order.setPayment("payment");
		order.setTotalPrice(1000);
		
		int t = mapper.insertOrder(order, userId);
		log.info(order.getOrderId());
	}
	
	@Test
	public void getOrderListByUserId() {
		Criteria cri = new Criteria(1,5);
		cri.setType("-1");
		List<ShowOrderDTO> list = mapper.getOrderListByUserId(userId, cri);
		for(ShowOrderDTO dto : list) {
			log.info("=========");
			log.info(dto.getOrderId());
			log.info(dto.getOrderDate());
			for(OrderProductDTO d : dto.getList()) {
				log.info(d);
			}
		}
	}
}
