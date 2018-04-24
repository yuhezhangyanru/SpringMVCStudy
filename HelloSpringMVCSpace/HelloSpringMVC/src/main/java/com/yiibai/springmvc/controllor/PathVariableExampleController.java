package com.yiibai.springmvc.controllor;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
 
@Controller
public class PathVariableExampleController {
  
 
    /**
     *  @PathVariable示例
     *  在Spring MVC中，可以使用@PathVariable注释将一个方法参数绑定到一个URI模板变量的值：
     *  例如，这是一个模板的URI：
     *  /web/fe/{sitePrefix}/{language}/document/{id}/{naturalText}     *  
     * function：URI传入多个参数的demo，如下demo，要求在浏览器输入：
     * http://localhost:8080/HelloSpringMVC/web/fe/default/en/document/8108/spring-mvc-for-beginners
     */
    @RequestMapping("/web/fe/{sitePrefix}/{language}/document/{id}/{naturalText}")
    public String documentView(Model model,
            @PathVariable(value = "sitePrefix") String sitePrefix,
            @PathVariable(value = "language") String language,
            @PathVariable(value = "id") Long id,
            @PathVariable(value = "naturalText") String naturalText) {
 
        model.addAttribute("sitePrefix", sitePrefix);
        model.addAttribute("language", language);
        model.addAttribute("id", id);
        model.addAttribute("naturalText", naturalText);
 
        String documentName = "Java tutorial for Beginners";
        if(id == 8108) {
            documentName = "Spring MVC for Beginners";
        }
 
        model.addAttribute("documentName", documentName);
 
        return "documentView";
    }
}