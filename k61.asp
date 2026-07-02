<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>无标题文档</title>
</head>

<body>
<% 
set conn=server.createobject("adodb.connection")
conn.open("driver={Microsoft Access Driver (*.mdb)};dbq="&server.mappath("用户信息.mdb"))
sql="select * from 学生表"
set rs=conn.execute(sql)
for i=0 to rs.fields.count-1
	response.write rs(i).name &": " & rs(i) & "<br>"
next
conn.close()
%>

</body>
</html>
