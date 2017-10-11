<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<table id="dg" title="Custom DataGrid Pager" toolbar="#tb"
		style="width: 100%; height: 250px"
		data-options="rownumbers:true,singleSelect:true,pagination:true,method:'get'" >
		<thead> 
			<tr>
				<th data-options="field:'id',width:100">Item ID</th>
				<th data-options="field:'username',width:fixWidth(0.2)">Name</th>
				<th
					data-options="field:'password',width:fixWidth(0.2),align:'right'">Pwd</th>
			</tr>
		</thead>
	</table>
	<div id="dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		
		<form id="fm" >
			<div class="fitem">
				<input name="id" value="0" type="hidden"/>
				<label>First Name:</label> <input name="username"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Last Name:</label> <input name="password"
					class="easyui-validatebox" required="true">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
	<div id="tb">
		<c:if test="">
		
		</c:if>
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:alert('Add')">Add</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true" onclick="javascript:alert('Cut')">Cut</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:alert('Save')">Save</a>
	</div>
	
	<script type="text/javascript">
		$(function() {
			$('#dg').datagrid({
				 onSelect:function(index,row){
					 alert(row.id)
					/*  $("#dd").append("你确定要删除"+row.username);
					 $('#dd').dialog({    
					    title: 'My Dialog',    
					    width: 200,    
					    height: 100,    
					    //modal: true,
					    buttons:$("#dd")
					});  */
				  $.ajax({
						 url:"../permission/deleteUser",
							data:{"id":row.id},
							dataType:"json",
							success:function(data){
								$('#dg').datagrid('reload');
							}
					 }) 
				 }
			 });
			var pager = $('#dg').datagrid({url:'../permission/findAllUser'}).datagrid('getPager'); // get the pager of datagrid
			pager.pagination({
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
						} ]
			});
			 
		});
		function fixWidth(percent) {
			return document.body.clientWidth * percent;//根据自身情况更改
		}
		function saveUser(){
			$.ajax({
				url:"../permission/addUser",
				data:$("#fm").serialize(),
				dataType:"json",
				success:function(data){
					$('#dlg').dialog('close');
					$('#dg').datagrid('reload');
				}
			})
		}
		
	</script>
</body>
</html>