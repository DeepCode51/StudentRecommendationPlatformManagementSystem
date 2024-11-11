<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>书籍</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有书籍列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  分类：<input name="fenlei" type="text" id="fenlei" class="form-control2"  />  书籍名称：<input name="shujimingcheng" type="text" id="shujimingcheng" class="form-control2"  />  作者：<input name="zuozhe" type="text" id="zuozhe" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="导出EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='shuji_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc">  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">序号</td>
    <td bgcolor='#cccccc'>编号</td>    <td bgcolor='#cccccc'>分类</td>    <td bgcolor='#cccccc'>书籍名称</td>    <td bgcolor='#cccccc'>作者</td>    <td bgcolor='#cccccc' width='90' align='center'>封面</td>    <td bgcolor='#cccccc'>出版社</td>        
	<td width="90" align="center" bgcolor="#cccccc">评论管理</td>
    <td width="138" align="center" bgcolor="cccccc">添加时间</td>
    
    <td width="60" align="center" bgcolor="cccccc">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"shuji"); 
    String url = "shuji_list.jsp?1=1"; 
    String sql =  "select * from shuji where 1=1";
	if(request.getParameter("fenlei")=="" ||request.getParameter("fenlei")==null ){}else{sql=sql+" and fenlei like '%"+request.getParameter("fenlei")+"%'";}if(request.getParameter("shujimingcheng")=="" ||request.getParameter("shujimingcheng")==null ){}else{sql=sql+" and shujimingcheng like '%"+request.getParameter("shujimingcheng")+"%'";}if(request.getParameter("zuozhe")=="" ||request.getParameter("zuozhe")==null ){}else{sql=sql+" and zuozhe like '%"+request.getParameter("zuozhe")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("fenlei") %></td>    <td><%=map.get("shujimingcheng") %></td>    <td><%=map.get("zuozhe") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("chubanshe") %></td>        
	<td width="90" align="center"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=shuji">评论管理</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><!--lianjie1--> <a class="btn btn-info btn-small" href="shujidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

