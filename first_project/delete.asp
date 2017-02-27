<% 'msg=request.QueryString("msg")%>

<%
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
getconn =  "Provider=SQLOLEDB; Database=db_demo; Data Source=192.168.11.3\Instance1;uid=sa; pwd=Inficare@123"
conn.open getconn

user_id=request.QueryString("id")

'if e_id<>"" then
'response.Write("empty data")
'else
'Response.Redirect("conform.asp")
sql="spa_demo @flag ='d', @id='"&user_id&"'"
'response.Write(sql)
'response.End()
'"delete from employee where emp_id="&e_id&""
'response.Write(sqlQuery)
'response.End()
conn.execute(sql)
response.Redirect("view.asp")

%>