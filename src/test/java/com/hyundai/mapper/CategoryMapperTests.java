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

	@Setter(onMethod_ = @Autowired)
	private CategoryMapper categoryMapper;

	@Test
	public void test() {

		List<ProductOptionDTO> dto = categoryMapper.getCategory();
		log.info(dto);
	}

	@Test
	public void testPaging() throws Exception{
		Criteria cri = new Criteria();

		cri.setPageNum(2);
		cri.setAmount(10);

		List<ProductOptionDTO> list = categoryMapper.getCategoryWithPaging(cri);
		list.forEach(productOption -> log.info(productOption.getBId()));
	}
}
