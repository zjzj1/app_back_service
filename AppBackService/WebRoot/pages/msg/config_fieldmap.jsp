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
		var baseUrl = cxt+"/configFieldMap.do";
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
					data-show-toggle="true" data-search="true" data-id-field="intfCode,msgField,fieldType"
				>
					<thead>
						<tr>
							<th data-radio="true"></th>
							<th data-field="intfCode">接口编码</th>
							<th data-field="msgField">信息字段名称</th>
							<th data-field="msgValue">信息字段值</th>
							<th data-field="intfField">接口字段名称</th>
							<th data-field="intfValue">接口字段值</th>
							<th data-field="fieldType">字段类型</th>
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
			    <label>接口编码</label>
			    <input id="intfCode" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>信息字段名称</label>
			    <input id="msgField" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>信息字段值</label>
			    <input id="msgValue" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>接口字段名称</label>
			    <input id="intfField" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>接口字段值</label>
			    <input id="intfValue" type="text" class="form-control" >
			  </div>
			  <div class="form-group">
			    <label>字段类型</label>
			    <input id="fieldType" type="text" class="form-control" />
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