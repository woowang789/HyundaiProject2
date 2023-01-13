package com.hyundai.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.mapper.SaleMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class SaleController {

	private final SaleMapper mapper;

	// 이승규
	// 세일 페이지 리스트 가져오기
	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	public String sale(Criteria cri, Model model, Principal principal) {
		int count = mapper.getCount(cri);
		if (cri.getAmount() == 10)
			cri.setAmount(24);
		String userId = principal == null ? "" : principal.getName();
		model.addAttribute("sale_list", mapper.getSaleListAll(cri, userId));
		model.addAttribute("pageMaker", new PageDTO(cri, count));
		model.addAttribute("categ", mapper.getCate(cri));

		return "tab/sale";
	}

}
