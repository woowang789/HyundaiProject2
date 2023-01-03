package com.hyundai.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SaleMapperTests {

	@Setter(onMethod_ = @Autowired)
	private SaleMapper saleMapper;

	/*
	 * @Test public void getTest() { // Criteria cri = new Criteria();
	 * List<ProductOptionDTO> products = saleMapper.getSaleList();
	 * System.out.println(products); for (ProductOptionDTO p : products) {
	 * log.info(p); } }
	 */

	@Test
	public void getCount() {
		int result = saleMapper.getCount(null);
		log.info(result);
	}

}
