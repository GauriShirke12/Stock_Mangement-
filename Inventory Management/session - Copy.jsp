<%-- 
    Document   : session
    Created on : 3 Feb, 2024, 7:20:21 PM
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
        String nm=(String)session.getAttribute("name");
        String pass1=(String)session.getAttribute("pass");
        String nm1=request.getParameter("Name");
        String pass2=request.getParameter("password");
        if(nm.equalsIgnoreCase(nm1) && pass1.equals(pass2) )
            {
                response.sendRedirect("Adminhome.jsp");
                
            }
            else
            {
                response.sendRedirect("myErrorPage.jsp");
            }
            
        %>
    </center>
    </body>
</html>
