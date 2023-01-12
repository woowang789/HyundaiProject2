package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class HomeTests {

	@Setter(onMethod_ = @Autowired)
	private HomeMapper mapper;
	private String userId = "user1@email.com";

	@Test
	public void getRecommendForUserTest() {
		Criteria cri = new Criteria();
	
		List<ProductOptionDTO> t = mapper.getRecommendBrand(cri, userId);
		log.info(t);
	}

	@Test
	public void getRecommendRandomTest() {
		Criteria cri = new Criteria();

		List<ProductOptionDTO> t = mapper.getRecommendBrand(cri, userId);
		log.info(t);
	}

	@Test
	public void getRecommendBrandTest() {
		Criteria cri = new Criteria();
		cri.setBrandName("록시땅");

		List<ProductOptionDTO> t = mapper.getRecommendBrand(cri, userId);
		log.info(t);
	}
}
