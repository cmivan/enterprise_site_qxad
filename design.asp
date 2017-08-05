<!--#include file="top.asp"-->
<%
  dim this_title,this_note,this_typeB_id,this_sql
  this_typeB_id = request.QueryString("typeB_id")
  if isnumeric(this_typeB_id)=false or this_typeB_id="" then
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

  
  page_title = "广州4A广告设计|东莞广告设计|相关案例" & this_note & " - " & site_cname
  page_keywords = site_keywords
  page_description = site_description & "，" & this_note
%>
<!--#include file="header.asp"-->
<script language="javascript" src="style/js/jquery.lazyload.min.js"></script>
<script language="javascript">
$(function(){
	var $imgObj = $("img.lazy");
	var $imgSrc = null;
	$imgObj.each(function(){
		$imgSrc = $(this).attr('src');
		$(this).attr('src','style/images/design-load.jpg')
		$(this).attr('data-original',$imgSrc);
	});
	//$imgObj.lazyload({effect : "fadeIn",container: $(".body-right")});
	$imgObj.lazyload({container: $(".body-right")});
});
</script>
<body>
<div class="body-left"><!--#include file="nav.asp"--></div>
<div class="body-right">

 <div class="main_body_width main_body_top2">
    <div class="main-body-left"><!--#include file="design_type.asp"--></div>
    <div class="main-body-right">
    
<%
'//作品&案例
dim caseNum
    caseNum=0
	
dim page,maxpage,iCount
set myrs=New getList
	myrs.cOpen "design",12,true
 if not myrs.cEof then
 do while not myrs.cEof
	 caseNum = caseNum+1
%>
<table border="0" cellpadding="10">
  <tr>
    <td class="content-right"><div class="design-title"><a href="design_view.asp?id=<%=myrs.rs("id")%>" target="_blank">案例名称：<%=myrs.rs("title")%></a></div></td>
  </tr><tr>
    <td valign="top">
      <a href="design_view.asp?id=<%=myrs.rs("id")%>" target="_blank" title="<%=myrs.rs("title")%>"><img class="lazy" alt="<%=myrs.rs("title")%>" src="<%=myrs.rs("small_pic")%>" width="559" border="0"></a>
      <br>
      <%=myrs.rs("note")%>
      <br>
      <a href="design_view.asp?id=<%=myrs.rs("id")%>" title="查看【<%=myrs.rs("title")%>】的详细内容" target="_blank">&gt; More &lt;</a><br>
    </td></tr>
  <tr>
  <td>
    <br>
    <!--#include file="2top.asp"-->
    &nbsp;&nbsp;
    <span class="yingwen"><a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=b96572d72b449fadeb809b5bcec61a2f2082ae95cdbba25e"><img src="http://wpa.qq.com/pa?p=2:1185609475:41" alt="在线咨询" border="0" align="top" title="在线咨询"></a></span>
    <br></td>
  </tr>
</table>
<br>
<%
  myrs.cNext:loop:myrs.cClose
%>
<table width="100%"  border="0" cellpadding="10">
  <tr>
    <td align="left" class="paging_main"><!--#include file="public_paging.asp"--></td>
  </tr>
</table>
<% else %>
 <div class="content-none"><a href="design.asp">这里没有作品哦，去看看其他的吧！</a></div>
<%end if%>

    <div class="clear"></div>
    <!--#include file="footer.asp"-->

    </div>
 </div>
</div>
</body>
</html>
