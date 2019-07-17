<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SysLog.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link rel="stylesheet" href="layuiadmin/layui/css/layui.css"  media="all">
  </head>
  
  <body>
  	<table class="layui-hide" id="test"></table>
              
          
<script src="layuiadmin/layui/lay/layui.js" charset="utf-8"></script>
 
<script>
layui.use('table', function(){
  var table = layui.table;
  
  table.render({
    elem: '#test'
    ,url:'/demo/table/user/'
    ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
    ,cols: [[
      {field:'id', title: 'ID', sort: true}
      ,{field:'username', title: '用户名'} //width 支持：数字、百分比和不填写。你还可以通过 minWidth 参数局部定义当前单元格的最小宽度，layui 2.2.1 新增
      ,{field:'sex', title: '性别', sort: true}
      ,{field:'city', title: '城市'}
      ,{field:'sign', title: '签名'}
      ,{field:'classify', title: '职业', align: 'center'} //单元格内容水平居中
      ,{field:'experience', title: '积分', sort: true, align: 'right'} //单元格内容水平居中
      ,{field:'score', title: '评分', sort: true, align: 'right'}
      ,{field:'wealth', title: '财富', sort: true, align: 'right'}
    ]]
  });
});
</script>
  </body>
</html>
