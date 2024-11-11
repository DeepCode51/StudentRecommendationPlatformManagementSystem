<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>书籍</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<%

%>

<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>书籍</h3>
            </div>
          
		  <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
 <form name="form1" id="form1" method="post" action="" style="width:100%">
   搜索:  分类：<input name="fenlei" type="text" id="fenlei" class="form-control2"  />  书籍名称：<input name="shujimingcheng" type="text" id="shujimingcheng" class="form-control2"  />  作者：<input name="zuozhe" type="text" id="zuozhe" class="form-control2"  />
   <input type="submit" name="Submit" value="查找" class='hsgqiehuanshitu' />   
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>分类</td>    <td bgcolor='#CCFFFF'>书籍名称</td>    <td bgcolor='#CCFFFF'>作者</td>    <td bgcolor='#CCFFFF' width='90' align='center'>封面</td>    <td bgcolor='#CCFFFF'>出版社</td>        
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"shuji"); 
    String url = "shujilist.jsp?2=2"; 
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
    <td><%=map.get("bianhao") %></td><td><%=map.get("fenlei") %></td><td><%=map.get("shujimingcheng") %></td><td><%=map.get("zuozhe") %></td><td width='90'><a class="btn btn-info btn-small" href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td><td><%=map.get("chubanshe") %></td>
    
    <td width="50" align="center"> <a class="btn btn-info btn-small" href="shujidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

  
${page.info }							
						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>

</body> 
</html>

<!--yoxudixtu-->
