package com.yiibai.springmvc.controllor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class LifeCircleController {
	/*
	 * function:展示jsp生命周期demo
	 */
	 @RequestMapping("/life")
	 public String lifeCircle(Model model){
		
		 System.out.println("调用了LifeCircleController 即将展示页面 lifecircle.jsp");
		 return "lifecircle";
	 }
}
