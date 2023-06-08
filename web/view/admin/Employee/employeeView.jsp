
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee</title>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    <body >
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
              
                <span class="logout-spn" >
                  <a href="LogoutController" method="POST">LOGOUT</a>  

                </span>
            </div>
        </div>
        
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                
                    <li>
                        <a href="HomeController" ><i class="fa fa-desktop "></i>Home</a>
                    </li>
                    <li class="active-link">
                        <a><i class="fa fa-table " ></i>Employee Account Table</a>
                    </li>
                    <li>
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
                <form action="EmployeeSearchController" method="GET">
        <input class="field_class" type="text" name="search" value="" required=""/><button>Search</button>
                    </form>
                <div class="row text-center pad-top">
                    
        <table class="fl-table">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Full Name</th>
                    <th>Pass</th>
                    <th>Aparment block</th>
                    <th>Acction</th>
                  
                </tr>
            </thead>
            <tbody>
                <%
                    List<Employee> ds = (ArrayList<Employee>) request.getAttribute("list");
                    
                %>

                <%
                    for (Employee x : ds) {
                %>
                <tr>
                    
                    <td>
                        <%=(x.getEmail())%>
                    </td>
                    
                    <td>
                       <%=x.getFullName()%>
                    </td>
                    <td>
                        <%=x.getPassword()%>
                    </td>
                    <td>
                       <%=(x.getAblockID().getAblockName())%>
                    </td>
                     <td>
                        <a href="EmployeeUpdateController?id=<%=x.getEmail()%>">Update</a>
                        <a href="EmployeeDeleteController?id=<%=x.getEmail()%>">Delete</a>
                        
                    </td>
                   
                   
                    
                </tr>
                <%
                    }
                %> 
           </div>
            </tbody>
        </table>
           <form action="EmployeeCreateController" >
            <button>Create</button>
        </form>
            </div>
    </div>

            
    </body>
</html>
