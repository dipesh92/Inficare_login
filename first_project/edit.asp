

<%
	
Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
getconn =  "Provider=SQLOLEDB; Database=db_demo; Data Source=192.168.11.3\Instance1;uid=sa; pwd=Inficare@123"
conn.open getconn

set rs = server.CreateObject ("ADODB.Recordset")
user_id=request.QueryString("ID")
'emp=request.QueryString("Education")	
'response.Write(emp)
'response.End()
 
		
sql="select * from users where ID='"&user_id&"'"

'Response.Write(sql )
'Response.End()
rs.open sql,conn
'uname=rs("Firstname")
	'fname = rs ("FirstName")
''	hobis=rs("Hobbies")
''	hobis=rs("Education")
'Response.Write(fname )
'Response.End()


'while rs.state=0
'	set rs=rs.nextrecordset
'	wend

%>

<%if rs.eof =true then%>
  	<tr>
   		 <td colspan="2">No record Found</td>
  	</tr>
  <% end if
  i=1
  
  while not rs.eof
  %>
  
  
  <%
 
 '	uname=rs("Firstname")
'	Response.Write(uname)
'	Response.End()
 %>

 <form action="database.asp?user_id=<% response.Write(rs("id"))%>" method="post"> 
First Name : <br>
<input type="text" name="firstname" value="<% response.Write(rs("Firstname"))%>"><br>
Last Name : <br>
<input type ="text" name ="lastname" value="<% response.Write(rs("Lastname"))%>"><br>
Address : <br>
<input type ="Text" name = "address" value="<% response.Write(rs("Address"))%>"><br>
Gender <br>
<%
	gen=rs("Gender")	
	%>
<input type="radio" name= "gender" value="male"<% if gen="male" then Response.Write("checked") else Response.Write("") end if%> >Male<br>
<input type ="radio" name ="gender" value="female"<% if gen="female" then Response.Write("checked") else Response.Write("") end if%> > Female <br>

Hobbies<br>
	<%
	hobis=rs("Hobbies")	
	%>
<input type="checkbox" name="Hobbies"   value="Swimmming"<% if hobis="Swimmming" then Response.Write("checked") else Response.Write("") end if%>> Swimmming<br>
<input type="checkbox" name="Hobbies" value="Singinig" <% if hobis="Singinig" then Response.Write("checked") else Response.Write("") end if%>>Singinig<br>
<input type="checkbox" name="Hobbies" value="Dancing" <% if hobis="Dancing" then Response.Write("checked") else Response.Write("") end if%>>Dancing<br>
Education<br>
					 <%
						post=rs("Education")		
					%>
<Select name="Education">
<option value="CEO" <% if post="CEO" then Response.Write("selected='selected'") else Response.Write("") end if%>>CEO</option>

<option value ="graduated"  <% if post="graduated" then Response.Write("selected='selected'") else Response.Write("") end if%>> Graduated</option>
<option value ="post"  <% if post="post" then Response.Write("selected='selected'") else Response.Write("") end if%>>Post Graduated</option>
<option value ="under"  <% if post="under" then Response.Write("selected='selected'") else Response.Write("") end if%>>Under Graduated</option>
<option value ="4">4</option>

</Select><br>
Remarks<br>
<textarea name="Remarks" rows="4" cols="50">
<% response.Write(rs("Remarks"))%>
</textarea><br>
<input type="submit" value="Submit">
</form>

	<%
  i=i+1
rs.movenext
wend
%>