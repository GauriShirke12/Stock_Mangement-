<%-- 
    Document   : update
    Created on : 28 Mar, 2024, 3:55:44 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String name = request.getParameter("name");
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram", "root", "");
        Statement st = con.createStatement();
        String sql = "UPDATE stock SET quantity = quantity - " + quantity + " WHERE name = '" + name + "'";
        int rowsAffected = st.executeUpdate(sql);
        if (rowsAffected > 0) {
            response.setStatus(HttpServletResponse.SC_OK);
        } else {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
%>
