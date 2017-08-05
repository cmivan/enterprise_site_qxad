<!--#include file="top.asp"-->
<!--#include file="system/helpers/design_helper.asp"-->
<%
  dim this_title,this_note,this_typeB_id,this_sql
  this_typeB_id = request.QueryString("typeB_id")
  if text.isNum(this_typeB_id)=false then
     this_sql = "select top 5 * from design order by order_id desc,id desc"
  else
     this_sql = "select top 5 * from design where typeB_id=" & this_typeB_id & " order by order_id desc,id desc"
  end if
  set rs = conn.execute(this_sql)
      do while not rs.eof
	     if this_note="" then
		    this_note  = " - " & rs("note") 
		 else
		    this_note  = this_note & "、" & rs("note") 
		 end if
		 rs.movenext
	  loop
  set rs=nothing

  
  page_title = "广州广告设计|东莞广告设计|相关案例" & this_note & " - " & site_title
  page_keywords = site_keywords
  page_description = site_description & "，" & this_note
%>
<!--#include file="header.asp"-->
<script type="text/javascript" language="javascript" src="style/js/jquery.lazyload.js"></script>
<body>
<div id="body_main">
<!--#include file="bodyTop.asp"-->

<div class="body-left"><!--#include file="left.asp"--></div>
<div class="body-right">

<div class="main_body_width main_body_top2">

<div class="main-body-right">
<%
design_type_note = articles.viewKey("design_type",this_typeB_id,"content")
if design_type_note then response.Write("<div class='design_type_note'><div>"&design_type_note&"</div></div>")
%>
<ul id="case_list">
<%
'//作品&案例
set myrs = New data
    if text.isNum(this_typeB_id) then myrs.where "typeB_id",this_typeB_id
	myrs.where "ok",1
	myrs.where_NULL "typeB_id<>23 and typeB_id<>27 and (id in (2951,2902,2929,2921,2953,2918) or id>2918)"
	myrs.orderBy "order_id","asc"
	myrs.orderBy "id","desc"
	myrs.open "design",8,true
 if not myrs.eof then
 do while not myrs.eof
%>
<li>
<p class="design-title">
<a href="design_view.asp?id=<%=myrs.rs("id")%>" target="_blank"><%=myrs.rs("title")%></a>
<%'=myrs.rs("note")%>
</p>
<div class="clear">&nbsp;</div>
<br />
<%=myrs.rs("content_view")%>
<br />
<%=ImgLazyload(myrs.rs("content"))%>

<div class="clear">&nbsp;</div>
<br><br><br>
<div class="hr"></div>
<br><br><br>

<div class="clear">&nbsp;</div>
</li>



<%
  myrs.nexts:loop:myrs.close
%>
<%
'page
'maxPage
'allCount
dim page,pageCounts,allCounts,pageAdds
page       = myrs.page
pageCounts = myrs.pageCounts
allCounts  = myrs.allCounts
pageAdds = 2
%>
<table width="100%"  border="0" cellpadding="10">
  <tr>
    <td align="left"><!--#include file="public_paging.asp"--></td>
  </tr>
</table>
<% else %>
 <div class="content-none"><a href="design.asp">这里没有作品哦，去看看其他的吧！</a></div>
<%end if%>

</ul>




<div class="clear"></div>
<!--#include file="footer.asp"-->
    

</div>

<!--#include file="design_type.asp"-->

</div></div>
</div>

</body>
</html>
