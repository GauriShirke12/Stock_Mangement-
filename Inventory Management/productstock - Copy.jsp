<%-- 
    Document   : productstock
    Created on : 24 Mar, 2024, 10:29:19 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="button.css" />
        <title>JSP Page</title>
        <style>
            body{
                background-image: 
                    url(https://www.jcount.com/wp-content/uploads/2018/08/Image_1-35.jpeg);
                background-repeat: no-repeat;
                
                background-size: cover
            }
        </style>
    </head>
    <body>
        <center>
            
            
            
            
           <form action="Allstudent.jsp">
          
        <%@page import="java.util.*,java.sql.*"%>
        <%
            try
        {
        String n=request.getParameter("name");
        String m=request.getParameter("quantity");
        String p=request.getParameter("unit");
        String mb=request.getParameter("gst");
       String bp=request.getParameter("basicprice");
       String sp=request.getParameter("saleprice");
        String details=request.getParameter("mrp");
        
  
    
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
            Statement st=con.createStatement();
            String sql="insert into stock(name,quantity,unit,gst,basicprice,saleprice,mrp)values('"+n+"' , '"+m+"' , '"+p+"' , '"+mb+"','"+bp+"' ,'"+sp+"', '"+details+"')";
            st.executeUpdate(sql);
            out.print("data inserted successfully");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

   %>
  
   
   
   
   
   
   <br><br>
     <a href="Homepage.html"  button type="submit" class="logout-btn">Back</a>
           
 
    </center>

    </body>
</html>
