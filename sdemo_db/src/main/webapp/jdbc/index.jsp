<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>cn.codehero.jaee.basic项目首页    1.使用strapdown.js   2.源码文件夹:src/main/java、uc/main/java</title>

<xmp theme="united" style="display:none;">
##[\[主页\]](/)         [\[测试tomcat正常否?\]](/test)    [\[用于测试jsp\]](/index.jsp)   [\[用于测试jdbc\]](/index_jdbc.jsp)
###1cn.codehero.spring.web.jdbc  spring+jdbc用法
####1.1 Spring提供的轻量级org.springframework.jdbc.datasource.DriverManagerDataSource获取DataSource
DataSoureProvider.java Run as Junit    
####1.2 通过使用BasicDataSouce创建一个连接池获取DataSource。应为BasicDataSource所有属性都是通过setter方法暴露在外面的，
 我们可以像配置其他Srping Bean那样配置它我将数据库连接信息配置在properties文件中，利用spring的org.springframeword.beans.factory.config.PropertyPlaceholderConfigurer类进行读取装载。               
 url:[/jdbc/test](/jdbc/test) 看后台输出,前台不返回页面  
配置文件:resources/config/jdbc-import.xml+jdbc.properties  
 
</xmp>
<script src="http://strapdownjs.com/v/0.2/strapdown.js"></script>
