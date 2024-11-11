 <%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	 	  <form action="jspmxsxxgxhtjpthsg9214X1CB?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
    <div class="modal fade" id="myLoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">登录</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">用户名</span>
                        <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名">
                    </div>
                    <div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">密码</span>
                        <input type="password" class="form-control" id="pwd1" name="pwd1" placeholder="请输入密码">
                    </div>
					<div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">权限</span>
                       <select name='cx' id='cx' class="form-control">
                                  <option value='管理员'>管理员</option><option value='注册用户'>注册用户</option>
                                </select>
                    </div>
					<div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">验证码</span>
                        <input type="text" class="form-control" id="pagerandom" name="pagerandom" placeholder="验证码">
						<a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary">确定</button>
                </div>
            </div>
        </div>
    </div>
	</form>
 <script type="text/javascript">
 function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("请输入完整");
		return false;
	}
}
  </script>
<%}%>
