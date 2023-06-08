<%-- 
    Document   : history
    Created on : May 9, 2023, 4:36:11 PM
    Author     : TADAR
--%>

<%@page import="model.Users"%>
<%@page import="model.Car"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.History"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
     <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                
                    <li>
                        <a href="HomeController" ><i class="fa fa-desktop "></i>Home</a>
                    </li>
                    <li>
                        <a href="EmployeeViewController" method="GET"><i class="fa fa-table "></i>Employee Account Table</a>
                    </li>
                    <li>
                        <a href="UserviewController" method="GET"><i class="fa fa-table "></i>Customer Account Table</a>
                    </li>
                    <li class="active-link">
                        <a href="CarViewController" method="GET"><i class="fa fa-table "></i>Customer Car Table</a>
                    </li>
                    
                   
                </ul>
                            </div>

        </nav>
      <div id="page-wrapper" >
            <div id="page-inner">
                <form action="CarSearchController" method="GET">
        <input class="field_class" type="text" name="search" value/><button>Search</button>
                    </form>
                <div class="row text-center pad-top">
    <table class="fl-table" >
            <thead>
                <tr>
                    <th>CarName</th>
                    <th>CarPlate</th>
                    <th>CarColr</th>
                    <th>Family</th>
                    <th>Verify State 1</th>
                    <th>Verify State 2</th>
                    <th>Action </th>
                    
                </tr>
            </thead>
            <tbody>
                <%
                    List<Car> ds = (ArrayList<Car>) request.getAttribute("list");
                %>

                <%
                    for (Car x : ds) {
                %>
                <tr>
                    <td>
                        <%=x.getCarName()%>
                    </td>
                    <td>
                       <%=x.getCarPlate()%>
                    </td>
                    <td>
                        <%=x.getCarColor()%>
                    </td>
                    <% Users u = null;
            String familyID;
                if (x.getFamilyId()== null) {
             familyID = "null";
            }else{
               familyID = x.getFamilyId().getFamilyID();
            }
                 %>
                    <td>
                       <%=(familyID)%>
                    </td>
                    <td>
                       <%=x.isVerifyState1()%>
                    </td>
                    <td>
                       <%=x.isVerifyState2()%>
                    </td>
                    <td>
                        <a href="CarDeleteController?id=<%=x.getCarID()%>">Delete</a>
                        <a href="CarUpdateController?id=<%=x.getCarID()%>">update</a>
                    </td>
 
                </tr>
                <%
                    }
                %> 
            </tbody>
        </table>
    </main>

            <form action="CarCreateController" >
            <button>Create</button>
        </form>
            
    </div>
    </body>
</html>
