package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;
import com.hyundai.vo.ProductOptionDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CategoryMapperTests {
//소규석
	private final String userId="kosa1234";
	@Setter(onMethod_ = @Autowired)
	private CategoryMapper categoryMapper;


	@Test
	public void testPaging() throws Exception{
		Criteria cri = new Criteria();

		List<ProductOptionDTO> list = categoryMapper.getCategoryWithPaging(cri,userId);
		list.forEach(productOption -> log.info(productOption.getBId()));
	}

	@Test
	public void testGetPCate() throws Exception{
		Criteria cri = new Criteria();
		cri.setCateId("100000100010008");
		List<CategoryDTO> catePid=categoryMapper.getPCate(cri);
		log.info(catePid);
		
		
	}
}
