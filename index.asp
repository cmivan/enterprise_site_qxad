<!--#include file="top.asp"-->
<!--#include file="header.asp"-->
<!--newsSlider start -->
<script src="style/js/loopedslider/loopedslider.min.js"></script>
<link rel="stylesheet" href="style/js/loopedslider/case.css" type="text/css" />

<body>
<div class="body-left">
<!--#include file="nav.asp"-->
</div>
<div class="body-right">
<div class="main_body_width">
<div><img alt="齐翔!十四年专业的超强底气：不满意,定金全额退款..." title="齐翔!十四年专业的超强底气：不满意,定金全额退款..." src="style/images/index/index-top.jpg" /></div>

<div>
    <DIV id="newsSlider2">
        <DIV class=container>
        <UL class=slides>
        <LI><IMG width="100%" src="up/fck/image/index_banner/1.jpg"><DL><DT></DT></DL></LI>
        <LI><IMG width="100%" src="up/fck/image/index_banner/2.jpg"><DL><DT></DT></DL></LI>
        </UL></DIV>
        <UL class=pagination>
        <LI><A href="javascript:void(0);">1</A></LI>
        <LI><A href="javascript:void(0);">2</A></LI>
        </UL>
    </DIV>
</div>

<div class="clear"></div>
<div class="index-design">
<%
set rs=conn.execute("select * from design_type order by order_id asc,id desc")
    do while not rs.eof
%>
<div class="design-item"><a href="design.asp?typeB_id=<%=rs("id")%>" id="design-type-<%=rs("id")%>"><img alt="<%=rs("title")%>" title="<%=rs("title")%>" class="over-img" src="style/images/index/type/<%=rs("id")%>.jpg" src2="style/images/index/type-hover/<%=rs("id")%>.jpg" width="210" border="0"></a></div>
<%
    rs.movenext
	loop
set rs=nothing
%>

      
<div class="design-item"><a href="about.asp?id=9" id="design-type-yr"><img alt="齐翔动态,要人!【广州齐翔广告】" title="齐翔动态,要人!【广州齐翔广告】" class="over-img" src="style/images/index/type/fly-recruit.jpg" src2="style/images/index/type-hover/fly-recruit.jpg" width="210" border="0"></a></div>

<div class="clear"></div><br>

<div>

<div id="index-box-3">
  <div id="index-box">
   <div id="index-box-content">
      <div class="index-box-content">
      <a href="hezuo.asp"><img src="style/images/index/kaishi.jpg" height="150" border="0"></a>
      </div>
  </div>
 </div>
</div>

<div id="index-box-3">
  <div id="index-box">
   <div id="index-box-content">
         <div class="index-box-content">
         <a href="about.asp">14年来，齐翔已为众多品牌提供了<br>
        品牌传播策略与整体形象塑造的服务，为<br>
        其打造出脍炙人口的形象，并通过战略…</a><br><br>
        只要您拨通这个电话：<span class="hei">020-38868608</span> 
         </div>
  </div>
 </div>
</div> 

<div id="index-box-3" style="border:0;margin:0;padding:0;">
  <div id="index-box">
   <div id="index-box-content">
   <table width="100%"  border="0" cellpadding="1" cellspacing="1">
      <%
      set rs=conn.execute("select top 6 * from blog order by order_id asc,id desc")
          do while not rs.eof
          title = rs("title")
          titleA = cutstr(rs("title"),28)
      %>
      <tr><td class="huiliushi">&gt;</td>
      <td align="left">
      <a title="标题：<%=title%>&#10;时间：<%=rs("add_data")%>&#10;浏览：<%=rs("hits")%>" href="blog_view.asp?id=<%=rs("id")%>">
      <%=titleA%>&nbsp;<span><%=dateYMD(rs("add_data"))%></span></a></td>
      </tr>
      <%
          rs.movenext
          loop
      set rs=nothing
      %>
      </table>
  </div>
 </div>
</div>

</div>
  
