package com.hyundai.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.mapper.CategoryMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;
import com.hyundai.vo.ProductOptionDTO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CategoryController {
	
	@Autowired
	private CategoryMapper mapper;

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Criteria cri,Model model) {
		log.info("/category" +cri);
		cri.setAmount(24);
		int total =mapper.getTotalCount(cri);
		model.addAttribute("categories", mapper.getCategoryWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "tab/category";
	}
	
	@ResponseBody
	@RequestMapping(value="/category2", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<ProductOptionDTO> category2( Model model) {
		log.info("/cccc: ");
		
		return mapper.getCategory();
	}

}
