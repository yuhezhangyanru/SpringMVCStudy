# SpringMVCStudy 
在这个项目中，SpringMVC中学习的一些记录，先学习jsp语法

项目启动后，默认浏览器输入访问：此外还有几个controller定义几个类访问。
http://localhost:8080/HelloSpringMVC/
仅仅作为HelloWorld的demo使用，暂无后续学习内容的更新，只是用来帮助说明定义URI向服务器传参的方法。

基本HelloWorlddemo-jsp定义从服务器回参的方法：
http://localhost:8080/HelloSpringMVC/hello

重定向到HelloWorld的demo:
http://localhost:8080/HelloSpringMVC/hello

按'user’参数名指定传入参数：
http://localhost:8080/HelloSpringMVC/user?name=admin

从URI中指定传入多个参数的情况：http://localhost:8080/HelloSpringMVC/web/fe/default/en/document/8108/spring-mvc-for-beginners

仅用于从服务器向浏览器返回一个字符串，注意字符编码问题：
http://localhost:8080/HelloSpringMVC/saveResult

访问自己创建的Servlet：
http://localhost:8080/HelloSpringMVC/HelloServlet

查看jsp生命周期函数调用的代码：
http://localhost:8080/HelloSpringMVC/life

查看jsp展示各种语法的页面：
http://localhost:8080/HelloSpringMVC/jspgrammar

jsp的action测试指令'forward',用来跳转到别的页面http://localhost:8080/HelloSpringMVC/jspActionForward

访问jsp的XMl页面demo：
http://localhost:8080/HelloSpringMVC/jspxml

# SpringMVCJaveConfigSpace工作空间的Spring4MVCHelloWorldNoXMLDemo项目
此项目的web.xml就无效了，可以删除，暂时没删掉
项目启动后，浏览器输入地址访问：
http://localhost:8080/Spring4MVCHelloWorldNoXMLDemo/