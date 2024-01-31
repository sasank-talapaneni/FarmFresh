<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    
 <%
 String firstname = request.getParameter("firstname");
 String gender = request.getParameter("gender");
 String city = request.getParameter("city");
 String email = request.getParameter("email");
 String password = request.getParameter("password");
 String contactno = request.getParameter("contactno");
 
 try
 {
	 Connection con = null;
     Class.forName("com.mysql.cj.jdbc.Driver");
     System.out.println("Driver Classes Loaded");
     con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "S@si20256");
     System.out.println("Connection Established");
     
     PreparedStatement pstmt = con.prepareStatement("insert into userreg_table(firstname,gender,city,email,password,contactno) values(?,?,?,?,?,?)  ");
     pstmt.setString(1, firstname);
     pstmt.setString(2,gender);
     pstmt.setString(3, city);
     pstmt.setString(4, email);
     pstmt.setString(5, password);
     pstmt.setString(6, contactno);
     
     String uppercaseRegex = ".*[A-Z].*";
     String lowercaseRegex = ".*[a-z].*";
     String numberRegex = ".*\\d.*";
     String specialCharRegex = ".*[^A-Za-z0-9].*";
     
     
     int n = pstmt.executeUpdate();
     if(n>0 && password != null && password.length() >= 8 &&
             password.matches(uppercaseRegex) &&
             password.matches(lowercaseRegex) &&
             password.matches(numberRegex) &&
             password.matches(specialCharRegex))
     { 
    	 response.sendRedirect("login.jsp");
     }
    
     con.close();
 }

 catch(Exception e)
 {
	out.println(e);
 }
 %>
