<%@ Language="VBscript" %>
<html>
<head>
<title>DB</title>
</head>

<body>
<%

'dim Id,FirstName,Lastname,Address,Gender,Hobbies,Education,Remarks
'user_id = Request.Form("ID")
user_id=request.QueryString("user_id")
Response.Write(user_id)
'Response.End() 

FirstName=Request.Form("FirstName")
LastName=Request.Form("LastName")
Address=Request.Form("Address")
Gender=Request.Form("Gender")
Hobbies=Request.Form("Hobbies")
Education=Request.Form("Education")
Remarks=Request.Form("Remarks") 


%> 
<%
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB; Database=db_demo; Data Source=192.168.11.3\Instance1;uid=sa; pwd=Inficare@123"

' if  conn.errors.count = 0 Then 
'Response.write("connected")
'else
'Response.write("erroes")
'end if


'sql="INSERT INTO users (Firstname,Lastname,Address,Gender,Hobbies,Education,Remarks) VALUES('"&Firstname&"','"&Lastname&"','"&Address&"','"&Gender&"','"&Hobbies&"','"&Education&"','"&Remarks&"') "
if user_id= "" then

sql="spa_demo @flag= 'i', @FirstName = '"&FirstName&"'"&_ 

",@LastName='"&LastName&"'"&_
",@Address='"&Address&"'"&_
",@Gender='"&Gender&"'"&_
",@Hobbies='"&Hobbies&"'"&_
",@Education='"&Education&"'"&_
",@Remarks='"&Remarks&"' "
'Response.Write(sql)
conn.execute(sql)
Response.Write(sql)

else
'response.Write("tada")
'response.End()
'response.Write(user_id)
'response.End()
sql="spa_demo @flag= 'u', @id='"&user_id&"'" &_
",@FirstName = '"&FirstName&"'"&_
",@LastName='"&LastName&"'"&_
",@Address='"&Address&"'"&_
",@Gender='"&Gender&"'"&_
",@Hobbies='"&Hobbies&"'"&_
",@Education='"&Education&"'"&_
",@Remarks='"&Remarks&"'"
Response.Write(sql)
'Response.End()
conn.execute(sql)

end if

on error resume next
'conn.Execute sql,recaffected
if err<>0 then
  Response.Write("No update permissions!")
else
  response.Redirect("view.asp")
end if
conn.close
	

%>
</body>
</html>