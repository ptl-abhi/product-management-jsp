<%@ page import="java.sql.*"%>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp10", "root", "Abhi12@x");
	PreparedStatement ps=cn.prepareStatement("insert into productinfo values (?,?,?,?)");
	ps.setString(1,request.getParameter("id"));
	ps.setString(2,request.getParameter("name"));
	ps.setString(3,request.getParameter("brand"));
	ps.setString(4,request.getParameter("price"));
	ps.executeUpdate();

} catch (Exception ex) {
	System.out.println(ex);
}
%>

<html>
<head>
<link href="CSS/product.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="dv">
<h2>Product record has been inserted successfully</h2>

<a href="insert-record.html" class="an" >Insert more record</a>
</div>
<br>
	<br>
	<div class="dv">
		<a class="an" href="/product-management">Home</a>
	</div>
</body>
</html>