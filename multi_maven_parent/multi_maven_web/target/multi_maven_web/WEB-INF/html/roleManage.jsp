<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="userContxt" uri="http://jty.com.cn/core"%>
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
	<userContxt:checkHasPermission privilegeName="查看角色列表">
		<table id="dg" title="Custom DataGrid Pager"
			style="width: 100%; height: 450px"
			data-options="rownumbers:true,singleSelect:true,pagination:true"
			toolbar="#tb">
			<thead>
				<tr>
					<th data-options="field:'role_id',width:100">序号</th>
					<th data-options="field:'rolename',width:fixWidth(0.2)">名称</th>
					<th
						data-options="field:'description',width:fixWidth(0.2),align:'right'">描述</th>
				</tr>
			</thead>
			
		</table>
	</userContxt:checkHasPermission>
	<div id="tb">
		<userContxt:checkHasPermission privilegeName="增加角色">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
				onclick="addRole()">增加</a>
		</userContxt:checkHasPermission>
		<userContxt:checkHasPermission privilegeName="删除角色">
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove"
				plain="true" onclick="deleteRole()">删除</a>
		</userContxt:checkHasPermission>
		<a href="#" class="easyui-linkbutton" iconCls="icon-reload"
			plain="true" onclick="reload()">刷新</a> <a href="#"
			class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="addRoleMenu()">给角色分配菜单</a>
	</div>
	<div id="dlg" class="easyui-dialog"
		style="width: 90%; height: 480px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div class="ftitle">Role Information</div>
		<form id="fm">
			<div class="fitem">
				<!-- <input name="role_id" value="0" type="hidden"/> -->
				<label>角色名称:</label> <input name="rolename"
					class="easyui-validatebox" required="true"> <label>角色描述:</label>
				<input name="description" class="easyui-validatebox" required="true">
			</div>
		</form>
		<div class="easyui-layout" style="width: 99%; height: 90%;">
			<div id="p" data-options="region:'west'" title="West"
				style="width: 50%; padding: 10px">
				<span id="grid1" style="width: 100%"></span>
			</div>
			<div data-options="region:'center'" title="Center">
				<span id="grid2" style="width: 100%"></span>
			</div>
		</div>
	</div>
	<div id="dlg1" class="easyui-dialog"
		style="width: 90%; height: 480px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons1">
		<div class="ftitle">给角色分配菜单</div>
		<form id="fm1">
			<div class="fitem">
				<input name="role_id" id="role_id" type="hidden" /> <label>角色名称:</label> <input
					name="rolename" class="easyui-validatebox" required="true">
				<label>角色描述:</label> <input name="description"
					class="easyui-validatebox" required="true">
			</div>
		</form>
		<div class="easyui-layout" style="width: 99%; height: 90%;">
			<div id="p" data-options="region:'west'" title="West"
				style="width: 100%; padding: 10px">
				<span id="grid22" style="width: 100%"></span>
			</div>
		</div>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
	<div id="dlg-buttons1">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="getChecked()">Save</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#dlg1').dialog('close')">Cancel</a>
	</div>
	<div id="dd"></div>
