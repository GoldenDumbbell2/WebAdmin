<%-- 
    Document   : history
    Created on : May 9, 2023, 4:36:11 PM
    Author     : TADAR
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.History"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.Date"%>
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
                    <li  class="active-link" >
                        <a href="HistoryController" ><i class="fa fa-table  "></i>Resident's History </a>
                    </li>
                    <li>
                        <a href="HistoryOutSideCarController" ><i class="fa fa-table "></i>Foreigner's History </a>
                    </li>
                    
                </ul>
                            </div>

        </nav>
        
          <div id="page-wrapper" >
            <div id="page-inner">
                
                <form action="HistorySearchController" method="GET">
        <input class="field_class" type="text" name="search" value="" required=""/><button>Search</button>
                    </form>
                
                <div class="row text-center pad-top">
    <table class="fl-table">
            <thead>
                <tr>
                    <th>Car Plate</th>
                    <th>TimeIn</th>
                    <th>TimeOut</th>
                  
                </tr>
            </thead>
            <tbody>
                <%
                    List<History> ds = (ArrayList<History>) request.getAttribute("listHistory");
                // Setting the pattern
                   SimpleDateFormat simpleformat = new SimpleDateFormat("MMMM dd /yyyy, hh:mm:ss");

                %>

                <%
                    for (History x : ds) {
                        
                %>
                <tr>
                    <td>
                       <%=(x.getCarID().getCarPlate())%>
                    </td>
                    <td>
                        <%=(simpleformat.format(x.getTime_In()))%>
                    </td>
                    <td>
                        <%=(simpleformat.format(x.getTime_Out()))%>
                    </td>
                   
                    
                </tr>
                <%
                     
                }
                %> 
                      </div>

            </tbody>
        </table>
                      </div>
    </div>

           
    </body>
</html>
