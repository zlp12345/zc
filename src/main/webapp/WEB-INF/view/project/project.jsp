<%--
  Created by IntelliJ IDEA.
  User: 赵路平
  Date: 2019/3/5
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div style="border: 1px solid #98919b">
        <form class="layui-form" id="ProWhere">
            <div class="layui-form-item" style="padding-top: 5px;margin-bottom: 5px">
                <div class="layui-input-inline">
                    <input tabindex="text" name="ps_name" class="layui-input" placeholder="项目名称">
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="ps_us_id" class="layui-input" placeholder="项目发起人">
                </div>
                <div class="layui-input-inline">
                    <select name="ps_pst_id">
                         <option selected disabled value="">项目类型</option>
                         <option value="1">支教助学</option>
                         <option value="2">儿童关爱</option>
                         <option value="3">扶老助孤</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="ps_type">
                        <option selected disabled value="">项目状态</option>
                        <option value="0">待审核</option>
                        <option value="1">待上架</option>
                        <option value="2">众筹中</option>
                        <option value="3">众筹成功</option>
                        <option value="4">众筹失败</option>
                        <option value="5">审核未通过</option>
                    </select>
                </div>
                <button class="layui-btn layui-btn-normal" lay-submit lay-filter="Prosub">
                    查询
                </button>

            </div>
        </form>
    </div>
    <table id="projectData"></table>
      <script type="text/javascript">
          layui.use(['form','table'],function(){
              var form = layui.form,
                  table = layui.table;
              table.render({
                  elem:'#projectData',
                  url:"<%=path%>/project/getPro.do",
                  height:400,
                  page: true,
                  cols:[[
                      {field:"data",title:'eeee'},
                      {field:'ps_pst_id',title: '项目类型'},
                      {field:'ps_name',title: '项目名称'},
                      {field:'ps_getmoney1',title: '项目进度',templet: function(data){
                          var mm=data.ps_getmoney/data.ps_money*100;
                          return mm+"%";
                      }},
                      {field:'ps_starttime',title: '开始时间'},
                      {field:'ps_endtime',title: '结束时间'},
                      {field:'ps_getmoney',title: '已筹金额',templet: function(data){
                             var dd=data.ps_getmoney;
                          return dd+"元";
                      }},
                      {field:'ps_us_id',title:'发起人'},
                      {field:'pseee',title: '操作',templet:function (data) {
                          return " <input type='button' value='详情' class=\"layui-btn layui-btn-normal\" onclick='getById("+data.ps_id+")'><input type='button' value='详情' class=\"layui-btn layui-btn-normal\" onclick='getById2(alert("+data+"))'>";
                      }}
                  ]]
              });

              form.on('submit(Prosub)', function(data){

                  table.reload('projectData',{
                      where:data.field,
                      page:{
                          curr:1
                      }
                  });

                  return false;
              });


          })
          function getById(ps_id){
              alert("lsosl");
              $.ajax({
                  url:'<%=path%>/project/getByPsId.do',
                  type:'post',
                  data:{"ps_id":ps_id},
                  dataType:'json',
                  success:function(data){
                      if(data.success){
                          var tyeee=data.data2.ps_type==0?'待审核':data.data2.ps_type==1?'待上架':data.data2.ps_type==2?'众筹中':data.data2.ps_type==3?'众筹成功':data.data2.ps_type==4?'众筹失败':'审核未通过';
                          var tysex=data.data2.login.lsex==0?'女':'男';
                          var typddd=data.data2.projectsee.pst_type==0?'可用':'禁用';
                          //配置一个透明的询问框
                          layer.msg('<table border="1px blue"  class="layui-btn" style="height: 500px;width: auto">' +
                              '<tr><td>提示：</td><td>20s后自动关闭</td></tr>' +
                              '<tr><td>用户姓名：</td><td>'+data.data2.login.lname+'</td></tr>' +
                              '<tr><td>客服名称：</td><td>'+data.data2.ps_cust_name+'</td></tr>' +
                              '<tr><td>客服手机号：</td><td>'+data.data2.ps_cust_phone+'</td></tr>' +
                              '<tr><td>客服地址：</td><td>'+data.data2.ps_cust_address+'</td></tr>' +
                              '<tr><td>项目标题：</td><td>'+data.data2.ps_name+'</td></tr>' +
                              '<tr><td>筹款目的：</td><td>'+data.data2.ps_goal+'</td></tr>' +
                              '<tr><td>项目地址：</td><td>'+data.data2.ps_address+'</td></tr>' +
                              '<tr><td>筹资金额：</td><td>'+data.data2.ps_money+'</td></tr>' +
                              '<tr><td>筹资天数：</td><td>'+data.data2.ps_days+'</td></tr>' +
                              '<tr><td>宣传视频地址：</td><td>'+data.data2.ps_video+'</td></tr>' +
                              '<tr><td>项目故事：</td><td>'+data.data2.ps_story+'</td></tr>' +
                              '<tr><td>更多支持：</td><td>'+data.data2.ps_support+'</td></tr>' +
                              '<tr><td>提供回报简述：</td><td>'+data.data2.ps_repay+'</td></tr>' +
                              '<tr><td>关于自己：</td><td>'+data.data2.ps_aboutme+'</td></tr>' +
                              '<tr><td>项目状态：</td><td>'+tyeee+'</td></tr>' +
                              '<tr><td>项目开始的时间：</td><td>'+data.data2.ps_starttime+'</td></tr>' +
                              '<tr><td>项目结束的时间：</td><td>'+data.data2.ps_endtime+'</td></tr>' +
                              '<tr><td>项目已筹资金额：</td><td>'+data.data2.ps_getmoney+'</td></tr>' +
                              '<tr><td>用户账号：</td><td>'+data.data2.login.lusername+'</td></tr>' +
                              '<tr><td>用户余额：</td><td>'+data.data2.login.lmoney+'</td></tr>' +
                              '<tr><td>用户身份证号：</td><td>'+data.data2.login.lidcard+'</td></tr>' +
                              '<tr><td>用户地址：</td><td>'+data.data2.login.laddress+'</td></tr>' +
                              '<tr><td>用户性别：</td><td>'+tysex+'</td></tr>' +
                              '<tr><td>公益类型名字：</td><td>'+data.data2.projectsee.pst_name+'</td></tr>' +
                              '<tr><td>公益类型描述：</td><td>'+data.data2.projectsee.pst_desc+'</td></tr>' +
                              '<tr><td>公益类型创建时间：</td><td>'+data.data2.projectsee.pst_stardate+'</td></tr>' +
                              '<tr><td>公益类型状态：</td><td>'+typddd+'</td></tr>' +
                              '</table>', {
                              time: 20000, //20s后自动关闭
                              btn: ['明白了', '知道了', '哦']
                          });
                      }else{
                          layui.alert("失败","rrwwweww");
                      }
                  }

              })
          }
//          function getById2(data) {
//              alert(data.ps_id);
//          }

      </script>
</body>
</html>
