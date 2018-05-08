<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<html>
<head>
<meta charset="utf-8">
<title>JSP语法测试页</title></head>
<body>
<br>Hello World!这是jsp语法的展示页面</br>

<%-- 以下段落是定义变量 --%>
<%! int i = 123456; %> 
<%! int a=1, b=2, c=3; %>  

<%-- 以下语句是打印变量 --%>
<b>打印变量i=<%=i %></b>

<%-- 打印java的表达式 --%>
<b>your IP address is <%=request.getLocalAddr()%></b>

<!-- 这是一个HTML注释，客户端可以看到，但是%--..--%类型的jsp注释不会在客户端显示 -->



<!-- if...else的例子 -->
<h3>IF...ELSE 举例</h3>
<%int day =1; %>
<p>今天的天day=<%=day %></p>
<%if (day==1|day==7){%>
<p>今天是周末</p>
<% } else{ %>
<p>今天不是周末</p>
<%} %>



<!-- switch...case的例子 -->
<h3>Switch的例子</h3>
<%
switch(day)
{ 
case 1:
{
out.println("星期日");
}break;
case 2:
{
out.println("星期一");
}break;
default:{
out.println("没定义的星期 day="+day);
}break;
}
 %>


<!-- 以下是for循环语句的demo 其中</br>标签是换行-->
<h3>For循环的demo</h3>
<% int fontSize=1;%>
<% for(fontSize=1;fontSize<=3;fontSize++){%>
<font color="green" size="<%=fontSize %>">
菜鸟教程,fontSize=<%=fontSize %>
</font></br>
<%} %>


<!-- 以下是While循环的例子 -->
<h3>While循环例子</h3>
<%fontSize=0;%>
<%while(fontSize<=3){ %>
<font color="orange" size="<%=fontSize %>>">
菜鸟教程,fontSize=<%=fontSize %>
</font></br>
<%fontSize++; %>
<%}%>
 
 
<!-- 以下部分是JSP的include动作元素demo，用来引用加载其他文件 -->
<h3>JSP的动作元素demo,调用datetest.jsp页面</h3>
<jsp:include page="datetest.jsp" flush="true"/>

<!-- 以下demo是JSP的getPropertye动作，用于提取指定Bean（Java对昂的值）属性的值， -->
<h3>JSP使用JavaBean实例，访问操作Java对象</h3>
<jsp:useBean id="testyanru" class="com.runoob.test.TestBean"></jsp:useBean>
<jsp:setProperty property="message" name="testyanru" value="菜鸟。。。。"/>
<!-- getPropertye用于获取并打印出message字段的值 -->
<jsp:getProperty property="message" name="testyanru"/>


<!-- 以下是JSP内置对象的demo -->
<h3>JSP内置对象的demo</h3>
<p>getRequestURI()=<%= request.getRequestURI()%></p>
<p>page对象的测试hashCode=<%= page.hashCode() %></p>

</body>
</html>
