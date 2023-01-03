package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hyundai.service.UserService;
import com.hyundai.vo.UserVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class UserController {
	
	private UserService service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		log.info("login");
		
		return "member/login";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(){
		log.info("join");
		
		return "member/join";
	}
	
	@RequestMapping(value="/completion-join", method=RequestMethod.GET)
	public String completionJoin(){
		log.info("/completion-join");
		
		return "member/completion_join";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String register(UserVO user) throws Exception {
		
		service.register(user);
		
		return "member/completion_join";
	}
	
	@PostMapping("/join/check-id")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		System.out.println(id);
		int result = service.idCheck(id);
		return result;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginComplete() {
		log.info("로그인 성공");
		return "home";
	}
	
	@RequestMapping(value="/search-id-form", method=RequestMethod.GET)
	public String searchId() {
		log.info("아이디 찾기");
		return "member/search_id_form";
	}
	
	@RequestMapping(value="/search-id-form", method=RequestMethod.POST)
	public String searchIdForm(UserVO user, Model model) {
		 
		UserVO vo = service.searchId(user);
		String siteType = "입력하신 정보와 일치하는 아이디는 다음과 같습니다.";
		String siteTitle = "아이디 확인";
		
		model.addAttribute("siteType",siteType);
		model.addAttribute("siteTitle",siteTitle);
		if(vo==null) {
			String msg = "입력하신 정보와 일치하는 아이디가 존재하지 않습니다.";
			model.addAttribute("msg",msg);
		}
		else {
			String id = vo.getUser_id();
			String name = vo.getUser_name();
			model.addAttribute("id",id);
			model.addAttribute("name",name);
		}
		
		return "member/search_id";
	}
	
	@RequestMapping(value="/search-id", method=RequestMethod.GET)
	public String checkId() {
		return "member/search_id";
	}
	
	@RequestMapping(value="/search-password", method=RequestMethod.GET)
	public String searchPasswordForm() {
		return "member/search_password_form";
	}
	
	@RequestMapping(value="/search-password", method=RequestMethod.POST)
	public String searchPasswordFormPost(UserVO user, Model model) {
		int result  = service.searchPwd(user);
		if(result ==0) {
			String siteType = "입력하신 정보와 일치하는 유저가 존재하지 않습니다.";
			String siteTitle = "비밀번호 찾기";
			
			model.addAttribute("siteType", siteType);
			model.addAttribute("siteTitle", siteTitle);			
			
			String msg = "입력하신 정보가 일치하지 않습니다.";
			model.addAttribute("msg",msg);
			return "member/search_id";
		}
		String userId = user.getUser_id();
		model.addAttribute("userId", userId);
		return "member/reset_password";
	}
	
	@RequestMapping(value="/reset-password", method=RequestMethod.POST)
	public String resetPasswordPost(UserVO user) {
		service.updatePwd(user);
		return "member/login";
	}
	
	

}
