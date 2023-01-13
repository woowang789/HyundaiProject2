package com.hyundai.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.mapper.BestMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class BestController {
	private final BestMapper mapper;

	// 이승규
	// 랭킹 페이지 리스트 가져오기
	@RequestMapping(value = "/best", method = RequestMethod.GET)
	public String best(Criteria cri, Model model, Principal principal) {
		String userId = principal == null ? "" : principal.getName();
		cri.setAmount(100);
		model.addAttribute("best_list", mapper.getBestList(cri, userId));
		model.addAttribute("pageMaker", new PageDTO(cri, 100));
		model.addAttribute("categ", mapper.getCate(cri));
		return "tab/best";
	}

}
