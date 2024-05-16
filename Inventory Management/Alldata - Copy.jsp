<%-- 
    Document   : Allstudent.jsp
    Created on : 29 Jan, 2024, 5:56:30 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.*,java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="button.css" />
    <title>Stock Management</title>
     <style>
            body{
                background-image: url(https://coolbackgrounds.io/images/backgrounds/white/white-trianglify-b79c7e1f.jpg);
                background-repeat: no-repeat;
                background-size: cover;
            }
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                padding: 10px; 
                text-align: center;
            }
            th {
                background-color: yellow;
                font-size: 18px; 
            }
            td {
                font-size: 16px; 
            }
        </style></head>
<body>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram", "root", "");
        Statement st = con.createStatement();
        String sql = "select * from stock";
        ResultSet rs = st.executeQuery(sql);
%>
<center>
    <table border="2">
        <thead style="background-color: yellow">
            <tr>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Units</th>
                <th>GST</th>
                <th>Basic Price</th>
                <th>Sale Price</th>
                <th>MRP</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("quantity") %></td>
                <td><%= rs.getString("unit") %></td>
                <td><%= rs.getString("gst") %></td>
                <td><%= rs.getString("basicprice") %></td>
                <td><%= rs.getString("saleprice") %></td>
                <td><%= rs.getString("mrp") %></td>
                <td><a href="deleteItem.jsp?name=<%= rs.getString("name") %>">Delete</a></td>
            </tr>
            <%
                }
                rs.close();
                st.close();
                con.close();
            } catch (Exception e) {
                out.print(e);
            }
            %>
        </tbody>
    </table>
    <br><br><br><a href="Homepage.html" class="logout-btn">Back</a>
</center>
</body>
</html>
