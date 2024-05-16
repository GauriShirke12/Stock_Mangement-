<%-- 
    Document   : CreateCom
    Created on : 29 Mar, 2024, 4:51:10 PM
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
        <form action="index.html">
       
        <%
          String com= request.getParameter("company");
             String trade= request.getParameter("trade");
         String add1= request.getParameter("add1");
         String add2= request.getParameter("add2");
         String city= request.getParameter("city");
         String pin= request.getParameter("pin");
          String state= request.getParameter("state");
         String dist= request.getParameter("dist");
         String email= request.getParameter("email");
         String mob= request.getParameter("mob");
       String name=request.getParameter("username");
        String pass=request.getParameter("password");



        
        %>
        </form>
    </body>
</html>
