package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductDetailDTO;
import com.hyundai.vo.ReviewDTO;

public interface ProductDetailMapper {
	
	public ProductDetailDTO getProductDetail(String pid);
	
	
	
	  public List<ReviewDTO> getReviewWithPaging(@Param("cri") Criteria cri,@Param("pid") String pid);
	   
	  public int getReviewTotalCount(Criteria cri);
	  
	  public double getAverageScore(@Param("pid") String pid);
	  
	  public int getAverageScoreInt(@Param("pid") String pid);
	 
}
