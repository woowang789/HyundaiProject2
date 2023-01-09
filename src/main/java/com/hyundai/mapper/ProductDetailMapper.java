package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductDetailDTO;
import com.hyundai.vo.ProductOptionDTO;
import com.hyundai.vo.ReviewDTO;

public interface ProductDetailMapper {

	public ProductDetailDTO getProductDetail(String pid);

	public List<ReviewDTO> getReviewWithPaging(@Param("cri") Criteria cri, @Param("pid") String pid);

	public int getReviewTotalCount(Criteria cri);

	public double getAverageScore(@Param("pid") String pid);

	public int getAverageScoreInt(@Param("pid") String pid);

	public int getScoreFive(@Param("pid") String pid);

	public int getScoreFour(@Param("pid") String pid);

	public int getScoreThree(@Param("pid") String pid);

	public int getScoreTwo(@Param("pid") String pid);

	public int getScoreOne(@Param("pid") String pid);

	public List<ProductOptionDTO> getRecommend(@Param("pid") String pid);

	public boolean getWish(@Param("pid") String pid, @Param("id") String id);

}
