<%-- 
    Document   : admin.jsp
    Created on : Mar 19, 2023, 10:08:14 PM
    Author     : sun
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body >
        <p>
            <center>
        
        <button style="height:100px;width:250px"><h2><a href="EmployeeViewController">Employee Management</a></h2></button>
        <button style="height:100px;width:250px"><h2><a href="UserviewController">User Management</a></h2></button>
        <button style="height:100px;width:250px"><h2><a href="CarViewController">Car Management</a></h2></button>
        <button style="height:100px;width:250px"><h2><a href="HistoryController">I-O History</a></h2></button>
        
    <form action="LogoutController" method="POST">
           <h1> <input type="submit" name="logout" value="Logout"/> </h1>
        </form>
        <button style="height:100px;width:250px"><h2><a href="">Payment History</a></h2></button>
        <button style="height:100px;width:250px"><h2><a href="">Booking</a></h2></button>
        </center>
        </p>
        
    </body>
    
</html>
