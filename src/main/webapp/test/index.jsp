<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<title>cn.codehero.jaee.basic项目首页    1.使用strapdown.js   2.源码文件夹:src/main/java、uc/main/java</title>

<xmp theme="united" style="display:none;">
##[\[主页\]](/)         [\[测试tomcat正常否?\]](/test/test.jsp)    [\[用于测试jsp\]](/index.jsp)   [\[用于测试jdbc\]](/index_jdbc.jsp)  
说明:1.能用注解尽量用注解  

##包结构和功能如下:  
webapp    
|--/test/文件夹下内容可以拷贝到其他项目作为开发的一个引子
|--/test/index.jsp  功能目录
|--/test/test.jsp测试web service能否正常工作
|--/test/strapdown02/文件夹:github下载strapdown-gh-pages\v\0.2\内容  用于解析md文档

|--/jsp/   用于测试jsp
|-- index_jdbc.jsp用于测试jdbc的目录  

|--/WEB-INF/web.xml  

resources/config/  
|--springMVC-servlet.xml  //springMVC配置文件   
|--spring-core.xml        //spring配置文件总纲,其他文件都导入到这里来   
|--spring-import.xml   //用于包cn.codehero.spring.web.spring的配置文件  

 
###jsp文件的访问
url:[/jsp/success.jsp](/jsp/success.jsp)可以直接访问到,除WEB-INF目录外的其他目录也可以访问jsp文件 
可能是默认有一个解析器可以穿过  
index.jsp   

### cn.codehero.spring.entity  用于别的模块实验用  
User.java  

###1 cn.codehero.spring.web.controller 控制器,没有使用注解,使用xml来配置  
1)相当于helloworld程序,同时传递了map数据。   
url:[/controller/hellocontroller](/controller/hellocontroller)  
内容：李守宏:(2)springMVC-helloworld实例,(3)springMVC修改配置文件路径和给界面传递数据     
HelloController.java 
webapp/controller/hellocontroller.jsp    
   
2)一个controller写多个方法   
url:[/controller/multi?action=add](/controller/multi?action=add)  
url:[/controller/multi?action=update](/controller/multi?action=updata)  
内容：李守宏:(4)springMVC一个controller写多个方法.part1      
MultiController.java  
webapp/controller/multicontroller.jsp  

3)静态资源访问   
url:[/img/a.jpg](/img/a.jpg)  
url:[/controller?action=img](/controller//img?action=img)  
url:[/controller?action=jquery](/controller//img?action=jquery)  
内容：李守宏:(5)springMVC静态文件访问    
src:
StaticController.java  
webapp
|--/img/a.jpg  
|--/controller/staticcontroller_jquery.jsp  
|--/controller/staticcontroller_staticfile.jsp  

###2 cn.codehero.spring.annotation 注解  
1)spring注解相当于helloworld程序。  
url：[/annotation/hello](/annotation/hello)  
HelloAnnotation.java  
webapp/annotation/helloannotation.jsp  

2)spring注解：一个控制器对多个方法  
内容：李守宏:(6)springMVC注解启用    
url:[/annotation/user1/toUser](/annotation/user1/toUser)    可以到达[addUser]
url:[/annotation/user1/delUser](/annotation/user1/delUser)
其中还把数据传递到了页面中      
User1Controller.java  
webapp/annotation/user1controller.jsp  
     
3)spring注解：一个控制器对多个方法_优化    
内容：李守宏:(7)springMVC注解优化          
 增加了根目录   一次用的参数去掉  ，要用再拿出来   用string传递   用request.setAttribute传递参数  
url:[/annotation/user2/toUser](/annotation/user2/toUser)  可以到达[addUser]  
url:[/annotation/user2/delUser](/annotation/user2/delUser)
其中还把数据传递到了页面中     
User2Controller.java  
webapp/annotation/user2controller.jsp  

###3 cn.codehero.spring.data 数据传递  
1)没写  
内容：李守宏_(8)springMVC参数传递       
url：[/user/data1/toUser](/user/data1/toUser)[addUser]  
Data1Controller.java  
Data1Controller_addUser.jsp  
Data1Controller_userManager.jsp  

2)实操json取数据不成功，后来好象成功了。  
内容：李守宏:(9)springMVC和json结合传递数据    
url：[/user/data2/toUser](/user/data2/toUser)   可以到达[addUser]   
Data2Controller.java  
Data2Controller_addUser.jsp  
Data2Controller_userManager.jsp  

3)实验没成功，好象只能用录相里的老api包才行。  
内容：李守宏:(10)springMVC获取controller中的json数据  
url：[/user/data3/toUser](/user/data3/toUser)  [addUser]    
Data3Controller.java  
Data3Controller_addUser.jsp  
Data3Controller_userManager.jsp  

###4 cn.codehero.spring.file.upload 上传文件  
1)实验成功。好象文件 一定要有内容，否则上传不了。
内容：李守宏:(11)springMVC上传文件      
url:[/file/toupload](/file/toupload) [upload]    
UploadController.java  
/file/upload/UploadController_success.jsp  
/file/upload/UploadController_upload.jsp  

###5 cn.codehero.spring.web.spring  spring和springMVC集成 + 测试springMVC和spring上下文关系  
1)spring和springmvc的集成  
内容：李守宏:(13)springMVC和spring集成 (14)springMVC和spring集成续  
url:[/spring/get](/spring/get)    
Ispring.java  
SpringManager.java  
SpringController.java    @Resource(name=...) 注解的本质
/spring/success.jsp  

###6 cn.codehero.spring.hibernate（含子包）  spring集成hibernate
webapp/hibernate/
配置resources/config/
|--hibernate-import.xml  
|--hibernate.cfg.xml 配置文件  
|--hibernate.hbm.xml  好象没用
|--hibernate.properties  这种配置方式还没有试    
|--spring-hibernate.xml   //hibernate配置文件    此文件还没用上

####cn.codehero.spring.web.hibernate.controller  控制器
url:[/hibernate/toAddUser](/hibernate/toAddUser)      url:[/hibernate/addUser](/hibernate/addUser)  

####cn.codehero.spring.web.hibernate.entity
####cn.codehero.spring.web.hibernate.service
####cn.codehero.spring.web.hibernate.dao



内容：李守宏_  
(16)spring+hibernate简单实例.part1   
(17)spring+hibernate实例续       
(18)spring+hibernate事务配置      
(19)springMVC+hibernate+spring实践：写了代码 
(20)springMVC+spring+hibernate实践2.part1：配置      
(21)spring+hibernate配置调试bug      
(22)spring+hibernate查询实现      
(23)spring+hibernate删除数据      
(24)spring+hibernate查询单个实体      
(25)spring+hibernate编辑数据   

###7 velocity的使用  //还没调试成功
webapp/vm  
package:cn.codehero.spring.web.velocity
webapp/vm/helloworld.vm
config/velocity.properties  此文件还没用上


###8  freemaker的使用  //还没调试成功
webapp/ftl  
package
webapp/ftl/viewshello.ftl

</xmp>
<script type="text/JavaScript" src="/test/strapdown02/strapdown.js"></script> 
