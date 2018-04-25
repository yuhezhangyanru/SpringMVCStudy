<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>lifecircle.jspy页面标题</title>
</head>

<body>
<!-- 猜测这是嵌入一段java代码 -->
<%!
private int initVar=0;
private int serviceVar=0;
private int destroyVar=0;
%>

<%!
//JSP的初始化函数
public void jspInit(){
initVar++;
System.out.println("jspInit()执行了，JSP被初始化了 initVar="+initVar);
}

//这个销毁函数在切换页面的时候未见到调用
public void jspDestroy(){
destroyVar++;
System.out.println("jspDestory();JSP被销毁了 destroyVar="+destroyVar);{//相当奇葩，不明白这里，为啥必须补个{才会接触编译报错
}
%>

<!-- 以下这段代码，没有被某个方法名包围，其实是默认作用在service()函数中了，
但是我打开网页的时候没见到调用它，此外在本段内定义的变量也应该是局部变量，jsp访问不到-->
<%!
serviceVar++;
System.out.println("_jspService():JSP共响应了"+serviceVar+"次请求");
}//再次奇葩！留意这个‘}’本段代码结束，需要放在下一行行首，改为 destroyVar;}这样都会报错！
%>
<h1>JSP测试生命周期函数的demo</h1>    
     
<p>
   Today's date: <%= (new java.util.Date()).toLocaleString()%>
</p>

<!-- 注释：在页面打印定义变量的值 -->
<p>初始化次数：<%=initVar %></p>
<p>响应客户端请求次数:<%=serviceVar %></p>
<p>销毁次数：<%=destroyVar %></p> 

</body>
</html>