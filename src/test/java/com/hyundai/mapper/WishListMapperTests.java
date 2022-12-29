package com.hyundai.mapper;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.hyundai.vo.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class WishListMapperTests {

	@Setter(onMethod_ = @Autowired)
	private WishListMapper wishListMapper;

	private final String userId = "user1@email.com";
	private final String prodId = "A000000168893";

	@Test
	public void getTest() {
		List<ProductVO> products = wishListMapper.getWishLists(userId);
		for (ProductVO p : products) {
			log.info(p.getName());
		}
	}

	@Test
	@Transactional
	public void insertTest() {
		int result = wishListMapper.insertWishList(userId, prodId);
		Assert.assertEquals(result, 1);
	}

	@Test
	@Transactional
	public void removeTest() {

		int result = wishListMapper.insertWishList(userId, prodId);
		Assert.assertEquals(result, 1);

		int result2 = wishListMapper.removeWishList(userId, prodId);
		Assert.assertEquals(result2, 1);
	}
}
