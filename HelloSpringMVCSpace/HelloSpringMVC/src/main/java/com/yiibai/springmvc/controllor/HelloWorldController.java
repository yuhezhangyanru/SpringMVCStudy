package com.yiibai.springmvc.controllor;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class HelloWorldController {
 
    @RequestMapping("/hello") //input http://localhost:8080/HelloSpringMVC/hello in web browser,will enter this function
    public String hello(Model model) {
         
        model.addAttribute("greeting", "Hello Spring MVC hahaha"); //set param 'greeting' = "Hello Spring MVC"
          
        System.out.println("调用了 HelloWorldController 哈哈哈哈");
        return "helloworld"; //return the jsp page name,this is helloworld.jsp
         
    }
 
}