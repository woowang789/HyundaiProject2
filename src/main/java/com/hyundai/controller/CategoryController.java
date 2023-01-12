package com.hyundai.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.mapper.CategoryMapper;
import com.hyundai.vo.CategoryDTO;
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
	public String category(Criteria cri,Model model, Principal principal) {
		log.info("/category" +cri);
		if(cri.getAmount()==10) 
			cri.setAmount(24);
		if(cri.getCatePid() == null) cri.setCatePid("100000100010008");
		String userId = "";
		if(principal!=null) userId = principal.getName();
		model.addAttribute("p_categ",mapper.getPCate(cri));
		int total =mapper.getTotalCount(cri);
		model.addAttribute("categories", mapper.getCategoryWithPaging(cri,userId));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
		log.info("after"+cri);

		return "tab/category";
	}
	
	@ResponseBody
	@RequestMapping(value="/category2", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<CategoryDTO> category2(Criteria cri, Model model) {
		log.info("/cccc: ");
		
		return mapper.getPCate(cri);
	}

}
