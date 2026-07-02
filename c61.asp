<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户登录页面</title>
<style type="text/css">
<!--
.style2 {font-size: 14px}
body {
	background: url("Image/bg03.gif") #226cc5 repeat-x 50% top;
}
.Text01 {
	BORDER: 0px;PADDING-LEFT: 25px; BACKGROUND: url("Image/bg04.gif") no-repeat; WIDTH: 165px; LINE-HEIGHT: 20px; HEIGHT: 21px; 
}
.Text02 {
	BORDER: 0px; PADDING-LEFT: 25px; BACKGROUND: url("Image/bg05.gif") no-repeat; WIDTH: 165px; LINE-HEIGHT: 20px; HEIGHT: 21px;
}
.Button01{
	BORDER: 0px; BACKGROUND: url("Image/bg06.gif") no-repeat; WIDTH: 110px; HEIGHT: 25px; cursor:hand;cursor:pointer;
}
.Button02{
	BORDER: 0px; BACKGROUND: url("Image/bg07.gif") no-repeat; WIDTH: 110px; HEIGHT: 25px; cursor:hand;cursor:pointer;
}
.style3 {
	font-size: 16px;
	font-weight: bold;
	color: #FF0000;
}

-->
</style>
<link href="css/c61_style.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.4.1.min.js" language="javascript"></script>
<script src="js/c61_js.js" language="javascript"></script>
<script language="javascript">
	$(document).ready(function(){		
		f01();
	});
</script>
</head>

<body>
<div id="div1"></div>
<div id="div2">
<form name="form1" method="post" action="">
  <table width="570" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="100">&nbsp;</td>
    </tr>
    <tr>
      <td height="367" background="image/bg02.jpg"><table width="100%" height="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td height="120" colspan="2">&nbsp;</td>
          </tr>
        <tr>
          <td width="200" height="30" align="right"><span class="style2">用户名：</span></td>
          <td width="370" height="30"><input name="t1" type="text" class="Text01" id="t1"></td>
        </tr>
        <tr>
          <td width="200" height="30" align="right"><span class="style2">密 &nbsp;码：</span></td>
          <td width="370" height="30"><input name="t2" type="password" class="Text02" id="t2"></td>
        </tr>
        <tr align="center">
          <td height="50" colspan="2"><input name="b1" type="submit" class="Button01" id="b1" value=" ">
&nbsp;&nbsp;
<input name="Submit" type="reset" class="Button02" value=" "></td>
          </tr>
        <tr align="center">
          <td height="50" colspan="2">
		    <span class="style3">
		    <%
		  	if request.form.count<>0 then
				a1=request("t1")
				a2=request("t2")
				set conn=server.CreateObject("adodb.connection")
				conn.open("driver={microsoft access driver (*.mdb)};dbq="&server.MapPath("用户信息.mdb"))
				sql="select * from 用户表 where 用户名='"&a1&"' and 密码='"&a2&"'"
				set rs=conn.execute(sql)
				if rs.eof then
					response.write("用户名或密码错误")
				else
					response.write("<marquee>")
					response.write("欢迎来到我的网站！")
					response.write("</marquee>")					
				end if	
				conn.close()
			end if 
		  %>
</span></td>
          </tr>
        <tr>
          <td colspan="2">&nbsp;</td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</div>
</body>
</html>
