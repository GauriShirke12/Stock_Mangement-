<%-- 
    Document   : delete
    Created on : 17 Feb, 2024, 11:24:48 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Item</title>
    <style>
        body {
            background-image: url(https://img.freepik.com/free-photo/abstract-blue-background-with-smooth-lines_476363-5637.jpg?size=626&ext=jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<center>
<%@ page import="java.sql.*" %>
<%
    String name = request.getParameter("name");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram", "root", "");
        String sql = "DELETE FROM stock WHERE name = ?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, name);
        int rowsAffected = pstmt.executeUpdate();
        if (rowsAffected > 0) {
            out.print("Data deleted successfully...");
        } else {
            out.print("No records found to delete with the given name: " + name);
        }
        pstmt.close();
        con.close();
    } catch (Exception e) {
        out.print("An error occurred: " + e.getMessage());
    }
%>
<br><br><a href="Alldata.jsp"><b><font size="5">Back</font></b></a>
</center>
</body>
</html>
