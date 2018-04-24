package com.yiibai.springmvc;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 使用@RequestParam 注解将请求参数绑定到你的控制器方法参数。
 * @category 该控制器用于在浏览器地址接收一个参数"name"的输入，从而获得不通的处理
 * 例子地址：http://localhost:8080/HelloSpringMVC/user?name=admin
 * 格式相当于/user后加"?name="+参数值 
 * @author yy
 * @date 2018-04-23 18:00:14
 */
@Controller
public class RequestParamExampleController {

	  @RequestMapping("/user")
	    public String userInfo(Model model,
	            @RequestParam(value = "name", defaultValue = "Guest") String name) {
	 
	        model.addAttribute("name", name);
	 
	        if("admin".equals(name)) {
	            model.addAttribute("email", "admin@yiibai.com");
	        } else{
	            model.addAttribute("email", "Not set");
	        }
	        return "userInfo";
	    }
}
