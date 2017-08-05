<!--#include file="top.asp"-->
<%
'// 获取详细信息
  dim pageTitle,pageContent,pageView
	  if text.isNum(this_id)=false or this_id=0 then this_id = input.getnum("id")
	  this_title = "{title}"
	  this_big_pic = "{this_big_pic}"
	  this_note = "{note}"
	  this_content = "{content}"
	  this_content_pic = "{content_pic}"
	  '----------
	  this_typeB_title = "{type_title}"
	  this_type_note = "{type_note}"
  
  '// 读取详细信息
  this_table = "design"
  articles.table = this_table
  set pageView = articles.pageView( this_id )
  if pageView<>false then
	 this_id = pageView("id")
	 this_title = pageView("title")
	 this_note = pageView("note")
	 this_big_pic = pageView("big_pic")
	 this_content = pageView("content")
	 this_content_pic = pageView("content_pic")
	 this_typeB_id = pageView("typeB_id")
	 '// 获取分类信息
	 articles.table = this_table & "_type"
	 set typeView = articles.pageView( this_typeB_id )
	 if typeView<>false then
	    this_typeB_title = typeView("title")
	    this_type_note = typeView("content")
	 end if
  end if
  
  page_title = this_title & "|" & site_title
  page_keywords = site_keywords
  page_description = site_description & "," & text.strCut(this_note,100)
%>

<!--#include file="header.asp"-->

<body>
<div id="body_main">
<!--#include file="bodyTop.asp"-->
<!--#include file="left.asp"-->
<div class="body-right">
 <div class="main_body_width main_body_top2">
 
<div class="main-body-right">

<%
if this_type_note<>"" then
response.Write("<div class='design_type_note'><div>"&this_type_note&"</div></div>")
end if
%>

<div id="case_list">
<p class="design-title"><a><%=this_title%></a></p>

<div class="clear">&nbsp;</div>
<div class="design_hr">&nbsp;</div>
<div class="clear">&nbsp;</div>

<div class="design-view-content"><%=this_content%></div>

<div class="clear">&nbsp;</div>

<!--#include file="2top.asp"-->

<div class="clear">&nbsp;</div>
</div>

<div class="clear"></div>
<!--#include file="footer.asp"-->
</div>

<!--#include file="design_type.asp"-->
    
</div></div></div>
</body>
</html>
