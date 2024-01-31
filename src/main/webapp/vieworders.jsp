<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Orders and Products Information</title>
    
    <style>
body {
  font-family: Arial, sans-serif;
}

/* Orders table */
.order-table {
  border-collapse: collapse;
  width: 100%;
  /* Remove margin-top to fill the full page */
}

.order-table th,
.order-table td {
  border: 1px solid #ccc;
  padding: 8px;
}

.order-table th {
  background-color: #f2f2f2;
  text-align: left;
  /* Add colorful text */
  color: #007bff;
}

/* Products table */
.product-table {
  border-collapse: collapse;
  width: 100%;
  /* Remove margin-top to fill the full page */
}

.product-table th,
.product-table td {
  border: 1px solid #ccc;
  padding: 8px;
}

.product-table th {
  background-color: #f2f2f2;
  text-align: left;
  /* Add colorful text */
  color: #dc3545;
}

/* Highlight rows on hover */
.order-table tr:hover,
.product-table tr:hover {
  background-color: #f9f9f9;
}

/* Add icons to the table headers */
.order-table th::before,
.product-table th::before {
  font-family: "Font Awesome 5 Free"; /* Replace with the font you're using for icons */
  margin-right: 4px;
}

.order-table th:nth-child(1)::before {
  content: "\f07a"; /* Replace with the icon code for the first column (Order ID) */
}

.product-table th:nth-child(1)::before {
  content: "\f02b"; /* Replace with the icon code for the first column (Product ID) */
}
/* styles.css */
body {
  font-family: Arial, sans-serif;
}

/* User's table */
.user-table {
  border-collapse: collapse;
  width: 100%;
}

.user-table th,
.user-table td {
  border: 1px solid #ccc;
  padding: 8px;
}

.user-table th {
  background-color: #f2f2f2;
  text-align: left;
  /* Add colorful text */
  color: #28a745;
}

/* Highlight rows on hover */
.user-table tr:hover {
  background-color: #f9f9f9;
}

/* Add icons to the table headers */
.user-table th::before {
  font-family: "Font Awesome 5 Free"; /* Replace with the font you're using for icons */
  margin-right: 4px;
}

.user-table th:nth-child(1)::before {
  content: "\f007"; /* Replace with the icon code for the first column (User ID) */
}

.user-table th:nth-child(2)::before {
  content: "\f007"; /* Replace with the icon code for the second column (Name) */
}

.user-table th:nth-child(3)::before {
  content: "\f228"; /* Replace with the icon code for the third column (Gender) */
}

.user-table th:nth-child(4)::before {
  content: "\f015"; /* Replace with the icon code for the fourth column (City) */
}

.user-table th:nth-child(5)::before {
  content: "\f0e0"; /* Replace with the icon code for the fifth column (Email) */
}

.user-table th:nth-child(6)::before {
  content: "\f095"; /* Replace with the icon code for the sixth column (Contact No.) */
}
/* Make table description values (cells) bold */
.order-table td {
  font-weight: bold;
}

.product-table td {
  font-weight: bold;
}

.user-table td {
  font-weight: bold;
}



</style>
    
    <meta charset="utf-8">
    <title>FarmFresh - Organic Farm Website</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

   <div class="container-fluid px-5 d-none d-lg-block">
        <div class="row gx-5 py-3 align-items-center">
            <div class="col-lg-3">
            </div>
            <div class="col-lg-6">
                <div class="d-flex align-items-center justify-content-center">
                    <a href="index.html" class="navbar-brand ms-lg-5">
                        <h1 class="m-0 display-4 text-primary"><span class="text-secondary">Farm</span>Fresh</h1>
                    </a>
                </div>
            </div>
             </div>
              </div>
<nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
        <a href="index.html" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Farm</span>Fresh</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
                <a href="adminindex.jsp" class="nav-item nav-link active">Home</a>
                <a href="adminproducthandler.jsp" class="nav-item nav-link">Products Handle</a>
                <a href="vieworders.jsp" class="nav-item nav-link">View Info</a>
                 <a href="viewfeedbacks.jsp.jsp" class="nav-item nav-link">View Feedbacks</a>
                
             </div>
        </div>
    </nav>
    <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                
            </div>
    
