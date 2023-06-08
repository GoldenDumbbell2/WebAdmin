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
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    <body><div id="wrapper">
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
              
                <span class="logout-spn" >
                  <a href="LogoutController" method="POST">LOGOUT</a>  

                </span>
            </div>
        </div>
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                
                    <li>
                        <a href="HomeController" ><i class="fa fa-desktop "></i>Home</a>
                    </li>
                    <li >
                        <a href="EmployeeViewController" method="GET"><i class="fa fa-table "></i>Employee Account Table</a>
                    </li>
                    <li class="active-link">
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
                <form action="UserSearchController" method="GET">
        <input class="field_class" type="text" name="search" value="" required=""/><button>Search</button>
                    </form>
                <div class="row text-center pad-top">
        <table class="fl-table">
        
            <thead>
                <tr>
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
                        <%=x.getEmail()%>
                    </td>
                    <td>
                       <%=x.getPhoneNumber()%>
                    </td>
                    <td>
                      <%=x.getFullName()%>
                    </td>
                    <td>
                        <%=x.getPass()%>
                    </td>
                    <td>
                        <%=x.getIdentityNumber()%>
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
             </table>
                       <form action="UserCreateController" >
            <button>Create</button>
        </form>
                
        </main>
        
        </div>
    </div>
             </div>
            </body>
</html>
