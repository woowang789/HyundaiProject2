package com.hyundai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.mapper.SaleMapper;
import com.hyundai.service.WishListService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class SaleController {

	private final SaleMapper mapper;

	private String userId = "user1@email.com";

	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	public String sale(Criteria cri, Model model) {
		int count = mapper.getCount();
		if (cri.getAmount() == 10) {
			cri.setAmount(24);
		}
		model.addAttribute("sale_list", mapper.getSaleListAll(cri, userId));
		model.addAttribute("pageMaker", new PageDTO(cri, count));

		return "tab/sale";
	}

}
