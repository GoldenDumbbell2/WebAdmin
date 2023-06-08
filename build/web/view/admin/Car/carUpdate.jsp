<%-- 
    Document   : carUpdate
    Created on : May 12, 2023, 2:04:36 PM
    Author     : TADAR
--%>

<%@page import="model.Family"%>
<%@page import="model.Users"%>
<%@page import="model.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
        <form id="login_form" class="form_class" action="CarUpdateController" method="POST">
            <div class="form_div">
            <%Car c = (Car) request.getAttribute("car");%>
            <label>CarID:</label><input  class="field_class"  type="text" name="id" value="<%out.println(c.getCarID());%>" readonly=""/> </br>
            <label>Car Name:</label> <input  class="field_class"  type="text" name="name" value="<%out.println(c.getCarName());%>" required=""/> </br>
            <label>Car Plate:</label> <input  class="field_class"  type="text" name="plate" value="<%out.println(c.getCarPlate());%>" required=""/> </br>
            <label>Car Color:</label> <input  class="field_class"  type="text" name="color" value="<%out.println(c.getCarColor());%>" required=""/> </br>
            <% Family u = null;
            String userID;
                if (c.getFamilyId()== null) {
             userID = "null";
            }else{
               userID = c.getFamilyId().getFamilyName();
            }
            %>
            <label>Family:<label><input  class="field_class"  type="text" name="familyId" value="<%out.println(userID);%>" readonly=""/> </br>   
            
                   
            </div>
             <input type="submit" name="action" value="UPDATE"/>
        </form>
            </main>
           
            </div>
            </div>
            </div>
    </body>

</html>
