<!--#include file="top.asp"-->
<%
  this_id = 0
  this_title = get_one("blog",this_id,"title")
  this_note = get_one("blog",this_id,"note")
  this_content = get_one("blog",this_id,"content")
  '------------
  page_title = this_title & "|" & site_title
  page_keywords = site_keywords
  page_description = site_description & "，" & cutstr(this_note,100)
%>
<!--#include file="header.asp"-->

<body>
<div class="body-left">
<!--#include file="nav.asp"-->
</div>
<div class="body-right">

    <div class="main_body_width main_body_top2">
    
    <div class="blog-list">
      <div class="blog-item">
        <div class="news_title">
          <span class="title"><%=this_title%></span>
          <span class="hot"> / <%=get_one("blog",this_id,"hits")%><%=get_one("blog",this_id,"hit")%>℃</span>
          
          <div class="clear"></div>
          <span class="time"><%=get_one("blog",this_id,"add_data")%></span>
          </div>
           <div class="clear"></div>
        <div class="blog-note"><%=this_content%></div>
        <div class="blog-more">
        <!--#include file="2top.asp"-->
        </div>
        
        <br><br><!--#include file="footer.asp"-->
        
      </div>
    </div>
    
    </div>
</div>
</body>
</html>
