<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>课程</title>
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
                    <h3>课程</h3>
            </div>
          
		  <link rel="stylesheet" href="images/hsgcommon/divqt.css" type="text/css">
<form name="form1" id="form1" method="post" action="" style="width:100%">
   搜索:  分类：<input name="fenlei" type="text" id="fenlei" class="form-control2" />  课程名称：<input name="kechengmingcheng" type="text" id="kechengmingcheng" class="form-control2" />
     <input type="submit" name="Submit" value="查找" class='hsgqiehuanshitu' /> <input type="button" name="Submit5" value="切换视图"  class='hsgqiehuanshitu' onClick="javascript:location.href='kechenglist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	


  	 new CommDAO().delete(request,"kecheng"); 
    String url = "kechenglisttp.jsp?1=1"; 
    String sql =  "select * from kecheng where 1=1";
	
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
                           <td height="316" align="center"><table  height="285" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="250" align="center"><a href="kechengdetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("fengmian")%>" width="210" height="250" border="0" style="border-radius: 18px;" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("kechengmingcheng")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
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
