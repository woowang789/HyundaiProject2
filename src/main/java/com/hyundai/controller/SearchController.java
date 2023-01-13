package com.hyundai.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.mapper.SaleMapper;
import com.hyundai.mapper.SearchMapper;
import com.hyundai.service.UserService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class SearchController {
	private final SearchMapper mapper;

	// 이승규
	// 검색 페이지 리스트 가져오기
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String sale(Criteria cri, Model model, Principal principal) {
		String userId = principal == null ? "" : principal.getName();
		int count = mapper.getCount(cri);

		log.info("@@@@ket" + cri.getKeyword());

		if (cri.getAmount() == 10)
			cri.setAmount(24);

		model.addAttribute("search_list", mapper.getSearchList(cri, userId));

		log.info(cri.getMinPrice());
		model.addAttribute("pageMaker", new PageDTO(cri, count));
		model.addAttribute("categ", mapper.getCate(cri));

		return "tab/search";
	}

}
