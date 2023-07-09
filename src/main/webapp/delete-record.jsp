<%@ page import="java.sql.*"%>
<%
String msg = "";
try {
	String pid = request.getParameter("pid");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "Abhi12@x");
	PreparedStatement ps = cn.prepareStatement("delete from productinfo where id=?");
	ps.setString(1, pid);
	int n = ps.executeUpdate();

	if (n >= 1) {
		msg = "Record with id " + pid + " has been delete successfully";
	} else {
		msg = "Record with id " + pid + " does not exit";
	}
} catch (Exception ex) {
	out.println(ex);
}
%>
<html>
<body>
	<h2><%=msg%></h2>
	<a href='delete-record.html' align='center'
		style='text-decoration: none; background-color: #f1f5d0; border: 2px solid blue;'>Delete
		more record </a>
	<br>
	<br>
	<a href='/product-management' align='center'
		style='text-decoration: none; background-color: #f1f5d0; border: 2px solid blue;'>Home</a>
</body>
</html>
