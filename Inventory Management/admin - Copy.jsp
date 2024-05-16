<%-- 
    Document   : admin
    Created on : 13 Feb, 2024, 8:52:55 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <%
           
           String user=request.getParameter("Username");
           String pass=request.getParameter("Password");
           if(user.equalsIgnoreCase("Admin") && pass.equals("Admin123"))
           {
               response.sendRedirect("index.html");
           }
           
           else
           {
                response.sendRedirect("Invalid.jsp");
           }
           
        %>
    </center>
    </body>
</html>
