<%-- 
    Document   : updaterecord
    Created on : 13 Feb, 2024, 11:45:08 PM
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
        
        
         <%@page import="java.util.*,java.sql.*"%>
         <%@page import="java.sql.DriverManager"%>
         
       <%
          
        try 
   {
      
           String name=request.getParameter("name");
       
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
      Statement st=con.createStatement();
       ResultSet rs=null;
      String sql="select * from stock where name="+name; 
     
        rs=st.executeQuery(sql);

       
               while(rs.next())
               {
               
               %>
        <center>
    
         
               <form action="finalupdate.jsp">
                   <input type="hidden" name="name1" value="<%=rs.getString("name")%>" /><br>
                   <table border="2">
    <tbody>
        <tr>
            
            <td>Product Name:</td>
            <td><input type="text" name="name" value=" <%=rs.getString("name")%>" /><br></td>
        </tr>
        <tr>
            <td>Quantity:</td> 
            <td><input type="text" name="quantity" value=" <%=rs.getString("quantity")%>" /><br></td>
        </tr>
        <tr>
            <td>Units:</td>
            <td><input type="text" name="unit" value=" <%=rs.getString("unit")%>" /><br></td>
            </tr>
            <tr>
            <td>Tax Slop:</td>
            <td><input type="text" name="gst" value="<%=rs.getString("gst")%>" /><br></td>
            </tr>
            <tr>
            <td>Basic Price:</td>
            <td><input type="text" name="basicprice" value="<%=rs.getString("basicprice")%>" /><br></td>
            </tr>
            <tr>
            <td>Sale Price:</td>
            <td><input type="text" name="saleprice" value=" <%=rs.getString("saleprice")%>" /><br></td>
            </tr>
            <tr>
            <td>MRP:</td>
            <td><input type="text" name="mrp" value="<%=rs.getString("mrp")%>" /><br></td>
            </tr>
            
    <tr>
        <td><input type="submit" value="ADD" /></td>
    </tr>
               </form>
                   <%
                       
                       }
               
   %>
     </tbody>
           </table>   
 
        
        <%
        con.close();
    }   
   catch(Exception e)
   {
   
  out.print(e);
   
   }       
        %>  
        
        </center>
      
    </body>
</html>

            