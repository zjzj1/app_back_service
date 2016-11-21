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
	<script type="text/javascript" language="javascript"  src="../common/js/common.js"></script>
	<script type="text/javascript">
		var cxt = "<%=basePath%>" ;
		var baseUrl = cxt+"/quartzJob.do";
		var queryUrl = baseUrl+"?method=query";
		var insertUrl = baseUrl+"?method=insert";
		var updateUrl = baseUrl+"?method=update";
		var deleteUrl = baseUrl+"?method=delete";
	</script>
	
</head>
<body>
	<!-- 菜单导航 -->
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
	<!-- 内容 -->
	<div class="container-fluid">
		<!-- Content -->
		<div class="row-fluid">
			<!-- 按钮组 -->
			<div class="span12">
				<div class="btn-group">
					 <button id="addBtn" class="btn btn-primary btn-lg" data-toggle="modal" type="button">
					 	<em class="icon-align-left">增加</em>
					 </button> 
					 <button id="delBtn" class="btn btn-danger btn-lg" data-toggle="modal" type="button">
					 	<em class="icon-align-center">删除</em>
					 </button> 
					 <button id="updateBtn" class="btn btn-success btn-lg" data-toggle="modal" type="button">
					 	<em class="icon-align-right">修改</em>
					 </button> 
					 <button id="detailBtn" class="btn btn-warning btn-lg" data-toggle="modal" type="button">
					 	<em class="icon-align-right">详情</em>
					 </button>
				</div>
				<!-- 表格  -->
				<table class="table table-striped" id="table" data-toggle="table" data-click-to-select="true" 
					data-show-toggle="true" data-search="true" data-id-field="jobCode"
				>
					<thead>
						<tr>
							<th data-radio="true"></th>
							<th data-field="jobGroCode">任务组编码</th>
							<th data-field="jobCode">任务编码</th>
							<th data-field="jobName">任务名称</th>
							<th data-field="jobClass">处理类</th>
							<th data-field="jobMethod">方法名</th>
							<th data-field="jobParamNum">参数个数</th>
							<th data-field="jobParam" data-visible="false">参数</th>
						</tr>
					</thead>
				</table>
				
		</div>
	</div>
	
	
	<!-- Modal -->
	<div id="myModal" class="modal fade bs-example-modal-lg" tabindex="-1" 
		role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
	      </div>
	      <div class="modal-body">
	        <form id="form">
			  <div class="form-group">
			    <label>任务组编码</label>
			    <input id="jobGroCode" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>任务编码</label>
			    <input id="jobCode" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>任务名称</label>
			    <input id="jobName" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>处理类</label>
			    <input id="jobClass" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>方法名</label>
			    <input id="jobMethod" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>参数个数</label>
			    <input id="jobParamNum" type="text" class="form-control" />
			  </div>
			  <div class="form-group">
			    <label>参数</label>
			    <textarea id="jobParam" type="text" class="form-control" style="height:200px"></textarea>
			  </div>
			</form>
	      </div>
	      <div class="modal-footer">
	        <button id="closeBtn" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <button id="saveBtn" type="submit" class="btn btn-primary">Save</button>
	      </div>
	    </div>
	  </div>
	</div>

	

</body>
</html>