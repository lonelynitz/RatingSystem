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
<% String name = request.getParameter("uname"); 
   String pass = request.getParameter("upass");
   
   try{
	    Class.forName("com.mysql.jdbc.Driver");
		String URL = "jdbc:mysql://localhost:3306/feedback";
		String Uname = "root";
		String Upass = "admin@123";
		
		Connection alpha = DriverManager.getConnection(URL, Uname, Upass);
		String query = "select * from studlogin";
		PreparedStatement value = alpha.prepareStatement(query);
		
		ResultSet result = value.executeQuery();
		
		if(result.next()){
			if(name.equals(result.getString(2)) && pass.equals(result.getString(3))){
				response.sendRedirect("rating.html");
			}else{
				System.out.println("Invalid ID");
			}
		}
		
   }catch(Exception e){
	   System.out.println(e);
	   
   }
   
%>

</body>
</html>