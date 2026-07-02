<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>zhuce</title>
<style type="text/css">
<!--
body {
	background-image: url(picture/wangye/1a.jpg);
}
.style1 {
	font-family: "Comic Sans MS";
	font-size: 18px;
	color: #FFFFFF;
}
-->
</style></head>

<body>
<table width="960" height="500" border="1" align="center">
  <tr>
    <td bgcolor="#000000"><form name="form1" method="post" action="">
      <p align="center" class="style1">用户名 ：   
        <input name="yhm" type="text" id="yhm">
      </p>
      <p align="center" class="style1">密码 ：
        <input name="mm" type="text" id="mm">
      </p>
      <p align="center" class="style1">性别 ：
        <input type="radio" name="radiobutton" value="radiobutton">
男  
<input type="radio" name="radiobutton" value="radiobutton">
女</p>
      <p align="center" class="style1">爱好 ： 
        <select name="select">
          <option>篮球</option>
          <option>羽毛球</option>
          <option selected>书画</option>
          <option>歌唱</option>
        </select>
</p>
              <p align="center"> 
                <input type="submit" name="Submit" value="提交">
        </p>
<%
yhm=request("yhm")
mm=request("mm")
if yhm<>"" and mm<>"" then
  set conn=server.createobject("adodb.connection")
  conn.open("driver={microsoft access driver (*.mdb)};dbq="&server.mappath("用户信息.mdb"))
  conn.execute("insert into 用户表(登录名,密码)values('" &yhm& "','" &mm&"')")
  conn.close
  response.redirect "index.asp"        '(此处为大作业首页文件名)
end if
%>

    </form></td>
  </tr>
</table>
</body>
</html>
