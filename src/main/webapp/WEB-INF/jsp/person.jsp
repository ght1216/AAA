<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'person.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="layuiadmin/layui/css/layui.css" media="all">
	<script type="text/javascript" src="layuiadmin/layui/layui.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
  </head>
  
  <body>
    <form class="layui-form" action="">
	  <div class="layui-form-item">
		    <label class="layui-form-label">工号</label>
		    <div class="layui-input-block">
		      <input type="text" name="UID" required  lay-verify="required" value="${getuser[0].UID}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	  <div class="layui-form-item">
		    <label class="layui-form-label">姓名</label>
		    <div class="layui-input-block">
		      <input type="text" name="Uname" required  lay-verify="required" value="${getuser[0].Uname}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	  <div class="layui-form-item">
		    <label class="layui-form-label">头像</label>
		    <div class="layui-input-block">
		      <img src="img/${getuser[0].Url }" style="width: 30px;height: 30px;" class="layui-nav-img" name="Url" value="${getuser[0].Url }">
		    </div>
	  </div>
	  
	   <div class="layui-form-item">
		    <label class="layui-form-label">所在部门</label>
		    <div class="layui-input-block">
		      <input type="text" name="DeptID" required  lay-verify="required" value="${getuser[0].DeptID}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	   <div class="layui-form-item">
		    <label class="layui-form-label">性别</label>
		    <div class="layui-input-block">
		      <input type="text" name="Sex" required  lay-verify="required" value="${getuser[0].Sex}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	   <div class="layui-form-item">
		    <label class="layui-form-label">手机号</label>
		    <div class="layui-input-block">
		      <input type="text" name="Phone" required  lay-verify="required" value="${getuser[0].Phone}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	   <div class="layui-form-item">
		    <label class="layui-form-label">出生日期</label>
		    <div class="layui-input-block">
		      <input type="text" name="Birthday" required  lay-verify="required" value="${getuser[0].Birthday}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	   <div class="layui-form-item">
		    <label class="layui-form-label">入职日期</label>
		    <div class="layui-input-block">
		      <input type="text" name="InDate" required  lay-verify="required" value="${getuser[0].InDate}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	  
	  <div class="layui-form-item">
		    <label class="layui-form-label">转正日期</label>
		    <div class="layui-input-block">
		      <input type="text" name="RegularDate" required  lay-verify="required" value="${getuser[0].RegularDate}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  <div class="layui-form-item">
		    <label class="layui-form-label">离职日期</label>
		    <div class="layui-input-block">
		      <input type="text" name="OffDate" required  lay-verify="required" value="${getuser[0].OffDate}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  <div class="layui-form-item">
		    <label class="layui-form-label">任职状态</label>
		    <div class="layui-input-block">
		      <input type="text" name="TakeOfficeState" required  lay-verify="required" value="${getuser[0].TakeOfficeState}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	  <div class="layui-form-item">
		    <label class="layui-form-label">工作状态</label>
		    <div class="layui-input-block">
		      <input type="text" name="WorkState" required  lay-verify="required" value="${getuser[0].WorkState}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	  <div class="layui-form-item">
		    <label class="layui-form-label">备注</label>
		    <div class="layui-input-block">
		      <input type="text" name="Note" required  lay-verify="required" value="${getuser[0].Note}" autocomplete="off" class="layui-input">
		    </div>
	  </div>
	  
	  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="formDemo">修改</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
	 	 </div>
    </form>
  </body>
</html>
