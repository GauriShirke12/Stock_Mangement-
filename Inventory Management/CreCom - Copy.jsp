<%-- 
    Document   : CreCom
    Created on : 17 Mar, 2024, 9:51:18 PM
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
         <form action="index.html">
        <div class="container">
           
            
                <div class="com-details">
                    <div class="input-box">
                        <h1><b> Create a New Company :<input type="text" name="company" value="" size="60" required /></b></h1><br>
                    </div>
                    <div class="headline">
                        <h1 style="background-color: cornflowerblue" ><i>Nature Of business</i></h1><br>
                    </div>
                    <div class="input-box">
                        Trade:<select name="trade">
                            <option value="Grocery">Grocery</option>
                            <option value="Electonic">Electronic</option>
                            <option value="fruits">Fruits</option>
                            <option value="General Stores">General Store</option>
                        </select>
                    </div>
                    <div class="headline">
                        <h1 style="background-color: cornflowerblue" ><i>Basic Details</i></h1>
                    </div><br>
                    <div class="input-box">
                        Address Line1:<input type="text" name="add1" value="" required /><br>
                        Address Line2:<input type="text" name="add2" value="" required/><br>
                        </div><br>
                    <div class="input-box">
                        <tr>
                            <td>city:</td>
                            <td><input type="text" name="city" value="" size="40" required/></td>
                            <td>pin code:</td>
                            <td><input type="text" name="pin" value="" size="40" required/></td>
                        </tr>
                    </div><br>
                    <div class="input-box">
                        <tr>
                            <td> State:</td>
                            <td><input type="text" name="state" value="" size="40" required/></td>
                    
                            <td>Dist:</td>
                            <td><input type="text" name="dist" value="" size="40" required/></td>
                        </tr>
                    </div><br>
                    <div class="input-box">
                        <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" value="" size="40" required/></td>
                    
                        <td>mobile no:</td>
                        <td><input type="text" name="mob" value="" size="40" required/></td>
                        </tr>
                    </div><br>
                   
                    <div class="headline">
                         <h1 style="background-color: cornflowerblue" ><i>Make Super User For This Company</i></h1><br>
                    </div><br>
                    <div class="input-box">
                        <table>
                        <tbody>
        <tr>
            <td>name:</td>
            <td><input type="text" name="username" value="" required/></td>
            <td>password</td>
            <td><input type="password" name="password" value="" required/></td>
        </tr>
        
    </tbody>
</table>
                    </div><br>
                    <div class="button">
                     
                        <button type="submit" style="background: yellow"><font size="5"><b>CREATE COMPANY</b></a></button>
                    </div>
   
                </div>
         
        </div>
         </form>
                </center>       
    </body>
</html>

