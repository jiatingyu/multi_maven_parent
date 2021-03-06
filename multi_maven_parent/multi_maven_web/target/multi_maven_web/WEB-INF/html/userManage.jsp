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
<style type="text/css">
label{
	width: 53px;
    display: inline-block;
    padding-bottom: 10px;}
</style>
</head>
<body>
	<h2>Custom DataGrid Pager</h2>
	<p>You can append some buttons to the standard datagrid pager bar.</p>
	<div style="margin: 20px 0;"></div>
	<userContxt:checkHasPermission privilegeName="查看用户列表">
	<table id="dg" title="Custom DataGrid Pager" toolbar="#tb"
		style="width: 100%; height: 350px"
		data-options="rownumbers:true,singleSelect:true,pagination:true,method:'get'" >
		<thead> 
			<tr>
				<th data-options="field:'id',width:100">Item ID</th>
				<th data-options="field:'username',width:fixWidth(0.2)">Name</th>
				<th
					data-options="field:'password',width:fixWidth(0.2),align:'right'">Pwd</th>
				<th
					data-options="field:'password',width:fixWidth(0.2),align:'right'">Pwd</th>
			</tr>
		</thead>
	</table>
	</userContxt:checkHasPermission>
	<div id="dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		<form id="fm" >
			<div class="fitem">
				<input name="id" value="0" type="hidden"/>
				<label>用户名:</label> <input name="username"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>密   码:</label> <input name="password"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>角色:</label> <input name="roleList[0].role_id" class="easyui-combobox" id="combo"
					 data-options="valueField:'role_id',textField:'rolename' ">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
	<div id="tb">
		<userContxt:checkHasPermission privilegeName="增加用户">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="addUser()">增加</a>
		</userContxt:checkHasPermission>
		<userContxt:checkHasPermission privilegeName="删除用户">
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteUser()">删除</a>
		</userContxt:checkHasPermission>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="true" onclick="reload()">刷新</a>
	</div>
	<div id="dd" > </div>
	<script type="text/javascript">
	function reload(){
		$('#dg').datagrid("reload");
	}
	function deleteUser(){
		
		var row = $('#dg').datagrid('getSelected');
		//$.messager.alert('Info', row.id+":"+row.id+":"+row.id);
		$("#dd").dialog({
			title: "用户删除",
               width: 300,
               height: 200,
               closed: false,
               cache: true,
               collapsible:true,
               content:"you want to delete data where "+row.id,
               modal: true,
               buttons: [{
				text:'Ok',
				iconCls:'icon-ok',
				handler:function(){
					//alert('ok'+row.menu_id);
					 $.ajax({
						url : "./permission/deleteUser",
						data : {
							"id" : row.id
						},
						dataType : "json",
						success : function(data) {
							$('#dg').datagrid('reload');
						}
					}) 
					$("#dd").dialog("close")
				}
			},{
				text:'Cancel',
				handler:function(){
					$("#dd").dialog("close")
				}
			}]
		});
		
	}
		$(function() {
			var pager = $('#dg').datagrid({url:'./permission/findAllUser'}).datagrid('getPager'); // get the pager of datagrid
			/* pager.pagination({
				buttons : [
						{
							iconCls : 'icon-search',
							handler : function() {
								alert('search');
							}
						},
						{
							iconCls : 'icon-add',
							handler : function() {
								$('#dlg').dialog('open').dialog('setTitle',
										'New User');
								$('#fm').form('clear');
								
							}
						}, {
							iconCls : 'icon-edit',
							handler : function() {
								alert('edit');
							}
						}]
			}); */
		});
		function fixWidth(percent) {
			return document.body.clientWidth * percent;//根据自身情况更改
		}
		function addUser(){
 			$("#combo").combobox({
 				loader:function(param,success,error){
 					$.ajax({
 						url:'./permission/findAllRole',
	 					success:function(data){
	 						var items=$.map(data.rows, function(item){
	 							console.log(item)
		 						return {role_id:item.role_id,rolename:item.rolename};
	 						})
	 						success(items);
	 					}
 					})
 				}
			});
 				
			$('#dlg').dialog('open').dialog('setTitle',
			'New User');
			$('#fm').form('clear');
		}
		function saveUser(){
			$.ajax({
				url:"./permission/addUser",
				data:$("#fm").serialize(),
				dataType:"json",
				success:function(data){
					$('#dlg').dialog('close');
					$('#dg').datagrid('reload');
				}
			})
		}
		
		/* var loderRole=function(param,success,error){
			alert("xxx");
		} */
	</script>
</body>
</html>