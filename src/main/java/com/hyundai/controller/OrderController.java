package com.hyundai.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.mapper.UserMapper;
import com.hyundai.service.OrderService;
import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.InsertOrderDTO;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.UserOrderInfoDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private String userId = "user1@email.com";
	
	private final OrderService orderService;
	private final UserMapper userMapper;
	
	@GetMapping("/order-form")
	public String orderForm(BeforeOrderDTO orderItems, Model model) {
		log.info("/order-form");
		
		UserOrderInfoDTO userInfo = userMapper.getInfoById(userId);
		
		List<OrderProductDTO> list = orderService.getOrderProductList(orderItems);

		
		model.addAttribute("list",list);
		model.addAttribute("userInfo", userInfo);
		
		return "order/order_form";
	}
	
	@PostMapping("/order-form")
	public String doOrder(
			InsertOrderDTO order, 
			RedirectAttributes redirct
			) {
		int result = orderService.insertOrder(userId, order);
		log.info(order.getList()+" list ");
		
		redirct.addFlashAttribute("order", order);
		
		
		return "redirect:/order-completion";
		
	}
	
	@GetMapping("/order-completion")
	public String orderCompletion() {
		log.info("/order-completion");
		
		return "order/order_completion";
	}
	
	@GetMapping("/before-order")
	public String beforeOrder() {
		return "order/before_order";
	}

}
