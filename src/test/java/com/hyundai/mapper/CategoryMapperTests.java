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
public class CategoryMapperTests {

	private final String userId="user1@email.com";
	@Setter(onMethod_ = @Autowired)
	private CategoryMapper categoryMapper;

	@Test
	public void testPaging() throws Exception{
		Criteria cri = new Criteria();

		List<ProductOptionDTO> list = categoryMapper.getCategoryWithPaging(cri,userId);
		list.forEach(productOption -> log.info(productOption.getBId()));
	}
}
