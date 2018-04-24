package com.yiibai.springmvc.controllor;
  
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class JspStudyController {
	
	  @RequestMapping(value="/jsp",produces="application/json;charset=utf-8")    //input http://localhost:8080/HelloSpringMVC/hello in web browser,will enter this function
	    public String jspStudy(Model model) {
	          
	        System.out.println("调用了 JspStudyController");
	        return"jspStudy"; //return the jsp page name,this is helloworld.jsp
	         
	    }
}
