package com.hyundai.controller;

import java.security.Principal;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.service.HomeService;
import com.hyundai.vo.Criteria;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private HomeService service;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Criteria cri, Model model, Principal principal) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		String userId = principal != null ? principal.getName() : "not logined";

		String userId = principal == null ? "" : principal.getName();
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		cri.setAmount(4);

		model.addAttribute("serverTime", formattedDate);

		model.addAttribute("for_user", service.getRecommendForUser(cri, userId));
		model.addAttribute("random", service.getRecommendRandom(cri, userId));

		model.addAttribute("brand", service.getRecommendBrand(cri, userId));

		return "home";
	}

}
