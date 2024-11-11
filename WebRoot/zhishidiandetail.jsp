<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>知识点</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"zhishidian");
	
	if(request.getParameter("dztp")!=null)
	{
		String sqldz="";
		if(request.getParameter("dztp").equals("d"))
		{
			sqldz="update zhishidian set dianzan_d=dianzan_d+1 where id="+id;
		}
		if(request.getParameter("dztp").equals("c"))
		{
			sqldz="update zhishidian set dianzan_c=dianzan_c+1 where id="+id;
		}
		 new CommDAO().commOper(sqldz); 
	}
     %>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>知识点</h3>
            </div>
          
		  
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height='50px;'>编号：</td><td width='39%' height='50px;'><%=mqt.get("bianhao")%></td>		 <td width='11%' height='50px;'>标题：</td><td width='39%' height='50px;'><%=mqt.get("biaoti")%></td>		 </tr><tr><td width='11%' height='50px;'>分类：</td><td width='39%' height='50px;'><%=mqt.get("fenlei")%></td>		 <td width='11%' height='50px;'>内容：</td><td width='39%' height='50px;'><%=mqt.get("neirong")%></td>		 </tr><tr><td colspan=4 align=center height='50px;'>点赞数:<a href="zhishidiandetail.jsp?id=<%=id%>&dztp=d"><img src="qtimages/ding.gif" width="40" height="40"> <%HashMap mdz = new CommDAO().getmap(id,"zhishidian");out.print(mdz.get("dianzan_d"));%></a> <a href="zhishidiandetail.jsp?id=<%=id%>&dztp=c"><img src="qtimages/cai.gif" width="40" height="40"><%out.print(mdz.get("dianzan_c"));%></a> </td></tr><tr>							 
                                <td colspan="4"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
                                    <td width="471" bgcolor='#CCFFFF'>评价内容</td>
                                    <td width="88" bgcolor='#CCFFFF'>评分</td>
                                    <td width="88" bgcolor='#CCFFFF'>评论人</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">评论时间</td>
                                  </tr>
                                  <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='zhishidian' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=4 align=center height='50px;'><input type=button name=Submit5 value=返回 class='hsgqiehuanshitu' onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 class='hsgqiehuanshitu' onClick="javascript:window.print()"  /> <!--jixaaxnnxiu--><input type=button name=Submit53 value=评论 class='hsgqiehuanshitu' onClick="javascript:hsgpinglun('zhishidian','<%=id%>')"/><input type=button name=Submit52 value=收藏 class='hsgqiehuanshitu' onClick="javascript:location.href='jrsc.jsp?id=<%=id%>&biao=zhishidian&ziduan=biaoti';"  /></td></tr>
    
  </table>	
						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>

</body> 
</html>


