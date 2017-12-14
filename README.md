# EAF 简单应用框架

## 项目简介

**EAF** 是一个通用JavaWeb项目骨架，作为一个 seed(种子) 项目，你可以基于它快速搭建项目原型，并进行开发。

EAF本身是以Spring Framework为核心容器，Spring MVC为模型视图控制器，MyBatis为数据访问层，Apache Shiro为权限授权层，Ehcahe对常用数据进行缓存。

在未来版本会考虑集成Activit工作流引擎，并增加内置功能模块。

## 内置功能

待扩展

## 技术选型

1、后端

* 核心框架：Spring Framework 4.x
* 安全框架：Apache Shiro 1.3
* 视图框架：Spring MVC 4.x
* 服务端验证：Hibernate Validator 5.1
* 持久层框架：MyBatis 3.2
* 数据库连接池：Alibaba Druid 1.0
* 缓存框架：Ehcache 2.6
* 日志管理：SLF4J 1.7、Log4j 1.2
* 工具类：Apache Commons、Jackson 2.9、Xstream 1.4、Dozer 5.5、POI 3.9
* 代码生成器：MyBatis-generator 1.3.5
* 分页插件：pagehelper 5.1.2

2、前端

* JS框架：LayUI 2.2.4、jQuery 1.9
* CSS框架：Twitter Bootstrap 2.3.1
* 表单：layUI form
* 弹出层：layer
* 模板引擎：laytpl
* 数据表格：layUI table
* 日期控件： laydate

3、平台

* 服务器中间件：在Java EE 6规范（Servlet 3.0、JSP 2.2）下开发，支持应用服务器中间件有Tomcat 7、WebLogic 11g等
* 数据库支持：目前仅提供Oracle数据库的支持，未来考虑对其他数据库扩展，例如MySQL、H2等
* 开发环境：Java EE、Eclipse、Maven、Git

## 特别感谢

* JeeSite（ThinkGem）    http://www.jeesite.com/
* Quick4J（StarZou）       https://github.com/Eliteams/quick4j
* LayUI（贤心）                  http://www.layui.com/
* layuiCMS（驊驊龔頾）   https://github.com/BrotherMa/layuiCMS

## If you have a better suggestion,Please share out,Let's do better.
> Author：liyiming  
> Email：liyiming.neu@neusoft.com 