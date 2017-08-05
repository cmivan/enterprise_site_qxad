<%
Dim query, a, x, temp
    action = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("SCRIPT_NAME")
    query = Split(Request.ServerVariables("QUERY_STRING"), "&")
   
For Each x In query
	a = Split(x, "=")
	If StrComp(a(0), "page", vbTextCompare) <> 0 Then
		temp = temp & a(0) & "=" & a(1) & "&"
	End If
Next
%>
<div class="paging_box">
<div class="paging">
<%if page<=1 then%>
<span>首页</span>
<span>上一页</span>
<%else%>   
<a href="?<%=temp%>page=1">首页</A>
<a href="?<%=temp%>page=<%=Page-1%>">上一页</A>
<%end if%>
	
<%if page>=maxpage then%>
<span>下一页</span>
<span>尾页</span>
<%else%>   
<a href="?<%=temp%>page=<%=Page+1%>">下一页</A>
<a href="?<%=temp%>page=<%=maxpage%>">尾页</A>    
<%end if%>
</div></div>