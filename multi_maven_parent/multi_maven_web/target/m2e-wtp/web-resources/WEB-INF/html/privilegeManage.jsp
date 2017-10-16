<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="userContxt" uri="http://jty.com.cn/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom DataGrid Pager - jQuery EasyUI Demo</title>
<link rel="stylesheet" type="text/css"
	href="./easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="./easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="./easyui/demo/demo.css">
<script type="text/javascript" src="./easyui/jquery.min.js"></script>
<script type="text/javascript" src="./easyui/jquery.easyui.min.js"></script>
</head>
<body>
	<h2>Custom DataGrid Pager</h2>
	<p>You can append some buttons to the standard datagrid pager bar.</p>
	<div style="margin: 20px 0;"></div>
	<userContxt:checkHasPermission privilegeName="权限url生成">
		<button onclick="generatePrivilege()">生成资源列表</button>
	</userContxt:checkHasPermission>
	<br/>
	<br/>
	<userContxt:checkHasPermission privilegeName="查看所有权限资源">
	<table id="tt" title="Frozen Columns" class="easyui-datagrid" style="width:100%;height:250px"
		url="./permission/findAllPrivilege"
		singleSelect="true" iconCls="icon-save">
	</table>
	</userContxt:checkHasPermission>
	
	
	<script type="text/javascript">
	function generatePrivilege(){
		alert("in----");
		$.ajax({
			url:'./permission/generatePrivilege',
			method:'get',
			success:function(data){
				$("#tt").datagrid("reload");
				alert(data+"success");
			}
		})
	}
		$(function() {
			$('#tt').datagrid({
				columns:[[
					{field:'privilege_id',title:'Item ID',width:80},
					{field:'privilegename',title:'资源名称',width:80},
					{field:'privilegeurl',title:'资源链接',width:500}
				]]
			});
		})
		
	</script>
</body>
</html>