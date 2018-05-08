<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring4 MVC -HelloWorld</title>
</head>
<body>
    <h1>greeting的参数值为：${greeting}</h1>
    <script> 
    
    //使用严格模式，避免声明变量未添加"var "造成该变量成为全局变量（所有页面都可以访问的变量）
    //暂时屏蔽该模式 'use strict';
      
    /***************************************************************
    2018-5-8修改：本页剩余的部分是关于js的最基础的语法，以及对象的定义和访问等语法说明
    ****************************************************************/
    //以下是部分JS语法的学习，关于JS的比较符号，应选用===去比较
    var a=1;
    var b='1';
    console.log("a is a number, b is a string, then value: a="+a+",b="+b+",a==b?"+(a==b)+",a===b?"+(a===b));
     
    //关于null和undefined的比较
    var no1;
    var no2;
    console.log("var no1, (no1===null)?"+(no1===null)+",(no1===undefined)?"+(no1===undefined)+",val="+no1);//结果会是false，true，undefined
    console.log("var no1, (no1==null)?"+(no1==null)+",(no1==undefined)?"+(no1==undefined)+",val="+no1);//结果会是true，true，undefined
    
    /**JS的对象定义：方法1，直接声明的方式 **/
    //js的对象定义,需要注意的
    //demo1:先声明一个普通的带键值对的js对象类型，并实例化一个对象person
    var person = {
       name:"张三",
       age:11, 
    };
    var p1=person; //新建一个对象引用p1并指向person，此时p1等同于person
    person.name="李四";
    console.log("js的对象测试,person.name="+person.name+",person.age="+person.age);
    console.log("js的对象测试,p1.name="+p1.name+",p1.age="+p1.age);
    var test = person.age+ person.name;//相当于字符串拼接
    console.log("测试字符串拼接 person.name+person.age="+test);
 
 
    /**************************JS对象的定义方式：方法2，带构造函数的声明方式*****************************/
    //声明一个带构造函数的对象类型
    function LoginObj(UserName,UserPassWord)  
    {  
        //声明各个成员变量并为其赋值
        this.name=UserName;   
        this.password=UserPassWord;  
         
        //声明成员方法 //yanruTODO不知道为啥定义没有报错，但是使用报错？？
        function getName()
        {
            return this.name;
        };
        //构造函数甚至可以带返回值，不注释return1也不会报错.return 1;
    }  
    var login =new LoginObj('张三丰','测试密码哈哈'); //区别调用了函数还是 构造一个对象，只能用new关键字来判断了
    console.log("测试构造的LoginObj 对象 login, login.name="+login.name+",login.password="+login.password);//",getName()="+login.getName());
    
    /**************************声明不带成员熟悉对象 的方式************************************/
    //声明一个没什么用的空对象,并且js可以动态的添加成员熟悉，
    function NullObject()
    {
    }
    var nullObj = new NullObject();
    console.log("空对象类型 NullObject 实例 nullObj="+nullObj.n); //注意：我定义了一个啥属性也没有的对象，访问属性'n'不会报错，输出的值为undefined！
    var nullObj2= {};
    nullObj2.testval='啊哈';
    console.log("空对象类型 NullObject 实例 未声明的属性 nullObj2.n="+nullObj2.n+",testval成员值="+nullObj2.testval);//输出分别为undefined 和 啊哈
    console.log("给对象nullObj2 添加属性testval2前，属性值为="+nullObj2.testval2);
   /*  with(nullObj2)//不推荐使用with关键字，使用了with关键字后，JS引擎无法对这段代码进行优化。并且我也没有搞清楚这段with语句的实际功效。
    {
       //  this.testval2=234; with添加属性的语句块不能使用this.关键字赋值
       testval2=234;
    }
    console.log("给对象nullObj2 添加属性testval2后，属性值为="+nullObj2.testval2);
     */
      
    //js关于继承的demo
    function LoginObjV2(UserEmail)
    {
       this.email=UserEmail;
    }
    LoginObjV2.prototype = LoginObj('李四','李四的密码');//指定LoginObjV2对象继承LoginObj
    var loginObjv2 = new LoginObjV2("yuhehahahah@sina.com");
    console.log("继承了LoginObj的对象LoginObjV2 实例loginObjv2.email="+loginObjv2.email+
    ",loginObjv2.name="+loginObjv2.name+",loginObjv2.password="+loginObjv2.password);
     
     //定义一个全局变量
     num1= 123;
     console.log("num1="+num1);
     
     
     
     
     /*****************************************************************
               关于js的字符串demo
     ******************************************************************/
     //以下几个例子是转义字符的的说明
     var str1='I\'m \"OK\"'; //由于最外圈是用''包起来的，里面的""出现时是否带转义字符都行
     console.log("str1="+str1);//打印结果：I'm "OK"
     //用Unicode定义字符串
     var str2= '\u4e2d\u6587';
     console.log("str2="+str2+"#");//打印结果：中国
     //定义一个十六进制数字
     var num16 = '\x41';
     console.log("num16="+num16); //打印结果：A
     //定义多换行符的字符串，用·定义，该按钮位置在F1按钮左下角即EXC按钮下方 的那个键
     var strmultiline =`哈哈
     是谁
     换行了啊啊啊`;
     console.log("strmultiline="+strmultiline);//运行效果，会产生换行。但这样感觉阅读源码的时候比较奇怪！
     
     //模板字符串的试用,并非所有浏览器都支持，我试了Chrome,Microsoft Edge就不支持，并非所有浏览器支持，慎重试用！
     var name = '小明';
     var age = 20;
     var message = `你好, ${name}, 你今年${age}岁了!`;
     console.log("message="+message);
    
     //以下为字符串的部分操作
     var s="嗨Hello,World!";
     console.log("字符串长度 s.length="+s.length);
     console.log("访问特定字符 s[0]="+s[0]+",s[1]="+s[1]);
     //注意：字符串不可变，以下针对单个字符的赋值语句将不会工作
     s[1]='哈';
     console.log("s[0]="+s[0]+",modifyed s[1]="+s[1]);
     console.log("转为大写 toUpperCase()="+s.toUpperCase());
     console.log("转为小写 toLowerCase()="+s.toLowerCase());
     console.log("indexOf="+s.toLowerCase().indexOf("hello"));
     console.log("substring="+s.substring(0,4));
      console.log("substring(18)="+s.substring(18));
    
    </script>
</body>
</html>