package com.hyundai.controller;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.service.ProductService;
import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.OrderProductDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final ProductService prodcutService;
	
	@GetMapping("/order-form")
	public String orderForm(BeforeOrderDTO orderItems, Model model) {
		log.info("/order-form");
		
		List<OrderProductDTO> list = orderItems.getList().stream()
				.map(l -> {
					OrderProductDTO p = prodcutService.getOrderProductById(l.getOId());
					p.setQty(l.getQty());
					return p;
				})
			.collect(Collectors.toList());

		
		model.addAttribute("list",list);
		
		return "order/order_form";
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
