<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'meeting.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" href="layuiadmin/layui/css/layui.css"  media="all">
  </head>
<script>

</script>
  
  <body style="padding: 20px; background-color: #F2F2F2;">
 	<h1 style="position: absolute;left:40px;">会议室列表</h1>
	<button class="layui-btn" style="width: 100px;position: absolute;left:885px;" id="btn"><a lay-href="ins.do" style="color: white;" lay-tips='组件' lay-direction='2'>登记会议室</a></button>
    <c:forEach items="${queryMeetingAll }" var="m">
	     <div style="margin-top:20px ;position:relative;top: 45px;">
		  <div class="layui-row layui-col-space15">
		    <div class="layui-col-md6" style="width: 900px;">
		      <div class="layui-card"  style="padding:15 0 0 15;height:290px;position: relative;left:80px;">
		        <div class="layui-card-body">
					<img src="img/${m.Url }" style="width: 320px;height: 240px;position: relative;top:20px;left:40px;">
					<div id="meeting" style="position: relative;left:500px;top:-170px;">
						<h1>${m.MeetingName }</h1><br/>
						容量：<span>${m.Capacity }</span><br/>
						位置：<span>${m.Site }</span><br/>
						内部设备：<span>${m.Equip }</span><br/>
						状态：<span>
								<c:if test="${m.State==0 }">
									正常
								</c:if>
								<c:if test="${m.State==1 }">
									占用
								</c:if>
								<c:if test="${m.State==2 }">
									维修
								</c:if>
							</span>
					</div>
		        </div>
		      </div>
		    </div>
		  </div>
		</div> 
    </c:forEach>
  </body>
</html>
