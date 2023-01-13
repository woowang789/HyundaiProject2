package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductDetailDTO;
import com.hyundai.vo.ProductOptionDTO;
import com.hyundai.vo.ReviewDTO;

public interface ProductDetailMapper {
	//소규석
	
	// 상품별 상품 상세 정보 
	public ProductDetailDTO getProductDetail(String pid);
	
	// 상품별 리뷰 정보 
	public List<ReviewDTO> getReviewWithPaging(@Param("cri") Criteria cri, @Param("pid") String pid);
	
	// 상품별 리뷰 총 개수
	public int getReviewTotalCount(Criteria cri);
	
	//상품의 평균 별점
	public double getAverageScore(@Param("pid") String pid);
	
	//상품의 평균 별점(소수점 제거)
	public int getAverageScoreInt(@Param("pid") String pid);
	
	//상품의 별점 5점의 개수
	public int getScoreFive(@Param("pid") String pid);
	
	//상품의 별점 4점의 개수
	public int getScoreFour(@Param("pid") String pid);
	
	//상품의 별점 3점의 개수
	public int getScoreThree(@Param("pid") String pid);
	
	//상품의 별점 2점의 개수
	public int getScoreTwo(@Param("pid") String pid);
	
	//상품의 별점 1점의 개수
	public int getScoreOne(@Param("pid") String pid);
	
	//상품의 별점 5점의 개수
	public List<ProductOptionDTO> getRecommend(@Param("pid") String pid);
	
	//상품의 찜 여부
	public boolean getWish(@Param("pid") String pid, @Param("id") String id);

}
