<div class="main-body-left">
      <div class="floatingnav" id="floatingnav">
         <div class="floatBorder">
	     <ul class="main-body-left-nav">
         <%
		 typeB_id = request.QueryString("typeB_id")
		 set rs=conn.execute("select * from design_type order by order_id asc,id desc")
		 do while not rs.eof
		    typeCSS = ""
		    if cstr(typeB_id) = cstr(rs("id")) then typeCSS = " class=on"
          %><li class="main-mini-nav"><a href="design.asp?typeB_id=<%=rs("id")%>" <%=typeCSS%>><%=rs("title")%></a></li><%
		  rs.movenext
		  loop
		  set rs=nothing	
          %>
          <div class="clear">&nbsp;</div>
          </ul>
          <div class="clear">&nbsp;</div>
         </div>
         <!--#include file="public_right_content.asp"-->
      </div>
      <div class="floatingnav" id="floatingnav_box">&nbsp;</div>
      <div class="clear">&nbsp;</div>
</div>