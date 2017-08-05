<!--#include file="top.asp"-->
<%
  this_id = request.QueryString("id")
  this_title = get_one("design",this_id,"title")
  this_big_pic = get_one("design",this_id,"big_pic")
  this_note = get_one("design",this_id,"note")
  this_content = get_one("design",this_id,"content")
  this_content_pic = get_one("design",this_id,"content_pic")
  '------------
  this_typeB_id = get_one("design",this_id,"typeB_id")
  this_typeB_title = get_one("design_type",this_typeB_id,"title")
  '------------
  page_title = this_title & "|" & this_note & "|" & site_cname
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
    <div class="main-body-left"><!--#include file="design_type.asp"--></div>
    <div class="main-body-right">

    <table border="0" cellpadding="10">
      <tr>
        <td class="content-right"><div class="design-title">客户：<%=this_title%></div></td>
      </tr><tr>
        <td valign="top" class="design_hr"><p><%=this_content%></p></td></tr>
      <tr>
      <td>
        <span class="yingwen"><a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=b96572d72b449fadeb809b5bcec61a2f2082ae95cdbba25e"><img border="0" src="http://wpa.qq.com/pa?p=2:1185609475:41" alt="在线咨询" title="在线咨询"></a></span><br><br><br>
        <!--#include file="2top.asp"-->
        <br></td>
      </tr>
    </table>
	
	<!--#include file="footer.asp"-->
    </div>
    
    
 </div>
  
</div>

</body>
</html>
