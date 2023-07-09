<%@ page import="java.sql.*"%>
<%
try{
	String pid=request.getParameter("pid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp10","root","Abhi12@x");
	PreparedStatement ps=cn.prepareStatement("select*from productinfo where id=?");
	ps.setString(1,pid);
	ResultSet rst=ps.executeQuery();
	%>
	<html>
   <body>
<div style='text-align:center;margin-top:30px'>
	<% if (rst.next()) {%>
		
				<table style='margin:auto;font-size:20px;background-color:aqua;border-collapse:collapse;width:45%;margin-top:20px' border='1'>
		<tr><th align='left'>Product id</th>
		<td> <%=rst.getString(1)%></td></tr>
		<tr><th align='left'>Product name</th>
		<td><%=rst.getString(2)%> </td></tr>
		<tr><th align='left'>Product brand</th>
		<td><%=rst.getString(3)%> </td></tr>
		<tr><th align='left'>Product price</th>
		<td><%=rst.getString(4)%> </td></tr>
	</table><br><br>
	<%} else { %>
		<h2 style='color:red'>Product with id  <%=pid  %>  not found</h2>

	<% }%>
	<a href='search-record.html' align='center' style='text-decoration:none;background-color:#f1f5d0;border:2px solid blue;'>Search more record </a>
	<br><br><a href='/product-managemenet'>Home</a>
	</div>
	</body>
	</html>
<%}
catch(Exception ex)
{
	out.println(ex);
}
%>