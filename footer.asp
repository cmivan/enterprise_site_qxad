<div class="clear">&nbsp;</div>

<%if 1=2 then%>
<script>
(function() {
  var cx = '006235815217656105666:qnira2x-zk0';
  var gcse = document.createElement('script'); gcse.type = 'text/javascript';
  gcse.async = true;
  gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//www.google.com/cse/cse.js?cx=' + cx;
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(gcse, s);
})();
</script>
<gcse:search></gcse:search>
<%end if%>

<div class="footer">

<%
set myrs = New data
	myrs.orderBy "order_id","asc"
	myrs.orderBy "id","desc"
	myrs.open "link","*",false
	if not myrs.eof then
%>
<div class="index-box-content"><strong>齐翔广告</strong>
<%
    Bi = 0
	do while not myrs.eof
	   toUrl = myrs.rs("toUrl")
       if toUrl<>"" then
	   Bi = Bi + 1
%> | <a id="qx_link_<%=Bi%>" href="<%=myrs.rs("toUrl")%>" target="_blank"><%=myrs.rs("title")%></a><%
       end if
    myrs.nexts:loop
%>
</div>
<%
    end if
	myrs.close
set myrs = nothing
%>

<div class="clear"></div>

<script type="text/javascript">var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0aa9261c42527f4daa0c852941f51525' type='text/javascript'%3E%3C/script%3E"));</script>

<!-- Baidu Button BEGIN -->
<div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
<a class="bds_tsina"></a>
<a class="bds_qzone"></a>
<a class="bds_tqq"></a>
<a class="bds_tieba"></a>
<a class="bds_huaban"></a>
<a class="bds_diandian"></a>
<a class="bds_ty"></a>
<a class="bds_t163"></a>
<a class="bds_hi"></a>
<a class="bds_renren"></a>
<span class="bds_more"></span>
<a class="shareCount"></a>
</div>
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;mini=1&amp;uid=498228" ></script>
<script type="text/javascript" id="bdshell_js"></script>
<script type="text/javascript">
document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END -->
</div>

<div class="clear">&nbsp;</div>
<div class="hr">&nbsp;</div>

<div class="footer-baidu-search">
<table border="0" cellpadding="0" cellspacing="0"><tr height="60"><td>
<form name="f1" id="baidu-search-form" action="http://www.baidu.com/baidu" target="_blank" method="get">
<div class="baidu-search-txt">在这里输入关键词...</div>
<div class="baidu-search-btn"><a href="javascript:void(0);">百度找齐翔</a></div>
<div class="baidu-search-keyword"><input name="word" size="30" maxlength="50" class="baidu-keyword"></div>
<input name=tn type=hidden value="bds">
<input name=cl type=hidden value="3">
<input name=ct type=hidden value="2097152">
<input name=si type=hidden value="www.qxad.com">
<input name=s type="hidden" checked></form>
</td></tr></table>
</div>
<script language="javascript">
$(function(){
	var searchVal = '';
	var searchVal2 = '';
	$('.footer-baidu-search').hover(
		function(){
			$(this).find('form').attr('class','on');
			$(this).find('.baidu-keyword').focus();
			$(this).find('.baidu-search-txt').fadeOut(500);
			if(searchVal==''){
				searchVal = $(this).find('.baidu-search-txt').html();
			}else{
				$(this).find('.baidu-search-txt').html(searchVal);
			}
			if(searchVal2!=''){ $(this).find('.baidu-keyword').val(searchVal2); }
		},
		function(){
			var searchkey = $(this).find('.baidu-keyword').val();
			if(searchkey!=''){
				searchVal2 = searchkey;
				$(this).find('.baidu-search-txt').html(searchVal);
			}else{
				searchVal2 = '';
				$(this).find('form').attr('class','');
				$(this).find('.baidu-keyword').val('');
				$(this).find('.baidu-search-txt').html(searchVal).fadeIn(500);
			}
		}
	);
	$('.footer-baidu-search').find('.baidu-search-btn a').click(function(){
		var searchForm = $('.footer-baidu-search');
		var searchkey = searchForm.find('.baidu-keyword').val();
		if(searchkey==''||searchkey==undefined){
			searchVal2 = '';
			searchForm.find('.baidu-search-txt').html('<span style="color:#f00">请输入关键词!</span>').fadeIn(500);
		}else{
			$('#baidu-search-form').submit();
		}
	});
});
</script>


<div style="display:none">
<!--<script src="http://s15.cnzz.com/stat.php?id=4151833&web_id=4151833" language="JavaScript"></script>-->
</div>