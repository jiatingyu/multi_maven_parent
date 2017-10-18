function loginOut() {
			$.ajax({
				url : '../permission/loginOut'
			})
			location.href = "./login.html";
		}

$(function() {
			$.ajax({
				url : '../permission/findUserAllMenu',
				async:false,
				success : function(data) {
					//debugger;
					console.log(data);
					var html="";
					//var data={"res":0,"resMsg":null,"obj":{"2":[{"menu_id":2,"name":"菜单设置","parentId":"0","layer":null,"type":"0","resUrl":"无","btnId":null,"btnFun":null,"icon":"无","sort":"1","isValid":"1","description":"顶级菜单","createTime":1507782438000,"updateTime":1507782438000},{"menu_id":3,"name":"菜单管理","parentId":"2","layer":null,"type":"1","resUrl":"www.baidu.com","btnId":null,"btnFun":null,"icon":"无","sort":"1","isValid":"1","description":"顶级菜单的子菜单","createTime":1507782563000,"updateTime":1507782563000}],"4":[{"menu_id":4,"name":"权限管理","parentId":"0","layer":null,"type":"0","resUrl":"","btnId":null,"btnFun":null,"icon":"0","sort":"1","isValid":"1","description":"顶级菜单","createTime":1507782606000,"updateTime":1507782606000},{"menu_id":5,"name":"用户管理","parentId":"4","layer":null,"type":"1","resUrl":"www.xinlang.com","btnId":null,"btnFun":null,"icon":"0","sort":"1","isValid":"1","description":"顶级菜单的子级","createTime":1507782661000,"updateTime":1507782661000},{"menu_id":6,"name":"角色管理","parentId":"4","layer":null,"type":"1","resUrl":"www.jiaose.com","btnId":null,"btnFun":null,"icon":"无","sort":"1","isValid":"1","description":"子级菜单（角色管理）","createTime":1507782746000,"updateTime":1507782746000}]}};
					for ( var item in data.obj) {
						//alert(data.obj[item].length)
						for (var i = 0; i < data.obj[item].length; i++) {
							//alert(data.obj[item][i].name)
							if(i==0){
							html += '<li class="licli">'
									+ '         <a href="#">                                                                     '
									+ '             <i class="fa fa-home"></i>                                                   '
									+ '             <span class="nav-label">'+data.obj[item][i].name+'</span>                                          '
									+ '            <span class="fa arrow"></span>                                              '
									+ '         </a> ';                                                                            
							}else{
								
									html+='         <ul class="nav nav-second-level ">                                                '
									+ '             <li>                                                                         '
									+ '                 <a class="J_menuItem" href="'+data.obj[item][i].resUrl+'" data-index="0">'+data.obj[item][i].name+'</a> '
									+ '             </li>                                                                        '
									+ '         </ul>   ';                                                                         
							}
						}
						html+"</li>";
					}
					$("#side-menu").append(html);
				}
			})
			
		})