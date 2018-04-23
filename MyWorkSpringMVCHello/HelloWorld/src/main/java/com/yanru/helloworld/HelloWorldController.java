package com.yanru.helloworld;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class HelloWorldController {
 
    @RequestMapping("/hello")
    public String hello(Model model) {
         
        model.addAttribute("greeting", "Hello Spring MVC"); //为hello.jsp页面的${greeting} 参数返回数据
         
        return"helloworld";
         
    }
}