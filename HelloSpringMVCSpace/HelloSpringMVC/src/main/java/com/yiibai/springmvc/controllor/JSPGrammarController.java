package com.yiibai.springmvc.controllor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class JSPGrammarController {
	/*
	 * function:展示jsp各个语法标签
	 * date:2018-04-25 10:25:20
	 */
	 @RequestMapping("/jspgrammar")
	 public String lifeCircle(Model model){
		
		 System.out.println("调用了JSPGrammarController 即将展示页面");
		 return "jspgrammar";
	 }
}
