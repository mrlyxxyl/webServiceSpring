<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
访问地址 http://ip:port/项目名/services/PersonService?wsdl <a href="services/PersonService?wsdl" target="_blank">点次访问</a>
<pre>
    说明
        services：web.xml中配置的CXFServlet映射地址
        PersonService：spring-cxf.xml中配置的endpoint元素address的值
        通过url访问接口时，传参如下：
        &lt;PERSON&gt;
            &lt;ID&gt;1&lt;/ID&gt;
            &lt;NAME&gt;222&lt;/NAME&gt;
        &lt;PERSON&gt;
</pre>

<hr>
测试流程：
    <pre>
        1、打开cmd，执行wsimport -s E:\web_src\ -p com.client -keep http://192.168.1.124:8001/webServiceSpring/services/PersonService?wsdl
            说明：
                E:\web_src\为生成代码路径
                http://192.168.1.124:8001/webServiceSpring/services/PersonService?wsdl为webservice地址
        2、新建项目，将代码拷贝进去
        3、编写测试代码Test.java，内容如下：
            public class Test {
                public static void main(String[] args) {
                    PersonServiceImplService serviceImplService = new PersonServiceImplService();
                    PersonService personService = serviceImplService.getPort(PersonService.class);
                    Person person = new Person();
                    person.setID(1);
                    person.setNAME("ddd");
                    RespInfo respInfo = personService.save(person);
                    System.out.println(respInfo.getCODE());
                    System.out.println(respInfo.getMESSAGE());
                }
            }
    </pre>
<hr>
   <span style="color: red;">注意:服务端代码需要完整拷贝</span>
</body>
</html>