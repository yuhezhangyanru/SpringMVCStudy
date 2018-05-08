package com.yiibai.springmvc.controllor;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/*
 * 如果您使用 @ResponseBody 注释到方法， spring 将尝试转换它的返回值，并自动写入到HTTP响应。在这种情况下，并不需要一个特定的视图。
 * 注：方法不一定需要返回字符串类型。
 * 浏览器输入：http://localhost:8080/HelloSpringMVC/saveResult
 */
@Controller
public class ResponseBodyExample1Controller {
 
    // Simple example, method returns String.  
	//添加了produces参数，制定了返回的编码默认类型，Spring默认的编码是西欧字符不支持中文
	//@RequestMapping(value="/saveResult"之前尝试这么改，尝试解决中文乱码的问题，发现还是得改servlet.xml
	@RequestMapping(value="/saveResult",produces="application/json;charset=utf-8")    
	@ResponseBody
	public String authorInfo(Model model)
	{
		return "saved哈哈哈测试文本哈哈哈哈 、、、、、";
	}
}