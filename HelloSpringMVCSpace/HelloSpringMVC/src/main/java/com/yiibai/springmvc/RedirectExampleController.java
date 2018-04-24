package com.yiibai.springmvc;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
/*
 * 使用前缀 "redirect:" ，该方法返回字符串，可以重定向到另一页面。参见图：
 * functon:用于重定向的控制器，该控制器使得用户在浏览器输入/redirect之后定位到/hello所代表的控制器
 */
@Controller
public class RedirectExampleController {
 
    @RequestMapping(value = "/redirect", method = RequestMethod.GET)
    public String authorInfo(Model model) {
 
       // Do somethong here
    	System.out.println("RedirectExampleController .... jump hello");
  
        return "redirect:/hello";
    }
}