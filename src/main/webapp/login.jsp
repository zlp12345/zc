<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<% String path=request.getContextPath(); %>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登陆首页</title>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="js/layui/css/layui.css">
		<script type="text/javascript" src="js/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/layui/layui.js"></script>
        <style type="text/css">
			img{
				width: 100%;
				height:100%;
				
			}
			table{
				border-collapse: separate;
				border-spacing: 15px;
			}
		</style>
	</head>
	<body style="background-color:#000">
		<div class="layui-fluid">
			<!-- <div class="layui-row" style="height:400px;background-color:#f0f0f0;" >
				<div class="layui-col-md12" style="background-color:#fff;"> -->
				    <!-- 轮播图 -->
				    <div class="layui-row" style="padding-top: 100px;margin:90px;">
				<div class="layui-col-md12" style="height: 300px;background-color: #f0f0f0;">
				    <div style="float:left;width:51%;height:100%;">
				    
					<div class="layui-carousel"  id="test1">
						<div carousel-item>
							<div><img src="images/1.jpg" height="300px" alt="eeee" class="img-thumbnail"></div>
							<div><img src="images/2.jpg" class="img-thumbnail"></div>
							<div><img src="images/3.jpg" class="img-thumbnail"></div>
							<div><img src="images/4.jpg" class="img-thumbnail"></div>
							<div><img src="images/5.jpg" class="img-thumbnail"></div>
						</div>
					</div>
					</div>
					<div>
					     <div style="float: right;width: 49%;height:100%;background-color:gray;">
						<center>
						<h1 style="padding-top: 10px"><font color="#ffffff" >欢迎登陆</font></h1>
						<form class="layui-form" style="padding-top: 20px;">
							<table align="center"  style="" >
								<tr style="padding: 3px">
									<td style="text-align: center;width: 120px" ><h3>用户名</h3></td>
									<td colspan="2">
										<div class="layui-input-inline" style="width: 100%">
							      			<input type="text" name="lusername"   lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
							    		</div>
							    	</td>
								</tr>
								<tr>
									<td style="text-align: center;"><h3>密码</h3></td>
									<td colspan="2">
										<div class="layui-input-inline" style="width: 100%">
							      			<input type="text" name="lpassword"  lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
							    		</div>
							    	</td>
								</tr>
								<tr>
									<td style="text-align: center;width: 120px" ><h3>验证码</h3></td>
									<td >
										<div class="layui-input-inline">
							      			<input type="text" name="yzm"  lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
							    		</div>
							    	</td>
									<td width="100px">
										<img alt="验证码" id="img" src="<%=path%>/login/yzm.do" onclick="up()" >
									</td>
								</tr>
								<tr>
									<td colspan="3">
									    <div class="layui-input-block">
									      <input type="button" class="layui-btn"  lay-submit lay-filter="formDemo" value="提交">
									      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
									    </div>
									</td>
								</tr>
							</table>
						</form>
						</center>
					</div>
				</div>
			</div>
		</div>
		</div>
		<script type="text/javascript">
			
			function setyzm(){
				$.ajax({
					url:'<%=path%>/login/getYzm.do',
					type:'post',
					dataType:'json',
					success:function(data){
						yzm=data.yzm;
					}
				})
			}
			setyzm();
			function up(){
				var data = new Date();
				$("#img").attr("src","<%=path%>/login/Yzm.do?date="+data);
				setyzm();
			}
			layui.use(['carousel','form'], function(){
				  var carousel = layui.carousel;
				  var form=layui.form;
				  //建造实例
				  carousel.render({
				    elem: '#test1'
				    ,height:'100%'
				    ,width: '100%' //设置容器宽度
				    ,arrow: 'hover' //始终显示箭头
				    ,anim: 'default' //切换动画方式
				  });
				  form.on("submit(formDemo)",function(data){
					  if(data.field.yzm!=yzm){
						  layer.alert("验证码输入有误,"+data.field.yzm+";"+yzm);
					  }else{
						 // alert(data.field.lpassword);
						  $.ajax({
							  url:'<%=path%>/login/login.do',
							  type:'post',
							  data:{"lusername":data.field.lusername,"lpassword":data.field.lpassword},
							  dataType:'json',
							  success:function(data){
								  if(data.success){
									  location.href="<%=path%>/toIndex.do";
								  }else{
									  layer.alert(data.msg);
								  }
							  }
						  })
					  }
				  })
				
				});
	</script>
	</body>
	
</html>