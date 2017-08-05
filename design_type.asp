<table width="100%" border="0" cellpadding="5" class="main-body-left-nav">
<%
typeB_id = request.QueryString("typeB_id")
set rs=conn.execute("select * from design_type order by order_id asc,id desc")
    do while not rs.eof
	
	typeCSS = ""
	if cstr(typeB_id) = cstr(rs("id")) then typeCSS = " class=on"
%>
<tr><td><div class="main-mini-nav"><a href="design.asp?typeB_id=<%=rs("id")%>" <%=typeCSS%>><%=rs("title")%></a></div></td></tr>
<%
    rs.movenext
    loop
set rs=nothing	
%>
</table>
