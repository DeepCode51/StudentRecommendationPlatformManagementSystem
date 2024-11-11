<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>课程</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"kecheng",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"kecheng"); 

%>
  <form  action="kecheng_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改课程:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" style="border-collapse:collapse">  
          <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%= mmm.get("bianhao")%>' class="form-control" /></td></tr>     <tr><td>分类：</td><td><input name='fenlei' type='text' id='fenlei' value='<%= mmm.get("fenlei")%>' class="form-control"  style="width:600px;" readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select biaoqian from fenlei  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("biaoqian")%>','fenlei')" style="cursor:pointer"><%=map.get("biaoqian")%></a>；<%}%></td></tr>     <tr><td>课程名称：</td><td><input name='kechengmingcheng' type='text' id='kechengmingcheng' value='<%= mmm.get("kechengmingcheng")%>' class="form-control" /></td></tr>     <tr><td>封面：</td><td><input name='fengmian' type='text' id='fengmian' size='50' value='<%= mmm.get("fengmian")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('fengmian')"/></div></td></tr>     <tr><td>视频：</td><td><input name='shipin' type='text' id='shipin' size='50' value='<%= mmm.get("shipin")%>' class="form-control" /> <div style="margin-top:16px;">&nbsp;<input type='button' value='上传' onClick="up('shipin')"/></div></td></tr>     <tr><td>简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' class="form-control" style="width:600px;height:80px;" ><%=mmm.get("jianjie")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


