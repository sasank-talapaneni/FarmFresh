 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
 
 <%
 String name = request.getParameter("name");
 String category = request.getParameter("category");
 String price = request.getParameter("price");
 double pri = Double.parseDouble(price);
 String image = request.getParameter("image");
 

 
 try
 {
	 Connection con = null;
     Class.forName("com.mysql.cj.jdbc.Driver");
     System.out.println("Driver Classes Loaded");
     con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "S@si20256");
     System.out.println("Connection Established");
     
     PreparedStatement pstmt = con.prepareStatement("insert into products(name,category,price,image) values(?,?,?,?)  ");
     pstmt.setString(1, name);
     pstmt.setString(2,category);
     pstmt.setDouble(3, pri);
     pstmt.setString(4, image);
     
     
     int n = pstmt.executeUpdate();
     if(n>0)
     { 
    	 response.sendRedirect("adminproducthandler.jsp");
     }
    
     con.close();
 }

 catch(Exception e)
 {
	out.println(e);
 }
 %>