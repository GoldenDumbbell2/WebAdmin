<%-- 
    Document   : userView
    Created on : May 10, 2023, 3:12:43 PM
    Author     : TADAR
--%>

<%@page import="model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.History"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer</title>
        <link rel="stylesheet" href="adminCss.css" type="text/css">
    </head>
    <body>
        <div id="center">
        <table border="1">
        
            <thead>
                <tr>
                    <th>UserID</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Full Name</th>
                    <th>Pass</th>
                    <th>IdentityN0</th>
                    <th>Acction</th>
                  
                </tr>
            </thead>
            <tbody>
                <%
                    List<Users> ds = (ArrayList<Users>) request.getAttribute("list");
                %>

                <%
                    for (Users x : ds) {
                %>
                <tr>
                    <td>
                        <input type="text" name="name" value="<%=x.getUserID()%>" readonly=""/>
                    </td>
                    <td>
                        <input type="text" name="name" value="<%=x.getEmail()%>" readonly=""/>
                    </td>
                    <td>
                        <input type="text" name="name" value="<%=x.getPhoneNumber()%>" readonly=""/>
                    </td>
                    <td>
                        <input type="text" name="name" value="<%=x.getFullName()%>" readonly=""/>
                    </td>
                    <td>
                        <input type="text" name="name" value="<%=x.getPass()%>" readonly=""/>
                    </td>
                    <td>
                        <input type="text" name="name" value="<%=x.getIdentityNumber()%>" readonly=""/>
                    </td>
                    <td>
                        <a href="UserDeleteController?id=<%=x.getUserID()%>">Delete</a>
                        <a href="UserUpdateController?id=<%=x.getUserID()%>">Update</a>
                    </td>
                   
                    
                </tr>
                <%
                    }
                %> 
            </tbody>
            <a href="UserCreateController">Create</a>
        </table>
            </div>
            <body>
</html>
