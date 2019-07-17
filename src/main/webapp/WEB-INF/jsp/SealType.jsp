<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SealType.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="layuiadmin/style/admin.css" media="all">
  	<link rel="stylesheet" href="dist/bootstrap.min.css">
    <link rel="stylesheet" href="dist/sidebar-menu.css">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="layuiadmin/layui/layui.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script src="dist/sidebar-menu.js"></script>
  </head>
  
  <body>
    <table class="layui-table" >
    	<tr>
    		<th>印章名称</th>
    		<th>管理人</th>
    	</tr>
    	<c:forEach items="${sealTypeList }" var="s">
    		<tr>
    			<td>${s.SealName }</td>
    			<td>${s.Uname }</td>
    		</tr>
    	</c:forEach>
    </table>
  </body>
</html>
