<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html  class="x-admin-sm">
<head>
	<title>后台登录</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="images/css/font.css">
    <link rel="stylesheet" href="images/css/login.css">
	  <link rel="stylesheet" href="images/css/xadmin.css">
    <script type="text/javascript" src="images/js/jquery.min.js"></script>
    <script src="images/lib/layui/layui.js" charset="utf-8"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 popheight = 39;
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('请输入完整');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">管理登录</div>
        <div id="darkbannerwrap"></div>
        
        <form name="form1" method="post" action="jspmxsxxgxhtjpthsg9214X1CB?ac=adminlogin&a=a" class="layui-form" >
            <input name="username" id="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="pwd" id="pwd" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
			 <select name="cx" id="cx" >
			
            <option value="管理员">管理员</option><option value="注册用户">注册用户</option>
            </select>
            <hr class="hr15">
			<table><tr>
			
			<td><input name="pagerandom" id="pagerandom" placeholder="验证码"  type="text" lay-verify="required" class="layui-input" style="width:150px;" ></td><td>&nbsp;&nbsp;<a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp"  class="code"   style="cursor:pointer;width:100px; "> </a></td>
			
			</tr></table>
			 
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit" onClick="return check();">
            <hr class="hr20" >
        </form>
    </div>

    <script>
        $(function  () {
            layui.use('form', function(){
              var form = layui.form;
              // layer.msg('玩命卖萌中', function(){
              //   //关闭后的操作
              //   });
              //监听提交
              form.on('submit(login)', function(data){
                // alert(888)
                document.form1.submit();
                return false;
              });
            });
        })
    </script>
    <!-- 底部结束 -->
    
</body>
</html>