<div class="clear"></div><br>
      

    
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr><td width="585">
    
<DIV id=newsSlider>
    <DIV class=container><UL class=slides>
	<%
	dim bannerNum
    set rs=conn.execute("select * from banner order by order_id asc,id desc")
        do while not rs.eof
		bannerNum = bannerNum + 1
    %><LI><a id="banner-<%=rs("id")%>" href="<%=rs("toUrl")%>" target="_blank"><IMG alt="<%=rs("title")%>" title="<%=rs("title")%>" width="100%" src="<%=rs("small_pic")%>"></a><DL><DT></DT></DL></LI>
    <%
        rs.movenext
        loop
    set rs=nothing
    %>
    </UL></DIV>

    <UL class=pagination>
    <%for i=1 to bannerNum%><LI><A href="javascript:void(0);"><%=i%></A></LI><%next%>
    </UL>
</DIV>

    </td><td style="padding-left:0px;"><img alt="广州广告设计公司,广州品牌设计公司,Flyidea Ad,助力品牌价值可持续生长!" title="Flyidea Ad,助力品牌价值可持续生长!" src="style/images/index/flyidea.jpg"></td></tr>
  </table>
<div class="clear"></div><br>

<div>
<%
'function dhtm(html)
'on error resume next
'  set Re = new RegExp    
'	  re.IgnoreCase =True     
'	  re.Global = True     
'	  re.Pattern = "(.*)，(.*)"
'	  Set matchs = re.Execute(html)
''	  response.Write(err.description)
'	      ma = matchs(0)
'	      if ma<>"" then
'	         s0 = matchs(0).SubMatches(0)
'		     s1 = matchs(0).SubMatches(1)
'			 dhtm =array(s0,s1)
'		  end if
'	  set matchs = nothing 
'  set Re = nothing
'end function
'-----------------------------------
'set rs=server.CreateObject("adodb.recordset")
'    sql = "select * from design order by hits desc,order_id asc,id desc"
'    rs.open sql,conn,3,3
'	do while not rs.eof
'	  id = rs("id")
'	  title = rs("title")
'	  dtt = dhtm(title)
'	  if dtt<>"" then
'		  dtt0=dtt(0)
'		  dtt1=dtt(1)
'		  response.Write(id&dtt0&dtt1&"<hr>")
'		  rs("title")= dtt0
'		  rs("note") = dtt1
'		  rs.update
'	  end if
'    rs.movenext
'    loop
'	rs.close
'set rs=nothing
%>



<%
set rs=conn.execute("select top 18 * from design order by hits desc,order_id asc,id desc")
	for a=1 to 3
%>
<div id="index-box-3" <%if a=3 then response.Write(" style=""border:0;margin:0; padding:0;""")%> >
  <div id="index-box">
   <div id="index-box-content">
   <%if not rs.eof then%>
   <table width="100%"  border="0" cellpadding="1" cellspacing="1">
	<%
	  for b=1 to 6
	    if not rs.eof then
	  title = rs("title")
	  titleA = cutstr(rs("title"),22)
	  noteA = cutStr(rs("note"),20)
    %>
    <tr><td width="12" class="huiliushi">&gt;</td><td align="left"><a title="标题：<%=title%>&#10;时间：<%=rs("add_data")%>&#10;浏览：<%=rs("hits")%>" href="design_view.asp?id=<%=rs("id")%>"><strong><%=titleA%></strong>- <%=noteA%></a></td></tr>
    <%
	    rs.movenext
	    end if
	  next
    %>
   </table>
   <%end if%>
   </div>
  </div>
</div>
<%
	next
set rs=nothing
%>


</div>
<div class="clear"></div><br>
</div></div>
<SCRIPT type=text/javascript>
$(function(){
	$('#newsSlider').loopedSlider({ autoStart: 3000 });
	$('#newsSlider2').loopedSlider({ autoStart: 3000 });
});
</SCRIPT>
<!--#include file="footer.asp"-->
</div>
</body>
</html>