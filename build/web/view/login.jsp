<%-- 
    Document   : login
    Created on : Feb 17, 2023, 3:26:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        
    </head>
    <body>
        <header>
            <h1>Admin's Data Management </h1>
        </header>
        <main>
            <form id="login_form" class="form_class" action="LoginController" method="POST">
            <div class="form_div">
            
           
           <label>Account:</label> <input class="field_class" type ="text" name="tentaikhoan" value="admin" required=""></br>
            
           <label>Password:</label><input id="pass" class="field_class" type ="password" name="matkhau" value="123" required=""></br>
            <br>${errorLogin}</br>
            <button class="submit_class" type="submit" onclick="POST">Login</button>
            
            </div>
        </form>
        
        </main>
    </body>
</html>
