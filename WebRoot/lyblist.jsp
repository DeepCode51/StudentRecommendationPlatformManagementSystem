<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>在线留言</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>在线留言</h3>
            </div>
          
		  <% 
    String url = "lyblist.jsp?1=1"; 
    String sql =  "select * from liuyanban  order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,4,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
                         <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#67B41A" class="newsline">
                            <tr>
                              <td width="85" rowspan="4" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=map.get("xingbie") %>.gif border=0> </td>
                              <td height="20" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; 留言于:<%=map.get("addtime") %> &nbsp;</td>
                            </tr>
                            <tr>
                              <td height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=map.get("neirong") %></td>
                            </tr>
                            <tr>
                              <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;昵称：<%=map.get("cheng") %> &nbsp; &nbsp;电话：<%=map.get("dianhua") %>&nbsp;&nbsp;邮 箱:<%=map.get("youxiang") %> &nbsp; QQ:<%=map.get("QQ") %>&nbsp; &nbsp; </td>
                            </tr>
                            <tr>
                              <td align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;管理员回复：<%=map.get("huifuneirong") %></td>
                            </tr>
                          </table>
                          <%} %>
 <div class="fy">${page.info } </div>

						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>
</body>
</html>
