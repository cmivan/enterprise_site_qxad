<!--#include file="top.asp"-->
<%
  this_id = 9
  this_title = get_one("other",this_id,"title")
  this_note = get_one("other",this_id,"note")
  this_content = get_one("other",this_id,"content")
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
    <div class="main-body-left">
      <table width="100%" border="0" cellpadding="5" class="main-body-left-nav">
        <%
  set rs=conn.execute("select * from about order by order_id asc,id desc")
      do while not rs.eof
  %>
        <tr>
          <td><div class="main-mini-nav"><a href="about.asp?id=<%=rs("id")%>"><%=rs("title")%></a></div></td>
        </tr>
        <%
      rs.movenext
      loop
  set rs=nothing	
  %>
      </table>
    </div>
    <div class="main-body-right">
      <table border="0" cellpadding="10">
        <tr>
          <td class="content-right"><div class="body_right"> <span class="bt">&nbsp;<%=this_title%></span><br>
            <%=this_content%> <span class="bt"><br>
              <br>
            </span> </div></td>
        </tr>
        <tr><td height="40"><!--#include file="2top.asp"--></td></tr>
      </table>
      
      <!--#include file="footer.asp"-->
    </div>
  </div>
</div>
</body>
</html>
