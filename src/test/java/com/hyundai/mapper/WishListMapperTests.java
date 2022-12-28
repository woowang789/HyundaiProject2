package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WishListMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private WishListMapper wishListMapper;
	
	@Test
	public void test() {
		List<ProductVO> products = 
				wishListMapper.getWishList("user1@email.com");
		for(ProductVO p : products) {
			log.info(p.getName());
		}
	}
}
