<%@page import="java.sql.*"%>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp10","root","Abhi12@x");
	Statement st=cn.createStatement();
	ResultSet rst=st.executeQuery("select * from productinfo");
	%>
<html>
<body>
	<table
		style='margin: auto; font-size: 20px; border-collapse: collapse; width: 55%; margin-top: 20px'
		border='1'>
		<tr>
			<th>Product id</th>
			<th>Product name</th>
			<th>Product brand</th>
			<th>Product price</th>
		</tr>
		<%
	  	while(rst.next())
	  	{
	  		%>
		<tr>
			<td><%=rst.getString(1)%></td>
			<td><%=rst.getString(2)%></td>
			<td><%=rst.getString(3)%></td>
			<td><%=rst.getString(4)%></td>
		</tr>
		<%
	  	}
	  	%>
	</table>
	<div style='text-align: center; margin-top: 20px'>
		<a href='/product-management'>Home</a>
	</div>
</body>
</html>
<%
}
catch(Exception ex)
{
	out.println(ex);
}
%>