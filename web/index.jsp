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
</body>
</html>