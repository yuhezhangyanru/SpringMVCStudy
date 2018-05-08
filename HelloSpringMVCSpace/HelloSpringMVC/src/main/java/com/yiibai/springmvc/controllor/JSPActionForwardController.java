package com.yiibai.springmvc.controllor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 

@Controller
public class JSPActionForwardController {
 
    @RequestMapping("/jspActionForward") 
    public String hello(Model model) {
        System.out.println("调用了 JSPActionForwardController 哈哈哈哈");
        return "jspActionForward"; 
    }
}