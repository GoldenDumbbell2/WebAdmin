<%-- 
    Document   : carUpdate
    Created on : May 12, 2023, 2:04:36 PM
    Author     : TADAR
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ApartmentBlock"%>
<%@page import="model.Employee"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <main>
        <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png"/>
                    </a>
                    
                </div>
              
              
            </div>
        </div>
            
            <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                
                    <li >
                        <a href="EmployeeViewController" method="GET"><i class="fa fa-table "></i>Employee Account Table</a>
                    </li>
                    <li >
                        <a href="UserviewController" method="GET"><i class="fa fa-table "></i>Customer Account Table</a>
                    </li>
                    <li>
                        <a href="CarViewController" method="GET"><i class="fa fa-table "></i>Customer Car Table</a>
                    </li>
                   
                </ul>
                            </div>

        </nav>
            <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row text-center pad-top">
        <main>
            
             <form id="login_form" class="form_class" action="EmployeeUpdateController" method="POST">
            <div class="form_div">
                            <%Employee c = (Employee) request.getAttribute("employee");%>
            <label>Email</label><input class="field_class" type="text" name="email" value="<%out.println(c.getEmail());%>" required=""/>${errorEmail}</br>
            <label>Fullname</label> <input class="field_class" type="text" name="fullname" value="<%out.println(c.getFullName());%>" required=""/></br>
            <label>Password</label> <input class="field_class" type="text" name="password" value="<%out.println(c.getPassword());%>"  required=""/> </br>
            <label>Identity Number</label> <input class="field_class" type="text" name="identityNumber" value="<%out.println(c.getIdentityNumber());%>" required=""/> </br>
            <label>Current Apartment block </label>
            <select name="AblockID">
                <c:forEach var="item" items="${listapartment}">
                    <option value="${item.getAblockID()}">${item.getAblockID()}</option>
                </c:forEach>
            </select>
            <input type="submit" name="action" value="Update"/>
            </div>
        
             </form>
                
                </main>
            <table class="fl-table">
                
                <thead>
                    <tr>
                    <th>Apartment Block ID</th>
                    <th>Apartment Name</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<ApartmentBlock> ds = (ArrayList<ApartmentBlock>) request.getAttribute("listapartment");
                %>

                <%
                    for (ApartmentBlock x : ds) {
                %>     
                    <tr>
                    <td>
                        <%=x.getAblockID()%>
                    </td>
                    <td>
                        <%=x.getAblockName()%>
                    </td>
                    </tr>
                
                <%
                    }
                %>
           </tbody>
            </table>
        
        
                </div>
            </div>
            </div>
        </div>
    </body>
</html>

        

