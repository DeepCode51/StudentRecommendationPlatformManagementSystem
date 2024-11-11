<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


 <section id="slider" class="carousel slide" data-ride="carousel">
        <!-- Ð¡Ô²µã-->
        <ol class="carousel-indicators">
            <li data-target="#slider" data-slide-to="0" class="active"></li>
            <li data-target="#slider" data-slide-to="1"></li>
            <li data-target="#slider" data-slide-to="2"></li>
            <li data-target="#slider" data-slide-to="3"></li>
			<li data-target="#slider" data-slide-to="4"></li>
        </ol>

        <!-- Í¼Æ¬ÂÖ²¥ -->
        <div class="carousel-inner" role="listbox">
		<%
				int bhti=0;		
				int xxbbt=0;				
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='±ä»ÃÍ¼'  order by id desc ")){
	bhti++;
	xxbbt++;
     %>
	 
            <div class="item <%if(bhti==1){out.print("active");}%>">
                <img onClick="javascript:location.href='gg_detail.jsp?id=<%=map.get("id")%>';" style="cursor:pointer" src="<%=map.get("shouyetupian")%>" alt="">
            </div>
			<%
	  }
	  %>
           
        </div>

        <!-- ×óÓÒ°´Å¥¿ØÖÆ -->
        <a class="left carousel-control" href="#slider" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#slider" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </section>