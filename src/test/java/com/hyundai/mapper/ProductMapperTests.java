package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.OrderProductDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Test
	public void test() {
		OrderProductDTO dto =  mapper.getOrderProductById("A000000162932001");
		log.info(dto);
	}
}
