
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core" prefix="d" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Collapsible sidebar using Bootstrap 3</title>
           <link  type="text/css" rel="stylesheet" href="https://vinaybuddy.github.io/HIS_File_Server/style5.css"/> 
         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
    </head>
<body >
<!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                     $(this).toggleClass('active');
                 });
             });
         </script>
 <%@include file="headerMain.jsp"%>

        <div class="wrapper">
            <!-- Sidebar Holder -->
                        <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Dashboard</h3>
                </div>

                <ul class="list-unstyled components">
                     <p>Vinay Pratap Singh</p> 
                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Application Registration</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="case/registerUser">Register Application</a></li>
                            <li><a href="#">Search Applications</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    <li class="active">
                        <a href="#homeSubmenu2" data-toggle="collapse" aria-expanded="false">Data Collection</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu2">
                            <li><a href="#">Collect Data</a></li>
                            <li><a href="#">Search Cases</a></li>
                        </ul>
                    </li>
                    
                    
                    
                    
                    <li class="active">
                        <a href="#homeSubmenu3" data-toggle="collapse" aria-expanded="false">Determine Eligibility</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu3">
                            <li><a href="#">Eligibility Results</a></li>
                            
                        </ul>
                    </li>
                    
                    
                    <li class="active">
                        <a href="#homeSubmenu4" data-toggle="collapse" aria-expanded="false">Correspondence</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu4">
                            <li><a href="#">View Pending Notice</a></li>
                            <li><a href="#">View History Notices</a></li>
                            
                        </ul>
                    </li>
                    
                    
                    
                    <li class="active">
                        <a href="#homeSubmenu5" data-toggle="collapse" aria-expanded="false">Reports</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu5">
                            <li><a href="#">Generate Report</a></li>
                            
                        </ul>
                    </li>
                    
                    <li class="active">
                        <a href="#homeSubmenu6" data-toggle="collapse" aria-expanded="false">Profile</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu6">
                            <li><a href="#">Edit Profile</a></li>
                            
                        </ul>
                    </li>
                    
                    <li class="active">
                        <a href="#homeSubmenu7" data-toggle="collapse" aria-expanded="false">Admin</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu7">
                            <li><a href="createCaseWorker">Create Case Worker</a></li>
                            <li><a href="viewCaseWorkers?cpn=1">View Case Workers</a></li>
                            
                        </ul>
                    </li>
                  
                </ul>
<ul class="list-unstyled CTAs">
                    <li><a  class="download">Logout</a></li>
</ul>
            </nav>
                       <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="navbar-btn">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div>
                         &nbsp;&nbsp;<%@include file="topmenu.jsp"%>
                        
                    </div>
                </nav>
                   