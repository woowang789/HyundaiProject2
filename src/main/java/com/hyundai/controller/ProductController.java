package com.hyundai.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.mapper.ProductDetailMapper;
import com.hyundai.service.CartService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ProductController {
// 소규석
	
	@Autowired
	private ProductDetailMapper mapper;
	
	//상품 아이디를 받아 상품별 상세 페이지 정보 가져오기
	@RequestMapping(value = "/product-detail", method = RequestMethod.GET)
	public String productDetail(@RequestParam String pid, Criteria cri, Model model, Principal principal) {
		log.info("/product-detail");
		log.info(pid);
		if (cri.getAmount() == 10)
			cri.setAmount(2);
		model.addAttribute("product_detail", mapper.getProductDetail(pid));

		int total = mapper.getReviewTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		String id="not login";
		if(principal!=null) id = principal.getName();
		model.addAttribute("average", mapper.getAverageScore(pid));
		model.addAttribute("averageInt", mapper.getAverageScoreInt(pid));
		model.addAttribute("five",mapper.getScoreFive(pid));
		model.addAttribute("four",mapper.getScoreFour(pid));
		model.addAttribute("three",mapper.getScoreThree(pid));
		model.addAttribute("two",mapper.getScoreTwo(pid));
		model.addAttribute("one",mapper.getScoreOne(pid));
		model.addAttribute("recommend",mapper.getRecommend(pid));
		model.addAttribute("wishList",mapper.getWish(pid,id));
		return "product/product_detail";
	}

	//상품별 회원 리뷰 리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/review", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Map<String, Object>> productDetail(Criteria cri) {

		if (cri.getAmount() == 10)
			cri.setAmount(2);
		int total = mapper.getReviewTotalCount(cri);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reviews", mapper.getReviewWithPaging(cri, cri.getPid()));
		map.put("pageMaker", new PageDTO(cri, total));
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}


}
