package com.hyundai.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.mapper.UserMapper;
import com.hyundai.service.CartService;
import com.hyundai.service.OrderService;
import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.InsertOrderDTO;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.UpdateCartDTO;
import com.hyundai.vo.UserOrderInfoDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final OrderService orderService;
	private final CartService cartService;
	private final UserMapper userMapper;
	
	@GetMapping("/order-form")
	public String orderForm(
			@RequestParam(value = "isCart", defaultValue = "false")Boolean isCart , 
			BeforeOrderDTO orderItems, 
			Principal principal,
			Model model) {
		log.info("/order-form");
		if(isCart == null) isCart = false;
		
		log.info(isCart);
		log.info(orderItems);
		
		UserOrderInfoDTO userInfo = userMapper.getInfoById(principal.getName());
		
		List<OrderProductDTO> list = orderService.getOrderProductList(orderItems);

		model.addAttribute("isCart", isCart);
		model.addAttribute("list",list);
		model.addAttribute("userInfo", userInfo);
		
		return "order/order_form";
	}
	
	@PostMapping("/order-form")
	public String doOrder(
			@RequestParam("isCart") Boolean isCart,
			InsertOrderDTO order, 
			Principal principal,
			RedirectAttributes redirct
			) {
		int result = orderService.insertOrder(principal.getName(), order);
		
		if(isCart)deleteCart(order, principal.getName());
		
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
	
	/*
	 * 장바구니에서 주문한 경우 주문한 장바구니 삭제
	 * */
	private void deleteCart(InsertOrderDTO order,String userId) {
		order.getList().stream().forEach(item ->{
			UpdateCartDTO dto = new UpdateCartDTO();
			dto.setOptId(item.getOid());
			dto.setProdId(item.getPid());
			dto.setUserId(userId);
			cartService.deleteCart(dto);
		});
	}

}
