<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="https://www.w3.org/2001/XMLSchema-instance" xmlns="https://java.sun.com/xml/ns/javaee" xsi:schemaLocation="https://java.sun.com/xml/ns/javaee https://java.sun.com/xml/ns/javaee/web-app_3_0.xsd" version="3.0">
  <display-name>FirstJSP</display-name>
  
  <servlet>
  <servlet-name>Test</servlet-name>
  <jsp-file>/WEB-INF/test.jsp</jsp-file>
  <init-param>
  	<param-name>test</param-name>
  	<param-value>Test Value</param-value>
  </init-param>
  </servlet>
  
  <servlet-mapping>
  <servlet-name>Test</servlet-name>
  <url-pattern>/Test.do</url-pattern>
  </servlet-mapping>
  
  <servlet>
  <servlet-name>Test1</servlet-name>
  <jsp-file>/WEB-INF/test.jsp</jsp-file>
  </servlet>
  
  <servlet-mapping>
  <servlet-name>Test1</servlet-name>
  <url-pattern>/Test1.do</url-pattern>
  </servlet-mapping>
</web-app>
