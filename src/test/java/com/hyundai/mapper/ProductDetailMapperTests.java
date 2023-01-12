package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.hyundai.vo.ProductDetailDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductDetailMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductDetailMapper productDetailMapper;
	
	private final String prodId = "A000000144535";
	
	@Test
	public void test() {
		

		ProductDetailDTO dto = productDetailMapper.getProductDetail(prodId);
		log.info(dto);
	}

}
