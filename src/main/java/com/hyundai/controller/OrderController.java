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

/**
 * 주문 관련 요청을 처리하는 Controller
 * @author 왕종휘
 */
@Log4j
@Controller
@RequiredArgsConstructor
public class OrderController {
	
	private final OrderService orderService;
	private final CartService cartService;
	private final UserMapper userMapper;
	
	/**
	 * 주문할 상품정보, 유저 기본정보와 함께 주문 페이지 렌더링
	 * @param isCart : 장바구니 주문인지 확인하는 flag
	 * @param BeforeOrderDTO : 상품아이디(pId), 상품옵션아이디(oId), 수량(qty)
	 * @param principal : 유저ID
	 */
	@GetMapping("/order-form")
	public String orderForm(
			@RequestParam(value = "isCart", defaultValue = "false") Boolean isCart , 
			BeforeOrderDTO orderItems, 
			Principal principal,
			Model model) {
		if(isCart == null) isCart = false;
		
		UserOrderInfoDTO userInfo = userMapper.getInfoById(principal.getName());
		
		List<OrderProductDTO> list = orderService.getOrderProductList(orderItems);

		model.addAttribute("isCart", isCart);
		model.addAttribute("list",list);
		model.addAttribute("userInfo", userInfo);
		
		return "order/order_form";
	}
	
	/**
	 * 요청된 상품 주문을 처리하고 리다이렉트 시 처리된 주문 정보를 넘김
	 * @param isCart : 장바구니 주문인지 확인하는 flag
	 * @param InsertOrderDTO : 이름, 도로명주소, 지번, 전화번호, 지불수단, 총 금액, 상품정보 리스트
	 */
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
	
	/**
	 * 주문 완료 페이지 렌더링
	 */
	@GetMapping("/order-completion")
	public String orderCompletion() {
		log.info("/order-completion");
		
		return "order/order_completion";
	}
	
// 	주문 테스트 페이지 
//	@GetMapping("/before-order")
//	public String beforeOrder() {
//		return "order/before_order";
//	}
	

	// 장바구니에서 주문한 경우 주문한 장바구니 삭제
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
