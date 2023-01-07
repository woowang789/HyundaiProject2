package com.hyundai.controller;

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

	@Autowired
	private ProductDetailMapper mapper;
	@Autowired
	private CartService cartService;

	/* private String pid = "A000000158874"; */

	@RequestMapping(value = "/product-detail", method = RequestMethod.GET)
	public String productDetail(@RequestParam String pid, Criteria cri, Model model) {
		log.info("/product-detail");
		log.info(pid);
		if (cri.getAmount() == 10)
			cri.setAmount(2);
		model.addAttribute("product_detail", mapper.getProductDetail(pid));

		int total = mapper.getReviewTotalCount(cri);
		/* model.addAttribute("reviews", mapper.getReviewWithPaging(cri, pid)); */
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		model.addAttribute("average", mapper.getAverageScore(pid));
		model.addAttribute("averageInt", mapper.getAverageScoreInt(pid));

		return "product/product_detail";
	}

	@ResponseBody
	@RequestMapping(value = "/review", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Map<String, Object>> productDetail(Criteria cri) {
		log.info("/review" + cri);

		if (cri.getAmount() == 10)
			cri.setAmount(2);
		int total = mapper.getReviewTotalCount(cri);
		Map<String, Object> map = new HashMap<String, Object>();
		log.info("================================");
		map.put("reviews", mapper.getReviewWithPaging(cri, cri.getPid()));
		map.put("pageMaker", new PageDTO(cri, total));
		log.info("total=" + total);

		/*
		 * rttr.addAttribute("reviews", mapper.getReviewWithPaging(cri, pid));
		 * rttr.addAttribute("pageMaker", new PageDTO(cri, total));
		 * rttr.addAttribute("averageInt", mapper.getAverageScoreInt(pid));
		 */
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}

	/*
	 * @PostMapping("/product-detail") public String doCart(BeforeOrderDTO
	 * cart,RedirectAttributes redirct,String userId) {
	 * cartService.insertCart(cart,userId); redirct.addFlashAttribute("cart", cart);
	 * return "redirect:/product-detail"; }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/product-detail2", method = RequestMethod.GET,
	 * produces = MediaType.APPLICATION_JSON_VALUE) public List<ReviewDTO>
	 * productDetail2(@RequestParam String pid,Criteria cri, Model model) {
	 * log.info("/product-detail: " + pid);
	 * 
	 * return mapper.getReviewWithPaging(pid,cri); }
	 */

}
