package com.hyundai.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.service.OrderService;
import com.hyundai.service.WishListService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;
import com.hyundai.vo.ShowOrderDTO;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import com.hyundai.mapper.UserMapper;
import com.hyundai.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {

	private final OrderService orderService;

	private final UserMapper userMapper;

	@GetMapping
	public String mypage(Criteria cri, Model model) {
		return "mypage/mypage";
	}

	@GetMapping("/order-lists")
	public String mypageOrderLists(Criteria cri, Principal principal, Model model) {
		log.info("mypage/order-lists");
		if (cri.getAmount() == 10)
			cri.setAmount(3);
		if (cri.getType() == null)
			cri.setType("-1");

		List<ShowOrderDTO> list = orderService.getOrderList(principal.getName(), cri);
		int total = orderService.getOrderListCount(principal.getName());

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "mypage/order_lists";
	}

	@GetMapping("/reviews-write")
	public String myPageReviewWrite() {
		log.info("mypage/reviews-write");
		return "mypage/reviews_write";
	}

	@GetMapping("/reviews-completion")
	public String mypageReviewCompletion() {
		log.info("mypage/reviews-completion");

		return "mypage/reviews_list";
	}

	@GetMapping("/info-change")
	public String mypageInfoChange() {
		log.info("mypage/info-change");

		return "mypage/info_change";
	}

	@GetMapping("/info-remove")
	public String mypageInfoRemove(Model model) {
		log.info("mypage/info-remove");

		return "mypage/info_remove";
	}

	@RequestMapping(value = "/reviews", method = RequestMethod.GET)
	public String mypageReviews(Model model) {
		log.info("mypage/reviews");

		return "mypage/reviews_write";
	}

	@PostMapping("/info-change")
	public String changeInfo(UserVO vo) throws Exception {
		System.out.println(vo);
		BCryptPasswordEncoder pwdencoder = new BCryptPasswordEncoder();
		vo.setUser_pwd(pwdencoder.encode(vo.getUser_pwd()));
		userMapper.updateUser(vo);

		return "mypage/completion_change_info";
	}
}
