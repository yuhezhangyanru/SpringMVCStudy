package com.yiibai.springmvc;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
//functon:用于重定向的控制器，该控制器使得用户在浏览器输入/redirect之后定位到/hello所代表的控制器
@Controller
public class RedirectExampleController {
 
    @RequestMapping(value = "/redirect", method = RequestMethod.GET)
    public String authorInfo(Model model) {
 
       // Do somethong here
    	System.out.println("RedirectExampleController .... jump hello");
  
        return "redirect:/hello";
    }
}