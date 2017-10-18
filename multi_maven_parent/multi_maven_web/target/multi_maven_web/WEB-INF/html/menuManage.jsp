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
	<h2>菜单管理</h2>
	<p>You can append some buttons to the standard datagrid pager bar.</p>
	<div style="margin: 20px 0;"></div>
	
	<userContxt:checkHasPermission privilegeName="查询所有菜单">
		<table id="tt"  style="width:100%;height:350px"></table>
	</userContxt:checkHasPermission>
	
	<div id="mm" class="easyui-menu" style="width:120px;">
		<userContxt:checkHasPermission privilegeName="增加菜单">
		<div onclick="append()" data-options="iconCls:'icon-add'">Append</div>
		</userContxt:checkHasPermission>
		<userContxt:checkHasPermission privilegeName="删除菜单">
		<div onclick="removetree()" data-options="iconCls:'icon-remove'">Remove</div>
		</userContxt:checkHasPermission>
		<userContxt:checkHasPermission privilegeName="编辑菜单">
		<div onclick="editMenu()" data-options="iconCls:'icon-edit'">edit</div>
		</userContxt:checkHasPermission>
		<div class="menu-sep"></div>
		<div onclick="collapse()">关闭</div>
		<div onclick="expand()">展开</div>
	</div>
	<div id="dlg" class="easyui-dialog"
		style="width: 400px; height: 350px; padding: 10px 20px" closed="true"
		buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>

		<form id="fm">
			<input type="hidden" name="menu_id"/>		
			<div class="fitem">
				<input name="id" value="0" type="hidden" /> <label>名字:</label> <input
					name="name" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>父级ID:</label> <input name="parentId"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>类型:</label> <input name="type" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>链接:</label> <input name="resUrl" class="easyui-validatebox">
			</div>
			<div class="fitem">
				<label>图标:</label> <input name="icon" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>排序值:</label> <input name="sort" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>是否可用:</label> <input name="isValid"
					class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>描述:</label> <input name="description"
					class="easyui-validatebox" required="true">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
	<div id="dd" > </div>

	<script type="text/javascript">
		function addMenu(){
			$('#dlg').dialog('open').dialog('setTitle',
			'New Menu');
			$('#fm').form('clear');
		}
		function editMenu(){
			var row=$('#tt').treegrid('getSelected');
			$.ajax({
				url:'./permission/editMenu',
				data:{'menu_id':row.menu_id},
				success:function(data){
					$('#dlg').dialog('open');
					$("#fm").form('clear');
					$("#fm").form('load',data.obj)
				}
			})
		}
	
		function deleteMuendialog(row){
			$("#dd").dialog({
				title: "title",
                width: 300,
                height: 200,
                closed: false,
                cache: true,
                collapsible:true,
                queryParams: { checksysno: row.menu_id },
                content:"you want to delete data where "+row.menu_id,
                modal: true,
                buttons: [{
					text:'Ok',
					iconCls:'icon-ok',
					handler:function(){
						//alert('ok'+row.menu_id);
						 $.ajax({
							url : "./permission/deleteMenu",
							data : {
								"menu_id" : row.menu_id
							},
							dataType : "json",
							success : function(data) {
								$('#tt').treegrid('reload');
							}
						}) 
						$("#dd").dialog("close")
					}
				},{
					text:'Cancel',
					handler:function(){
						//alert('cancel');
						$("#dd").dialog("close")
					}
				}]
			});
		}
		$(function() {
			$('#tt').treegrid({
				iconCls: 'icon-ok',
				title:'菜单管理',
			    url:'./permission/findUserAllMenu1',
			    idField:'menu_id',
			    treeField:'name',
			    columns:[[
			        {field:'name',title:'菜单名称',width:"15%"},
			        {field:'resUrl',title:'资源路径',width:"30%"},
			        {field:'sort',title:'排序',width:80,align:"center"},
			        {field:'isValid',title:'是否可用',width:"15%",align:"center",formatter: function(value,row,index){
							if (row.isValid=="1"){
								return "可用";
							} else {
								return value;
							}
						}
					},
			        {field:'description',title:'描述',width:"20%"}
			    ]],
			    loadFilter:myLoadTree,
			    lines: true,
			    rownumbers: true,
			    animate: true,
				collapsible: true,
				fitColumns: true,
				onContextMenu: onContextMenu
			});
		});
		function fixWidth(percent) {
			return document.body.clientWidth * percent;//根据自身情况更改
		}
		function saveUser() {
			$.ajax({
				url : "./permission/addMenu",
				data : $("#fm").serialize(),
				dataType : "json",
				success : function(data) {
					$('#dlg').dialog('close');
					$('#tt').treegrid('reload');
				}
			})
		}
		function myLoadTree(data,parentId){
			console.log(data);
			var arr=[];
			for (var i = 0; i < data.length; i++) {
				var map={};
				map.menu_id=data[i].menu_id;
				map.name=data[i].menu.name;
				var arrj=[];
				for (var j = 0; j < data[i].children.length; j++) {
					arrj.push(data[i].children[j])
				}
				map.children=arrj;
				arr.push(map)
			}
			return arr;
		}
		
		
		function onContextMenu(e,row){
			e.preventDefault();
			$(this).treegrid('select', row.menu_id);
			$('#mm').menu('show',{
				left: e.pageX,
				top: e.pageY
			});
		}
		function append(){
			/* idIndex++;
			$('#tg').treegrid('append',{
				parent: node.id,
				data: [{
					id: idIndex,
					name: 'New Task'+idIndex,
					persons: parseInt(Math.random()*10),
					begin: $.fn.datebox.defaults.formatter(d1),
					end: $.fn.datebox.defaults.formatter(d2),
					progress: parseInt(Math.random()*100)
				}]
			}) */
			var node = $('#tt').treegrid('getSelected');
			$('#fm').form('clear');
			$('#dlg').dialog('open').dialog('setTitle',
			'New Menu');
			$("#fm").form("load",{'parentId':node.menu_id});
		}
		function removetree(){
			var node = $('#tt').treegrid('getSelected');
			deleteMuendialog(node)
		}
		function collapse(){
			var node = $('#tt').treegrid('getSelected');
			if (node){
				$('#tt').treegrid('collapse', node.menu_id);
			}
		}
		function expand(){
			var node = $('#tt').treegrid('getSelected');
			if (node){
				$('#tt').treegrid('expand', node.menu_id);
			}
		}
		
	</script>
</body>
</html>