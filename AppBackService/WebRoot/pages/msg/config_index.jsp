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
	      <a class="navbar-brand" href="#">MSG配置</a>
	   </div>
	   <div>
	      <ul class="nav navbar-nav">
	         <li class="active"><a href="config_interface.jsp">接口配置</a></li>
	         <li class="active"><a href="config_service.jsp">服务配置</a></li>
	         <li class="active"><a href="config_fieldmap.jsp">字段配置</a></li>
	      </ul>
	   </div>
	</nav>
	

</body>
</html>