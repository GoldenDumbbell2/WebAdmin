<%-- 
    Document   : userCreate
    Created on : May 10, 2023, 5:16:24 PM
    Author     : TADAR
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ApartmentBlock"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
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
            
            <form id="login_form" class="form_class" action="EmployeeCreateController" method="POST">
            <div class="form_div">
            <label>email</label><input class="field_class" type="text" name="email" required=""/>${errorEmail}</br>
            <label>fullname</label> <input class="field_class" type="text" name="fullname" required=""/></br>
            <label>password</label> <input class="field_class" type="text" name="pass" required=""/> </br>
            <label>Identity Number</label> <input class="field_class" type="text" name="identityNumber" required=""/> </br>
            <label>Current apartment block :</label>
            <select name="AblockID">
                <c:forEach var="item" items="${listapartment}">
                    <option value="${item.getAblockID()}">${item.getAblockID()}</option>
                </c:forEach>
            </select>
            <input type="submit" name="action" value="Create"/>
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
