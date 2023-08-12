<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("frd");
String batch = request.getParameter("batch");
String star = request.getParameter("star");
String feedback = request.getParameter("fb");

try{
	Class.forName("com.mysql.jdbc.Driver");
	String URL = "jdbc:mysql://localhost:3306/feedback";
	String Uname = "root";
	String Upass = "admin@123";
	
	Connection alpha = DriverManager.getConnection(URL, Uname, Upass);
	String query = "insert into feedbacks (Name,batch,star,feedback) values (?,?,?,?);";
	PreparedStatement value = alpha.prepareStatement(query);
	
	value.setString(1, name);
	value.setString(2, batch);
	value.setString(3, star);
	value.setString(4, feedback);
	
	int result = value.executeUpdate();
	
	if(result>0) {
		response.sendRedirect("Welcome.jsp");
	}else {
		System.out.println("Error while uploading data in Database");
	}
	
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>