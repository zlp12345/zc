<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	        <% String path=request.getContextPath(); %>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>登陆首页</title>
			<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
			<link rel="stylesheet" href="<%=path%>/js/bootstrap/css/bootstrap.min.css">
			<link rel="stylesheet" href="<%=path%>/js/layui/css/layui.css">
			<script type="text/javascript" src="<%=path%>/js/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="<%=path%>/js/layui/layui.js"></script>
	</head>
	<body  class="layui-layout-body">
	      <div class="layui-layout layui-layout-admin">
                <div class="layui-header">
					<div class="layui-logo">众筹管理平台</div>
					<!-- 头部区域（可配合layui已有的水平导航） -->
					<ul class="layui-nav layui-layout-right">
						<li class="layui-nav-item">
							<a href="javascript:;">
								<img src="http://t.cn/RCzsdCq" class="layui-nav-img">
								${user.lusername}
							</a>
							<dl class="layui-nav-child">
								<dd><a href="">基本资料</a></dd>
								<dd><a href="">安全设置</a></dd>
							</dl>
						</li>
						<li class="layui-nav-item"><a href="">退出</a></li>
					</ul>
				</div>
			  <div class="layui-side layui-bg-black">
				  <div class="layui-side-scroll">
					  <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					  <ul class="layui-nav layui-nav-tree"  lay-filter="test">
						  <li class="layui-nav-item layui-nav-itemed">
							  <a class="" href="javascript:;">项目管理</a>
							  <dl class="layui-nav-child">
								  <dd><a href="#" class="menu" url="<%=path%>/toProject.do" title="所有项目">所有项目</a></dd>
								  <dd><a href="#" class="menu" url="<%=path%>/toProject.do" title="项目审核">项目审核</a></dd>
								  <dd><a href="#" class="menu" url="<%=path%>/toProject.do" title="项目跟踪">项目跟踪</a></dd>
								  <dd><a href="#" class="menu" url="<%=path%>/toProject.do" title="项目评论">项目评论</a></dd>
								  <dd><a href="#" class="menu" url="<%=path%>/toProject.do" title="项目分类">项目分类</a></dd>
								  <dd><a href="#" class="menu" url="<%=path%>/toProject.do" title="项目推荐">项目推荐</a></dd>
							  </dl>
						  </li>
						  <li class="layui-nav-item">
							  <a href="javascript:;">用户管理</a>
							  <dl class="layui-nav-child">
								  <dd><a href="javascript:;">注册用户</a></dd>
								  <dd><a href="javascript:;">用户资金</a></dd>
								  <dd><a href="">用户日志</a></dd>
								  <dd><a href="">实名审核</a></dd>
							  </dl>
						  </li>
						  <li class="layui-nav-item"><a href="">新闻管理</a></li>
						  <li class="layui-nav-item"><a href="">问题管理</a></li>
						  <li class="layui-nav-item"><a href="">日志管理</a></li>
					  </ul>
				  </div>
			  </div>
			  <div class="layui-body">
				  <div class="layui-tab layui-tab-brief" lay-filter="demo" lay-allowclose="true">
					  <ul class="layui-tab-title">
						  <li class="layui-this" lay-id="11">今日众筹</li>
					  </ul>
					  <div class="layui-tab-content">
                          <div class="layui-tab-item layui-show">
							  <div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px">
								  <div style="padding-left: 20px;">
									  <font size="5">今日新增众筹资金:</font><font size="5" color="blue">33333¥</font><br>
									  昨日众筹资金<br>
									  <font size="5">今日新增众筹项目:10</font><br>
									  昨日新增众筹项目<br>
									  <button class="layui-btn layui-btn-normal">查看详情</button>
								  </div>
							  </div>
							  <font size="5">实时数据</font>(每5s自动刷新)
							  <table class="table table-striped">
								  <tr>
									  <th>时间</th>
									  <th>类型</th>
									  <th>记录</th>
									  <th>操作</th>
								  </tr>
								  <tr>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
								  </tr>
								  <tr>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
								  </tr>
								  <tr>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
								  </tr>
								  <tr>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
								  </tr>
								  <tr>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
									  <td>1</td>
								  </tr>
							  </table>
						  </div>
					  </div>
				  </div>
			  </div>
			  <div class="layui-footer">
				  <!-- 底部固定区域 -->
				  ©layui.com - 版权随便用
			  </div>
		  </div>
	    <script type="text/javascript">
            /*//JavaScript代码区域
			layui.use('element',function () {
				var element=layui.element;
				var active = {
				    tabAdd:function (url,id,name) {
						element.tabAdd('demp',{
                            title: name,
                            content: '<iframe data-frameid="' + id + '" src="' + url + '" frameborder="0" width="100%" height="455px" scrolling="no"></iframe>',
                            id: id
						})
						//FrameWH();
                    },
                    tabChange: function (id) {
                        element.tabChange('demo', id);
                    },
                    tabDelete: function (id) {
                        element.tabDelete("demo", id);
                    }

				};
                $(".menu").on("click",function(){
                    var url = $(this).attr("url");
                    var title = $(this).attr("title");
                    //判断标签页是否已经打开
                    if($(".layui-tab-title [lay-id='"+title+"']").length>0){
                        active.tabChange(title);
                    }else{
                        active.tabAdd(url,title,title);
                        active.tabChange(title);
                    }

                })
            });*/
                //JavaScript代码区域
                layui.use('element', function(){
                    var element = layui.element;
                    var active = {
                        tabAdd: function (url, id, name) {
                            element.tabAdd('demo', {
                                title: name,
                                content: '<iframe data-frameid="' + id + '" src="' + url + '" frameborder="0" width="100%" height="455px" scrolling="no"></iframe>',
                                id: id
                            })
                            //FrameWH();
                        },
                        tabChange: function (id) {
                            element.tabChange('demo', id);
                        },
                        tabDelete: function (id) {
                            element.tabDelete("demo", id);
                        }
                    };

                    $(".menu").on("click",function(){
                        var url = $(this).attr("url");
                        var title = $(this).attr("title");
                        //判断标签页是否已经打开
                        if($(".layui-tab-title [lay-id='"+title+"']").length>0){
                            active.tabChange(title);
                        }else{
                            active.tabAdd(url,title,title);
                            active.tabChange(title);
                        }

                    })

                });


		</script>

    </body>
</html>