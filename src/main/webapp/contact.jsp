<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
 <%
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String message = request.getParameter("message");
 String rating = request.getParameter("rating");
 
 try
 {
	 Connection con = null;
     Class.forName("com.mysql.cj.jdbc.Driver");
     System.out.println("Driver Classes Loaded");
     con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "S@si20256");
     System.out.println("Connection Established");
     
     PreparedStatement pstmt = con.prepareStatement("insert into feedback_table(name,email,message,rating) values(?,?,?,?)  ");
     pstmt.setString(1, name);
     pstmt.setString(2, email);
     pstmt.setString(3, message);
     pstmt.setString(4, rating);
     
     
     int n = pstmt.executeUpdate();
     if(n>0)
     { 
    	 response.sendRedirect("contact.html");
     }
    
     con.close();
 }

 catch(Exception e)
 {
	out.println(e);
 }
 %>
