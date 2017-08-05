<!--#include file="top.asp"-->
<!--#include file="header.asp"-->
<body>
<div class="body-left">
<!--#include file="nav.asp"-->
</div>
<div class="body-right">

    <div class="main_body_width main_body_top2">
    
    <div class="blog-list">
    
    <%
	  set rs = conn.execute("select * from blog where ok=0 and small_pic<>'' order by order_id desc,id desc")
	  if not rs.eof then
	%>
    <div class="blog-images-list">
       <%
	     do while not rs.eof
		 if rs("big_pic")<>"" then
	   %><li><a href="blog_view.asp?id=<%=rs("id")%>" target="_blank"><img alt="<%=rs("title")%>" title="<%=rs("title")%>" class="over-img" src="<%=rs("small_pic")%>" src2="<%=rs("big_pic")%>" width="210" height="210"></a></li><%else%>
	   <%if rs("toUrl")<>"" then%><li><a href="<%=rs("toUrl")%>" target="_blank"><img src="<%=rs("small_pic")%>" width="210" height="210"></a></li><%else%><li><img src="<%=rs("small_pic")%>" width="210" height="210"></li><%end if%>
       <%
	     end if
	     rs.movenext:loop
	   %>
       <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <%
	  end if
	  set rs=nothing
	%>
    
    
    

    <%
    '//新闻
    dim caseNum
        caseNum=0
        
    dim page,maxpage,iCount
    set myrs=New getList
        myrs.cOpen "blog",10,true
     if not myrs.cEof then
     do while not myrs.cEof
         caseNum = caseNum+1
    %>
    
      <div class="blog-item">
        <div class="news_title">
            <a href="blog_view.asp?id=<%=myrs.rs("id")%>" target="_blank" class="title"><%=myrs.rs("title")%></a>
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
      myrs.cNext:loop:myrs.cClose
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
</body>
</html>
