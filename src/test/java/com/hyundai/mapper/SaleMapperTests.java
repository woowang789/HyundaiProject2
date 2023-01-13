package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SaleMapperTests {

	@Setter(onMethod_ = @Autowired)
	private SaleMapper mapper;

	private String userId = "user1@mail.com";

	@Test
	public void getTest() {
		Criteria cri = new Criteria();
		cri.setAmount(36);
		cri.setPageNum(1);
		cri.setSort("02");
		List<ProductOptionDTO> products = mapper.getSaleListAll(cri, userId);
		System.out.println(products);
		for (ProductOptionDTO p : products) {
			log.info(p);
		}
	}

	@Test
	public void getCount() {
		Criteria cri = new Criteria();
		List<CategoryDTO> result = mapper.getCate(cri);
		result.forEach(item -> log.info(item));

	}

	@Test
	public void getCate() {
		Criteria cri = new Criteria();
		List<CategoryDTO> result = mapper.getCate(cri);
		log.info("카테고리:" + result);

	}

}
