<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	font-weight: bold;
	color: #FF0000;
}
-->
</style>
</head>

<body>
<%
application.lock
application("n1")=application("n1")+1	           '访问次数
application.unlock
%>	
<table width="400" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0066FF" bgcolor="#CCFFFF">
  <tr>
    <td width="200"><div align="center">本网页被访问次数</div></td>
    <td><div align="center"><span class="style1"><%=application("n1")%></span></div></td>
  </tr>
</table>
</body>
</html>
