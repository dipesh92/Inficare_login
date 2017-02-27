<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover{background-color:#f5f5f5}
</style>

<%

Dim conn
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB; Database=db_demo; Data Source=192.168.11.3\Instance1;uid=sa; pwd=Inficare@123"

set rs = server.CreateObject ("ADODB.Recordset")
sql=" spa_demo @flag= 's'"

rs.open sql,conn
%>




  <table align="center" border="1" width="80%">

   <tr>
 
      <th>id</th>
      <th>UserName</th>      
	  <th>Password</th>
	  <th>Address</th>
	  <th>Gender</th>
	  <th>Hobbies</th>
	  <th>Education</th>
      <th>Remarks</th>
      <th>Edit/Delete</th>
     </tr>    
  <%if rs.eof =true then%>
  
  <% end if
  i=1
  while not rs.eof%>
  <tr>
    <td><% response.Write(rs("id"))%></td>
    <td><% response.Write(rs("Firstname"))%></td>
	<td><% response.Write(rs("Lastname"))%></td>
	<td><% response.Write(rs("Address"))%></td>
	<td><% response.Write(rs("Gender"))%></td>
    <td><% response.Write(rs("Hobbies"))%></td>
    <td><% response.Write(rs("Education"))%></td>
	<td><% response.Write(rs("Remarks"))%></td>
	<td>
	<div text-align:center;">
		<a href="edit.asp?id=<% response.Write(rs("id"))%>">Edit</a>
        <a href="delete.asp?id=<% response.Write(rs("id"))%>">Delete</a>
	</div>
	</td>

	

     
 <%
  i=i+1
rs.movenext
wend
%>

</table>
 <a href="logout.asp" >LOGOUT</a>
