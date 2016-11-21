<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'stock_tower_rent.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="script/jquery.min.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	$(function(){
		$("#click_check").click(function(){
			if($("#click_check").is(':checked')){
				 $("[name='province']").attr("checked",'true');
			}else{
				$("[name='province']").removeAttr("checked");//取消全选
			}
		});
	});
	$(function(){
		$("#addProvince").click(function(){
			var s = "";
			var n=0;
			 //$("[name='province']").length-1
			for (var i = 0; i <$("[name='province']").length; i++) {
				if ($("[name='province']")[i].checked == true) {
					//如果该复选框被选中
					if(n == 0){
						s=$("[name='province']")[i].value;
					}
					else{
						s = s + "," + $("[name='province']")[i].value;
					}
					n++;
				}
			}
			alert(s);
			$("#province").val(s);
		});
		
		$("#import_data").click(function(){
			if($("#province").val() == null || $("#province").val() == ""){
				alert("必须选择省份！");
				return false;
			}
		});
	});

</script>
</head>

<body>
	This is my JSP page.
	<br>
	<div align="center">
		<br> 存量塔批量起租表+塔类产品业务变更通知单导出:<br />
		<form
			action="${pageContext.request.contextPath }/import/stockTowerRent/importExcle.do"
			method="post">
				<select name="op" style="width: 200px;">
					<option value="1">导出存量铁塔批量起租表</option>
					<option value="2">导出业务变更通知单</option>
					<option value="3">导出室分产品业务确认单</option>
				</select>
				要导出的省份：<input id="province" name="privince" type="text"
				style="width: 200px"> 
			&nbsp;&nbsp;&nbsp;&nbsp;<input id="import_data" type="submit"
				value="导出" onclick="addProvinceIsEmpty()">
		</form>
		<table>
			<tr>
				<td><input name="province" type="checkbox" value="62">甘肃省</td>
				<td><input name="province" type="checkbox" value="63">青海省</td>
				<td><input name="province" type="checkbox" value="64">宁夏回族自治区</td>
				<td><input name="province" type="checkbox" value="71">台湾省</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="46">海南省</td>
				<td><input name="province" type="checkbox" value="51">四川省</td>
				<td><input name="province" type="checkbox" value="81">香港特别行政区</td>
				<td><input name="province" type="checkbox" value="52">贵州省</td>
			</tr>

			<tr>
				<td><input name="province" type="checkbox" value="41">河南省</td>
				<td><input name="province" type="checkbox" value="33">浙江省</td>
				<td><input name="province" type="checkbox" value="45">广西壮族自治区</td>
				<td><input name="province" type="checkbox" value="22">吉林省</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="34">安徽省</td>
				<td><input name="province" type="checkbox" value="50">重庆市</td>
				<td><input name="province" type="checkbox" value="65">新疆维吾尔自治区</td>
				<td><input name="province" type="checkbox" value="42">湖北省</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="37">山东省</td>
				<td><input name="province" type="checkbox" value="21">辽宁省</td>
				<td><input name="province" type="checkbox" value="82">澳门特别行政区</td>
				<td><input name="province" type="checkbox" value="35">福建省</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="36">江西省</td>
				<td><input name="province" type="checkbox" value="23">黑龙江省</td>
				<td><input name="province" type="checkbox" value="15">内蒙古自治区</td>
				<td><input name="province" type="checkbox" value="31">上海市</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="32">江苏省</td>
				<td><input name="province" type="checkbox" value="11">北京市</td>
				<td><input name="province" type="checkbox" value="54">西藏自治区</td>
				<td><input name="province" type="checkbox" value="12">天津市</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="13">河北省</td>
				<td><input name="province" type="checkbox" value="43">湖南省</td>
				<td><input name="province" type="checkbox" value="61">陕西省</td>
				<td><input name="province" type="checkbox" value="44">广东省</td>
			</tr>
			<tr>
				<td><input name="province" type="checkbox" value="53">云南省</td>
				<td><input name="province" type="checkbox" value="14">山西省</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4"><input id="click_check" type="checkbox" onclick="">全选</td>
			</tr>
		</table>
		<br>
		<input id="addProvince" type="button" value="添加多省份">
	</div>
</body>
</html>
