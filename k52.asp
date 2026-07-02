<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	background-color: #F6C8CB;
}
.style3 {
	font-size: 36px;
	color: #CC3366;
}
-->
</style>
</head>

<body>
<form name="form1" method="post" action="">
  <div align="left">
    <p><img src="image/k64.jpg" width="100" height="121"><span class="style3">简易聊天室
</span></p>
    <p>请发言：
      <input name="t1" type="text" id="t1" size="50">
表情：
<select name="s1" id="s1">
  <option value="0">无</option>
  <option value="1" selected>强</option>
  <option value="2">拜拜</option>
  <option value="3">汗</option>
  <option value="4">怒</option>
</select> 
<input name="b1" type="submit" id="b1" value="发送"> 
    </p>
  </div>
</form>
<%
if request.form.count<>0 then	
	talk_new=request("t1")		
	pic=request("s1")			
	pic_htm=""
	if pic<>"0" then	
		pic_htm="<img src=image/k64_"&pic&".gif>"	
	end if
		application("talk_all")=talk_new&pic_htm&_
    "<i>"&now&"</i><br>"&application("talk_all")
	response.write(application("talk_all"))		
end if 
%>

</body>
</html>
