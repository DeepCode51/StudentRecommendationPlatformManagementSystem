<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!--顶部通栏-->
    <header class="wjs_topBar">
        <div class="container">
            <div class="row">
                    <div class="col-md-3 hidden-xs topBar-brand">
                        <img src="qtimages/code.jpg" class="logo">
                        <span class="name">学生学习个性化推荐平台</span>
                    </div>
              
                <div class="col-md-3 col-xs-6" style="margin-left:500px;"   >
				 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
					   					 <button class="btn btn-primary" data-toggle="modal" data-target="#myLoginModal">登录</button> <a href="userreg.jsp" class="btn btn-danger">注册</a>
										   <%}else{ %>
										    <%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp; <a href="logout.jsp" onclick="return confirm('确定要退出？')" class="btn btn-primary">退出</a>&nbsp; <a href="main.jsp" class="btn btn-danger">后台</a>
										    <%} %>
				
		
                </div>
            </div>
        </div>
    </header>

    <!--导航栏-->
    <nav class="navbar wjs_nav" data-spy="affix" data-offset-top="200">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
				 <ul class='nav navbar-nav ml'>
	<li class=''><a href='index.jsp'>首页</a></li>
		 

		 <li class='show'><a  href='shujilist.jsp' >书籍</a>
	
</li><li class='show'><a href='zhishidianlist.jsp'>知识点</a>
	
</li><li class='show'><a  href='kechenglisttp.jsp'>课程</a>
	
</li><li class='show'><a >新闻信息</a>
	<div class='pa'><a href='news.jsp?lb=站内新闻'>站内新闻</a> <a href='news.jsp?lb=校园趣事'>校园趣事</a> <a href='news.jsp?lb=通知公告'>通知公告</a> </div>
</li><li class='show'><a >系统概要</a>
	<div class='pa'><a href='dx_detail.jsp?lb=系统简介'>系统简介</a> <a href='dx_detail.jsp?lb=关于我们'>关于我们</a> <a href='dx_detail.jsp?lb=联系方式'>联系方式</a> </div>
</li><li class='show'><a >在线留言</a>
	<div class='pa'><a href='lyb.jsp'>在线留言</a> <a href='lyblist.jsp'>查看留言</a> </div>
</li><!--yoxulixuyaxn-->

</ul>
				 
				
            </div>
        </div>
    </nav>
	
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
 </script>
