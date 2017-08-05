<!--#include file="top.asp"-->
<!--#include file="header.asp"-->
<body>
<div id="body_main">
<!--#include file="bodyTop.asp"-->

<!--#include file="left.asp"-->

<div class="body-right">
    <div class="main_body_width main_body_top2">
    <div class="blog-list">
    <%
    set myrs = New data
	    myrs.where "ok",1
		myrs.where "small_pic<>''",""
	    myrs.orderBy "order_id","desc"
		myrs.orderBy "id","desc"
        myrs.open "blog",10,true
		if not myrs.eof then
    %>
    <div class="blog-images-list">
       <%
	     do while not myrs.eof
		 if myrs.rs("big_pic")<>"" then
	   %><li><a href="blog_view.asp?id=<%=myrs.rs("id")%>" target="_blank"><img alt="<%=myrs.rs("title")%>" title="<%=myrs.rs("title")%>" class="over-img" src="<%=myrs.rs("small_pic")%>" src2="<%=myrs.rs("big_pic")%>" width="210" height="210"></a></li><%else%>
	   <%if myrs.rs("toUrl")<>"" then%><li><a href="<%=myrs.rs("toUrl")%>" target="_blank"><img src="<%=myrs.rs("small_pic")%>" width="210" height="210"></a></li><%else%><li><img src="<%=myrs.rs("small_pic")%>" width="210" height="210"></li><%end if%>
       <%
		end if
		myrs.nexts:loop:myrs.close
	   %>
       <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <%
		end if
    set myrs=nothing
	%>
    
    
    

    <%
    dim page,maxpage,iCount
    set myrs = New data
	    myrs.orderBy "id","desc"
        myrs.open "blog",10,true
		if not myrs.eof then
		do while not myrs.eof
    %>
    
      <div class="blog-item">
        <div class="news_title">
            <a href="blog_view.asp?id=<%=myrs.rs("id")%>" class="title"><%=myrs.rs("title")%></a>
        <span class="hot"> / <%=myrs.rs("hits")%>℃</span>
            <div class="clear"></div>
            <div class="time"><%=myrs.rs("add_data")%></div>
        </div>
           <div class="clear"></div>
        <div class="blog-note"><%=myrs.rs("note")%></div>
        <div class="blog-more"><a href="blog_view.asp?id=<%=myrs.rs("id")%>">&gt; More &lt;</a></div>
        <br><br><br>
      </div>
    
    <%
      myrs.nexts:loop:myrs.close
    %>
    
    <div class="clear"></div>
    <table width="100%"  border="0" cellpadding="10">
      <tr><td><!--#include file="public_paging.asp"--></td>
        </tr>
    </table>
    <% else %>
    暂未找到相应数据...
    <%end if%>
    
    <div class="clear"></div>
    <br><br><!--#include file="footer.asp"-->

    </div>
    </div>
</div>

</div>

</body>
</html>
