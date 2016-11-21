function loadGrid(url,param) {
	$.get(url,param,function(result){
		data = $.parseJSON(result);
		$("#table").bootstrapTable("load", data);
	});
}
function loadForm(url,param) {
	$.get(url,param,function(result){
		data = $.parseJSON(result);
		fillForm(data[0]);
	});
}
function getSelections() {
	var trs = $('#table').bootstrapTable('getSelections');
	if(trs.length==0) {
		alert("请选择一行数据"); 
		return null;
	} else {
		return trs[0];
	}
}
function fillForm(obj) {
	var arr = $("#form :input[type!=button]");
	for(var i=0;i<arr.length;i++) {
		var id = arr[i].id;
		$("#"+id).val(obj[id]);
	}
}
function saveInfo(url,param) {
	$.post(url,param,function(result){
		loadGrid(queryUrl, {});
		$('#myModal').modal("hide");
		alert("保存成功");
	});
}
function deleteInfo(url,param) {
	$.post(url,param,function(result){
		loadGrid(queryUrl, {});
		alert("删除成功");
	});
}
function initPage(){
	var idField = $("#table").bootstrapTable().attr("data-id-field");
	var idFieldArr = idField.split(",");
	loadGrid(queryUrl, {});
	//按钮绑定事件
	$("#addBtn").on("click",function(){
		$('#myModal').modal("show");
		$("#saveBtn").show();
		for(var i=0;i<idFieldArr.length;i++){
			$("#"+idFieldArr[i]).attr("readonly", false);
		}
		$('#form')[0].reset();
	});
	$("#delBtn").on("click",function(){
		var tr = getSelections();
		if(tr) {
			if(confirm("确定要删除数据吗？")){
				deleteInfo(deleteUrl,tr);
			}
		}
	});
	$("#updateBtn").on("click",function(){
		var tr = getSelections();
		if(tr) {
			$('#myModal').modal("show");
			$("#saveBtn").show();
			for(var i=0;i<idFieldArr.length;i++){
				$("#"+idFieldArr[i]).attr("readonly", true);
			}
			loadForm(queryUrl, tr);
		}
	});
	$("#detailBtn").on("click",function(){
		var tr = getSelections();
		if(tr) {
			$('#myModal').modal("show");
			$("#saveBtn").hide();
			loadForm(queryUrl, tr);
		}
	});
	$("#saveBtn").on("click",function(){
		var data = {};
		var arr = $("#form :input[type!=button]");
		for(var i=0;i<arr.length;i++) {
			var id = arr[i].id;
			data[id] = $("#"+id).val();
		}
		data.random = new Date();
		var readonly = $("#"+idFieldArr[0]).attr("readonly");
		if(readonly) saveInfo(updateUrl, data);
		else saveInfo(insertUrl, data);
	});
}
$(document).ready(function(){
	initPage();
});
		