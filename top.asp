<!--#include file="system/core/initialize.asp"-->
<!--#include file="system/libraries/articles.asp"-->
<%
call AutoRedirect("www","qxad.com")
'response.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">")

'// 初始化网站配置
  site_title = SC("seo.title","note")
  site_keywords = SC("seo.keywords","note")
  site_description = SC("seo.description","note")
  
  page_title = site_title
  page_keywords = site_keywords
  page_description = site_description
%>