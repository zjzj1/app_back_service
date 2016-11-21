<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include  page="/pages/common/comm-imp.jsp"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<head>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	   <div class="navbar-header">
	      <a class="navbar-brand" href="#">QUARTZ配置</a>
	   </div>
	   <div>
	      <ul class="nav navbar-nav">
	         <li class="active"><a href="quartz_job.jsp">任务配置</a></li>
	         <li class="active"><a href="quartz_trigger.jsp">触发器配置</a></li>
	         <li class="active"><a href="quartz_schedule.jsp">调度配置</a></li>
	      </ul>
	   </div>
	</nav>
	

</body>
</html>