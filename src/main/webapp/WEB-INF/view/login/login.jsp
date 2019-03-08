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
	<body>
	    <ul class="layui-nav">
		<img alt="logo" height="30px" src="images/aiqiyilogo.png">
		<div class="layui-input-inline" style="margin-left: 240px">
			<input type="text" name="username" lay-verify="required"
				placeholder="请输入" autocomplete="off" class="layui-input">
		</div>
		<button class="layui-btn" style="margin-right: 160px;">搜索</button>
		<li class="layui-nav-item"><a href="">最新活动</a></li>
		<li class="layui-nav-item layui-this"><a href="javascript:;">产品</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="">选项1</a>
				</dd>
				<dd>
					<a href="">选项2</a>
				</dd>
				<dd>
					<a href="">选项3</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="">大数据</a></li>
		<li class="layui-nav-item"><a href="javascript:;">解决方案</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="">移动模块</a>
				</dd>
				<dd>
					<a href="">后台模版</a>
				</dd>
				<dd class="layui-this">
					<a href="">选中项</a>
				</dd>
				<dd>
					<a href="">电商平台</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item"><a href="">社区</a></li>
		<li class="layui-nav-item"><a href="">个人中心<span
				class="layui-badge-dot"></span></a></li>
		<li class="layui-nav-item" lay-unselect=""><a href="javascript:;"><img
				src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="javascript:;">修改信息</a>
				</dd>
				<dd>
					<a href="javascript:;">安全管理</a>
				</dd>
				<dd>
					<a href="javascript:;">退了</a>
				</dd>
			</dl></li>
	</ul>
	<div style="width: 100%;height: 530px;background-color:#354343;">
	
	<div style="float: left;height: 530px;">
	    <div class="layui-nav layui-nav-tree"  lay-filter="test">
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        <div class="layui-nav-item" style="width:100%;padding-left:79px;">最新活动</div>
	        
	    </div>
    </div>
	</div>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});
		});
		//常规轮播图
		layui.use(['carousel', 'form'], function(){
           var carousel = layui.carousel
                      ,form = layui.form;
           //改变下时间间隔、动画类型、高度
           carousel.render({
             elem: '#test2',
             nterval: 1800,
             anim: 'default',
             height: '560px',
             width:'1070px' 
           });
		})
	</script>
	<script>
        
  
  
     </script>
	
</body>
</html>