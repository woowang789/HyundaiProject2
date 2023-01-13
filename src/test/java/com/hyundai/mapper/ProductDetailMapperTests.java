package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductDetailDTO;
import com.hyundai.vo.ProductOptionDTO;
import com.hyundai.vo.ReviewDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductDetailMapperTests {
//소규석
	@Setter(onMethod_ = @Autowired)
	private ProductDetailMapper productDetailMapper;

	private final String prodId = "A000000130979";


	@Test
	public void testProductDetail() {
		ProductDetailDTO dto = productDetailMapper.getProductDetail(prodId);
		log.info(dto);
	}

	@Test
	public void testReview() {
		Criteria cri = new Criteria();
		List<ReviewDTO> list = productDetailMapper.getReviewWithPaging(cri, prodId);
		list.forEach(productDetail -> log.info(productDetail.getReviewDate()));
	}

	@Test
	public void testReviewScore() {
		Criteria cri = new Criteria();
		cri.setPid("A000000130979");
		int total = productDetailMapper.getReviewTotalCount(cri);
		log.info("total = " + total);

		double averageScore = productDetailMapper.getAverageScore(prodId);
		int averageScoreInt = productDetailMapper.getAverageScoreInt(prodId);
		int scoreFive = productDetailMapper.getScoreFive(prodId);
		int scoreFour = productDetailMapper.getScoreFour(prodId);
		int scoreThree = productDetailMapper.getScoreTwo(prodId);
		int scoreTwo = productDetailMapper.getScoreTwo(prodId);
		int scoreOne = productDetailMapper.getScoreOne(prodId);
		
		log.info("averageScore = "+averageScore+"averageScoreInt= averageScoreInt");
		log.info("Score = "+scoreFive+" "+scoreFour+" "+scoreThree+" "+scoreTwo+" "+scoreOne);

	}
	
	@Test
	public void testRecommend() {
		List<ProductOptionDTO> list = productDetailMapper.getRecommend(prodId);
		list.forEach(recommed -> log.info(recommed.getName()));
	}
	
	@Test
	public void testWish() {
		boolean wish = productDetailMapper.getWish(prodId,"kosa1234");
		log.info("wishes = "+ wish);
	}


}
