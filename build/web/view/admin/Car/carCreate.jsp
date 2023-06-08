<%-- 
    Document   : carCreate
    Created on : May 11, 2023, 4:31:54 PM
    Author     : TADAR
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <form id="login_form" class="form_class" action="CarCreateController" method="POST">
       <div class="form_div">
        <label> CarID: </label><input class="field_class" type="text" name="id" required=""/> </br>
        <label>  Car Name: </label> <input class="field_class" type="text" name="name" required=""/></br>
        <label>  Car Plate:</label> <input class="field_class" type="text" name="plate" required=""/></br>
        <label>  Car Color:</label> <input class="field_class" type="text" name="color" required=""/></br>
           
          <label>Family</label> <select name="familyID">
                <option value = "NULL"></option>
                <c:forEach var="item" items="${listfamily}">
                    <option value="${item.getFamilyID()}">${item.getFamilyID()}</option>
                </c:forEach>
            </select>
          </div>
            <input type="submit" name="action" value="Create"/></br>
        </form>
            </main>
    </body>
</html>
