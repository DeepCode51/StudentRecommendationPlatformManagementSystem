<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>系统用户管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='yhzhgl.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>管理员用户</cite></a></li>
<li ><a href='mod.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>修改密码</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>新闻数据管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='xinwentongzhi_add.jsp?lb=站内新闻' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>站内新闻添加</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=站内新闻' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>站内新闻查询</cite></a></li>
<li ><a href='xinwentongzhi_add.jsp?lb=校园趣事' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>校园趣事添加</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=校园趣事' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>校园趣事查询</cite></a></li>
<li ><a href='xinwentongzhi_add.jsp?lb=通知公告' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>通知公告添加</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=通知公告' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>通知公告查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>系统简介设置</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='dx.jsp?lb=系统简介' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>系统简介设置</cite></a></li>
<li ><a href='dx.jsp?lb=关于我们' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>关于我们设置</cite></a></li>
<li ><a href='dx.jsp?lb=联系方式' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>联系方式设置</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>用户注册管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='yonghuzhuce_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>用户注册管理</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>留言管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='liuyanban_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>留言管理</cite></a></li>

                </ul>
            </li>
			
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>变幻图管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='xinwentongzhi_add.jsp?lb=变幻图' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>变幻图添加</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=变幻图' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>变幻图查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>书籍管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='shuji_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>书籍添加</cite></a></li>
<li ><a href='shuji_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>书籍查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>知识点管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='zhishidian_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>知识点添加</cite></a></li>
<li ><a href='zhishidian_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>知识点查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>课程管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='kecheng_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>课程添加</cite></a></li>
<li ><a href='kecheng_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>课程查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>分类管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='fenlei_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>分类添加</cite></a></li>
<li ><a href='fenlei_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>分类查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>需求管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='xuqiuxinxi_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>需求查询</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>系统管理</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='databack.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>数据备份</cite></a></li>

                </ul>
            </li>