</head>
<body>

<h1>User's Information</h1>
<table class="user-table">
    <tr>
        <th>User ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>City</th>
        <th>Email</th>
        <th>Contact No.</th>
    </tr>
    <% 
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Replace "your_database_url", "your_username", and "your_password" with your actual database connection details
            String url = "jdbc:mysql://localhost:3306/sample";
            String username = "root";
            String password = "S@si20256";

            // Establish the database connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // Create the SQL query to retrieve users' information
            String query = "SELECT * FROM userreg_table";

            // Create a statement
            Statement stmt = conn.createStatement();

            // Execute the query and get the result set
            ResultSet rs = stmt.executeQuery(query);

            // Process the result set and print the data using HTML table tags
            while (rs.next()) {
                int userId = rs.getInt("id");
                String name = rs.getString("firstname");
                String gender = rs.getString("gender");
                String city = rs.getString("city");
                String email = rs.getString("email");
                String contactno = rs.getString("contactno");

                out.println("<tr>");
                out.println("<td>" + userId + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + gender + "</td>");
                out.println("<td>" + city + "</td>");
                out.println("<td>" + email + "</td>");
                out.println("<td>" + contactno + "</td>");
                out.println("</tr>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>



  <h1>Products Information</h1>
    <table class="product-table">
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Price</th>
        </tr>
        <% 
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Replace "your_database_url", "your_username", and "your_password" with your actual database connection details
                String url = "jdbc:mysql://localhost:3306/sample";
                String username = "root";
                String password = "S@si20256";

                // Establish the database connection
                Connection conn = DriverManager.getConnection(url, username, password);

                // Create the SQL query to retrieve orders information
                String query = "SELECT * FROM products";

                // Create a statement
                Statement stmt = conn.createStatement();

                // Execute the query and get the result set
                ResultSet rs = stmt.executeQuery(query);

                // Process the result set and print the data using HTML table tags
                while (rs.next()) {
                    int productId = rs.getInt("id");
                    String productname = rs.getString("name");
                    String category = rs.getString("category");
                    double price = rs.getDouble("price");
                    String image = rs.getString("image");
                    
                    out.println("<tr>");
                    out.println("<td>" + productId + "</td>");
                    out.println("<td>" + productname + "</td>");
                    out.println("<td>" + category + "</td>");
                    out.println("<td>" + price + "</td>");
                    out.println("</tr>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>




    <h1>Orders Information</h1>
    <table class="order-table">
        <tr>
            <th>Order ID</th>
            <th>Product ID</th>
            <th>User Id</th>
            <th>Order Quantity</th>
            <th>Order Date</th>
        </tr>
        <% 
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Replace "your_database_url", "your_username", and "your_password" with your actual database connection details
                String url = "jdbc:mysql://localhost:3306/sample";
                String username = "root";
                String password = "S@si20256";

                // Establish the database connection
                Connection conn = DriverManager.getConnection(url, username, password);

                // Create the SQL query to retrieve orders information
                String query = "SELECT * FROM orders";

                // Create a statement
                Statement stmt = conn.createStatement();

                // Execute the query and get the result set
                ResultSet rs = stmt.executeQuery(query);

                // Process the result set and print the data using HTML table tags
                while (rs.next()) {
                    int orderId = rs.getInt("o_id");
                    int productid = rs.getInt("p_id");
                    int userid = rs.getInt("u_id");
                    int orderquantity = rs.getInt("o_quantity");
                    Date orderDate = rs.getDate("o_date");
                    

                    out.println("<tr>");
                    out.println("<td>" + orderId + "</td>");
                    out.println("<td>" + productid + "</td>");
                    out.println("<td>" + userid + "</td>");
                    out.println("<td>" + orderquantity + "</td>");
                    out.println("<td>" + orderDate + "</td>");
                    out.println("</tr>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    
  
</body>
</html>
