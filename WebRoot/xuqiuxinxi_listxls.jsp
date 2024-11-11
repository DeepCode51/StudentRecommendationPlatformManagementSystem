<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuqiuxinxi.xls");
%>
<html>
  <head>
    <title>需求信息</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>已有需求信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>用户名</td>    <td bgcolor='#cccccc'>姓名</td>    <td bgcolor='#cccccc'>需求</td>    <td bgcolor='#cccccc'>回复</td>    <td bgcolor='#cccccc' width='80' align='center'>是否审核</td><td bgcolor='#cccccc' width='120'>审核回复</td>
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    

  </tr>
  <% 

    String url = "xuqiuxinxi_list.jsp?1=1"; 
    String sql =  "select * from xuqiuxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("xuqiu") %></td>    <td><%=map.get("huifu") %></td>    <td align='center'><a class="btn btn-info btn-small" href="sh2.jsp?id=<%=map.get("id")%>&tablename=xuqiuxinxi"><%=map.get("issh")%></a></td><td><%=map.get("shhf")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