<div class="easyui-panel" style="padding:5px">
		<ul class="easyui-tree" data-options="url:'./permission/findUserAllMenu1',method:'get',loadFilter:myLoadFilter"></ul>
	</div>
	<script type="text/javascript">
	function addRole(){
		$('#dlg').dialog('open').dialog('setTitle','New Role');
		$("#grid1").datagrid({
			//url:'../permission/findAllPrivilege',
			columns:[[
						{field:'privilege_id',title:'Item ID',width:80},
						{field:'privilegename',title:'资源名称',width:80},
						{field:'privilegeurl',title:'资源链接',width:500}
					]],
			onSelect:function(index,row){
				//alert(index)
				$("#grid1").datagrid("deleteRow",index);
				$('#grid2').datagrid('insertRow',{
					index: index,	// 索引从0开始
					row: {
						privilege_id: row.privilege_id,
						privilegename: row.privilegename,
						privilegeurl: row.privilegeurl
					}
				});
			}
		})
		$('#grid1').datagrid('loadData', { total: 0, rows: [] });
		$("#grid2").datagrid({
			url:'./permission/findAllPrivilege', 
			method:'get',
			columns:[[
						{field:'privilege_id',title:'Item ID',width:80},
						{field:'privilegename',title:'资源名称',width:80},
						{field:'privilegeurl',title:'资源链接',width:500}
					]],
			pagination:true,
			onSelect:function(index,row){
				//alert(index)
				$("#grid2").datagrid("deleteRow",index);
				$('#grid1').datagrid('insertRow',{
					index: index,	// 索引从0开始
					row: {
						privilege_id: row.privilege_id,
						privilegename: row.privilegename,
						privilegeurl: row.privilegeurl
					}
				});
			}
		})
	}
	function deleteRole(){
		var row=$("#dg").datagrid("getSelected");
		
		$("#dd").dialog({
			title: "用户删除",
               width: 300,
               height: 200,
               closed: false,
               cache: true,
               collapsible:true,
               content:"you want to delete data where "+row.role_id,
               modal: true,
               buttons: [{
				text:'Ok',
				iconCls:'icon-ok',
				handler:function(){
					//alert('ok'+row.menu_id);
					$.ajax({
						url:'./permission/deleteRole',
						data:{'role_id':row.role_id},
						success:function(data){
							if(data.data=="1"){
								$("#dg").datagrid('reload');
							}
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
			
			var pager = $('#dg').datagrid({url:'./permission/findAllRole'}).datagrid('getPager'); // get the pager of datagrid
			 
		});
		function fixWidth(percent) {
			return document.body.clientWidth * percent;//根据自身情况更改
		}
		function saveUser(){
			var xx=$("#fm").serialize();
			var obj={};
			$.each($("#grid1").datagrid("getRows"),function(index,item){
				obj["permissions["+index+"].privilege_id"]=item.privilege_id;
			})
			var data=xx+"&"+$.param(obj);
			  $.ajax({
				url:"./permission/addRole",
				//data:$("#fm").serialize(),
				data:data,
				dataType:"json",
				success:function(data){
					$('#dlg').dialog('close');
					$('#dg').datagrid('reload');
				}
			}) 
		}
		function addRoleMenu(){
			var row=$('#dg').datagrid('getSelected');
			if(row==null) alert("请选择角色");
			console.log(row.role_id);
			$.ajax({
				url:'./permission/editRole',
				data:{'role_id':row.role_id},
				success:function(data){
					$("#fm1").form('clear');
					$("#fm1").form('load',data.data);
					$('#dlg1').dialog('open');
				}
			});
			
			
		}
		
		function myLoadFilter(data, parent){
			//data='[{"id":1,"text":"Node 1","state":"closed","children":[{"id":11,"text":"Node 11"},{"id":12,"text":"Node 12"}]},{"id":2,"text":"Node 2","state":"closed"}]';
			var arr=[];
			for (var i = 0; i < data.length; i++) {
				var map={};
				map.id=data[i].menu_id;
				map.text=data[i].menu.name;
				var arrj=[];
				for (var j = 0; j < data[i].children.length; j++) {
					var map1={};
					map1.id=data[i].children[j].menu_id;				
					map1.text=data[i].children[j].name;				
					arrj.push(map1)
				}
				map.children=arrj;
				arr.push(map)
			}
			$('#grid22').tree({
				data:arr,
				animate:true,
				checkbox:true,
				lines:true
				
			})
		}
		
		function getChecked(){
			var nodes = $('#grid22').tree('getChecked');
			var s = '';
			var set = new Set();
			for(var i=0; i<nodes.length; i++){
				if (s != '') s += ',';
				s += nodes[i].id+":"+nodes[i].text;
				/* if($(this).tree("getParent",nodes[i].text)){
					s+="parent"+nodes[i].getParent.id+":"+nodes[i].getParent.text
				} */
				var parent=$('#grid22').tree('getParent',nodes[i].target)
				if(parent){
					set.add(parent.id);
				}
				set.add(nodes[i].id);
				//alert($('#grid22').tree('getParent',nodes[i].target).id + ":"+$('#grid22').tree('getParent',nodes[i].target).text);
			}
			var val=[];
			set.forEach(function(item){
				val.push(item);
			})
			alert(val.toString());
			
			$.ajax({
				url:'./permission/addRoleMenuRelation',
				data:{'role_id':$("#role_id").val(),'menus':val},
				//dataType:'json',
				success:function(data){
					if(data.res>"1"){
						$("#dlg1").dialog('close');
					}
				}
			})
			
			
		}
		
	</script>
</body>
</html>