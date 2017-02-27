<% 
Username = Request.Form("user")	
Password = Request.Form("password")

'response.Write(username)
'response.End()

%>

<%

Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB; Database=db_demo; Data Source=192.168.11.3\Instance1;uid=sa; pwd=Inficare@123"

set rs = server.CreateObject ("ADODB.Recordset")
		
sql="  spa_demo @flag= 'v', @UserName = '"&Username&"',@Password='"&Password& "'"


rs.open sql,conn

if rs.bof and rs.eof then

response.write("Invalid Username and Password! Please Login Again.")
'response.Redirect("default.asp")

else

Session("uname")=rs("username")
'Response.Write(Session("uname"))
'Response.End()
'Response.Write(rs("emp_name"))
'Session("uname")=rs("emp_name);
Response.Redirect("form.asp")
 end if




%>