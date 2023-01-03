package com.hyundai.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.vo.ReviewDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReivewMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private ReviewMapper mapper;
	
	@Test
	public void getNotWritten() {
		List<ReviewDTO> reviews = mapper.getReviewByUserId("user1",false);
		for(ReviewDTO r :reviews) {
			log.info(r);
		}
	}
	
	@Test
	public void getWritten() {
		List<ReviewDTO> reviews = mapper.getReviewByUserId("user1",true);
		for(ReviewDTO r :reviews) {
			log.info(r);
		}
	}
}
