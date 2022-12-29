package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.mapper.SaleMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class SaleController {

	private SaleMapper mapper;

	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	public String sale(Model model) {
		model.addAttribute("sale_list", mapper.getSaleList());

		return "tab/sale";
	}

}
