<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>书籍</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="neirong"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="shuji_add.jsp?id=<%=id%>";
}

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

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){







ext.put("dianzan_d","0");
ext.put("dianzan_c","0");

new CommDAO().insert(request,response,"shuji",ext,true,false,""); 

}

%>

  <body >
 <form  action="shuji_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加书籍:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >
		<tr><td  width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%=Info.getID()%>' onblur='' class="form-control" /></td></tr>		<tr><td>分类：</td><td><input name='fenlei' type='text' id='fenlei' value='' onblur=''  class="form-control" style="width:600px;"  readonly='readonly' /><br><% for(HashMap map:new CommDAO().select("select biaoqian from fenlei  order by id desc")){%><a onClick="hsgxia2shxurxu('<%=map.get("biaoqian")%>','fenlei')" style="cursor:pointer"><%=map.get("biaoqian")%></a>；<%}%></td></tr>		<tr><td  width="200">书籍名称：</td><td><input name='shujimingcheng' type='text' id='shujimingcheng' value='' onblur='checkform()' class="form-control" />&nbsp;*<label id='clabelshujimingcheng' /></td></tr>		<tr><td  width="200">作者：</td><td><input name='zuozhe' type='text' id='zuozhe' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">封面：</td><td><input name='fengmian' type='text' id='fengmian' size='50' value='' onblur='' class="form-control" /><div style="margin-top:12px;">&nbsp;<input type='button' value='上传' onClick="up('fengmian')"  /></div></td></tr>		<tr><td  width="200">出版社：</td><td><input name='chubanshe' type='text' id='chubanshe' value='' onblur='' class="form-control" /></td></tr>		<tr><td  width="200">内容：</td><td><textarea name="neirong" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  class="btn btn-info btn-small" />
      <input type="reset" name="Submit2" value="重置" class="btn btn-info btn-small" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var shujimingchengobj = document.getElementById("shujimingcheng"); if(shujimingchengobj.value==""){document.getElementById("clabelshujimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入书籍名称</font>";return false;}else{document.getElementById("clabelshujimingcheng").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
<script src="images/hsgcommon/jq.js"></script>
<script src="images/hsgcommon/common.js"></script>
<script src="images/hsgcommon/bootbox.js"></script>
