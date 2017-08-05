<!--#include file="top.asp"-->
<!--#include file="header.asp"-->
<!--newsSlider start -->
<body>
<div id="body_main">

<!--#include file="bodyTop.asp"-->

<!--#include file="banner.asp"-->

<br />
<div class="clear">&nbsp;</div>

<!--#include file="left.asp"-->

<div class="body-right">


<div class="main_body_width">
<%
articles.table = "index_brand"
ibrand = articles.pageView(0)
if ibrand<>false then
   ibrand_title = ibrand("title")
   if ibrand("toUrl")<>"" then
      ibrand_title = "<a href="""&ibrand("toUrl")&""" target=""_block"">"&ibrand_title&"</a>"
   end if
%>
<div class="index_brand">
  <div class="index_brand_ico">&nbsp;</div>
  <div class="index_brand_text">
  <p><%=ibrand_title%></p>
  <div><%=ibrand("content")%></div>
  <div class="en"><%=ibrand("note")%></div>
  </div>
  <div class="clear">&nbsp;</div>
</div>
<%end if%>

<div class="hr hr-solid">&nbsp;</div>

<div class="index-pic-box">
   <ul>
<%
set myrs = New data
	myrs.where "typeB_id",69
	myrs.orderBy "order_id","asc"
	myrs.orderBy "id","desc"
	myrs.open "index_pic",2,false
	if not myrs.eof then
%><%
	do while not myrs.eof
	   toUrl = myrs.rs("toUrl")
       if toUrl<>"" then
%><li class="s2"><a href="<%=toUrl%>" target="_blank" title="<%=myrs.rs("title")%>"><img src="<%=myrs.rs("small_pic")%>" alt="<%=myrs.rs("title")%>" /></a><div><a href="<%=toUrl%>" target="_blank"><%=myrs.rs("title")%></a></div></li><%
       end if
    myrs.nexts:loop
    end if
	myrs.close
set myrs = nothing
%>

<%
set myrs = New data
	myrs.where "typeB_id",70
	myrs.orderBy "order_id","asc"
	myrs.orderBy "id","desc"
	myrs.open "index_pic",3,false
	if not myrs.eof then
%><%
	do while not myrs.eof
	   toUrl = myrs.rs("toUrl")
       if toUrl<>"" then
%><li><a href="<%=toUrl%>" target="_blank" title="<%=myrs.rs("title")%>"><img src="<%=myrs.rs("small_pic")%>" alt="<%=myrs.rs("title")%>" /></a><div><a href="<%=toUrl%>" target="_blank"><%=myrs.rs("title")%></a></div></li><%
       end if
    myrs.nexts:loop
    end if
	myrs.close
set myrs = nothing
%>

   </ul>
</div>

<div class="clear">&nbsp;</div>

<div class="index-design">
<%
set rs=conn.execute("select * from design_type order by order_id asc,id desc")
    do while not rs.eof
%>
  <div class="design-item"><a href="design.asp?typeB_id=<%=rs("id")%>" id="design-type-<%=rs("id")%>"><img src="style/images/index/type/<%=rs("id")%>.jpg" alt="<%=rs("title")%>" width="195" height="189" border="0" class="over-img" title="<%=rs("title")%>" src2="style/images/index/type-hover/<%=rs("id")%>.jpg"></a></div>
<%
    rs.movenext
	loop
set rs=nothing
%>

<div class="design-item"><a href="about.asp?id=9" id="design-type-yr"><img src="style/images/index/type/fly-recruit.jpg" alt="齐翔广告设计公司动态,要人!【广州齐翔广告】" width="195" height="189" border="0" class="over-img" title="齐翔动态,要人!【广州齐翔广告】" src2="style/images/index/type-hover/fly-recruit.jpg"></a></div>

<br><br />
<div class="clear"></div><br />
<div class="nav-tel" title="这里显示的是一些齐翔广告设计公司的设计案例" style="text-align:left; margin-bottom:7px;clear: left;">&nbsp;<strong>案例展示</strong> / <span>品牌设计案例 / 品牌策划案例 / 广告设计案例 </span></div>
<div class="clear"></div>

<%set rs=conn.execute("select top 18 * from design order by hits desc,order_id asc,id desc")%>
<div id="index-box">
<%if not rs.eof then%>
        <ul>
		<%
		  dim ib
		  ib = 0
          do while not rs.eof
            if not rs.eof then
			  ib = ib+1
			  title = rs("title")
			  titleA = rs("title")
			  note = rs("note")
			  noteA = note
			  cssLi = ""
			  if ib mod 2 =0 then cssLi = " class=""r"""
        %><li <%=cssLi%>><a href="design_view.asp?id=<%=rs("id")%>" title="<%=title%>、<%=note%>" target="_blank"><p>&nbsp;</p><strong><%=titleA%></strong>&nbsp;<span>/</span>&nbsp;<%=noteA%></a></li><%
            rs.movenext
            end if
          loop
        %>
        </ul>
        <%end if%>
</div>
<%set rs=nothing%>

<div class="clear"></div>
</div>
</div>

<div class="clear"></div>

<div class="index-pic-box">
<ul>
<%
set myrs = New data
	myrs.where "typeB_id",69
	myrs.orderBy "order_id","asc"
	myrs.orderBy "id","desc"
	myrs.open "index_pic",2,false
	if not myrs.eof then
%><%
	do while not myrs.eof
	   toUrl = myrs.rs("toUrl")
       if toUrl<>"" then
%><li class="s2"><a href="<%=toUrl%>" target="_blank" title="<%=myrs.rs("title")%>"><img src="<%=myrs.rs("small_pic")%>" alt="<%=myrs.rs("title")%>" /></a><div><a href="<%=toUrl%>" target="_blank"><%=myrs.rs("title")%></a></div></li><%
       end if
    myrs.nexts:loop
    end if
	myrs.close
set myrs = nothing
%>

<%
set myrs = New data
	myrs.where "typeB_id",70
	myrs.orderBy "order_id","asc"
	myrs.orderBy "id","desc"
	myrs.open "index_pic",3,false
	if not myrs.eof then
%><%
	do while not myrs.eof
	   toUrl = myrs.rs("toUrl")
       if toUrl<>"" then
%><li><a href="<%=toUrl%>" target="_blank" title="<%=myrs.rs("title")%>"><img src="<%=myrs.rs("small_pic")%>" alt="<%=myrs.rs("title")%>" /></a><div><a href="<%=toUrl%>" target="_blank"><%=myrs.rs("title")%></a></div></li><%
       end if
    myrs.nexts:loop
    end if
	myrs.close
set myrs = nothing
%>

   </ul>
</div>
<div class="clear">&nbsp;</div>

<!--#include file="footer.asp"-->


</div>
</div>

<link rel="stylesheet" type="text/css" href="style/css/slides.css">
<script type='text/javascript' src="style/js/slides.min.jquery.js"></script>
<script type="text/javascript">
$(function(){
	if(jQuery().slides){
		//首页banner
		$("#slider").slides({preload: true,effect: 'fade',fadeSpeed: 250,play: 3500,
			crossfade: true,generatePagination: false,autoHeight: true
		});
		$("#slider").hover( function() {
			$('.slides-nav').fadeIn(200);
		}, function () {
			$('.slides-nav').fadeOut(200);
		});
	}
	//5图切换
	$('.index-pic-box li').hover(
		function(){ $(this).attr('class','hover'); },
		function(){ $(this).attr('class',''); }
	);
});
</script>
<script type='text/javascript' src="style/js/defaults.js"></script>

</body>
</html>