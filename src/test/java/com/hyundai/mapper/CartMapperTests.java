package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.CartProductDTO;
import com.hyundai.vo.InsertOrderDTO;
import com.hyundai.vo.UpdateCartDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private CartMapper mapper;
	
	private String userId = "user1@email.com";
	
	@Test
	public void test() {
		List<CartProductDTO> t = mapper.getCartList(userId);
		for(CartProductDTO dto : t) {
			System.out.println(dto);
		}
	}
	@Test
	@Transactional
	public void updateTest() {
		
		List<CartProductDTO> t = mapper.getCartList(userId);
		for(CartProductDTO l : t) {
			System.out.println(l);
		}
		
		UpdateCartDTO dto = new UpdateCartDTO();
		dto.setOptId("A000000156839001");
		dto.setProdId("A000000156839");
		dto.setUserId(userId);
		int result = mapper.updateCart(dto);
		log.info(result);
		
		List<CartProductDTO> a = mapper.getCartList(userId);
		for(CartProductDTO l : a) {
			System.out.println(l);
		}
		
	}
	/*
	 * @Test
	 * 
	 * @Transactional public void insertTest() { BeforeOrderDTO cart = new
	 * BeforeOrderDTO();
	 * 
	 * cart.setPid("A000000130963"); cart.setOid("A0000001309630001");
	 * cart.setQty(3);
	 * 
	 * 
	 * mapper.insertCart(cart,userId); }
	 */
	
}
