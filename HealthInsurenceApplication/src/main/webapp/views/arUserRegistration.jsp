<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://www.springframework.org/tags"  prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
    <style  type="text/css">
	
    </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Collapsible sidebar using Bootstrap 3</title>

         <!-- Bootstrap CSS CDN -->
          <spring:url value="/css/bootstrap-3.4.0.min.css"  var="bootstrap"  /> 
         <link rel="stylesheet" type=" text/css" href="${bootstrap}"/>
       
        <!-- Our Custom CSS -->
        <%-- <spring:url value="/css/style5.css"    htmlEscape="true" var="style5"  />
         <link  rel="stylesheet" type="text/css" href="${style5}"/> --%>
         <link  rel="stylesheet" href="https://vinaybuddy.github.io/HIS_File_Server/style5.css"/>
         
    </head>
    <body>


 ${bootstrap}
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>Dashboard</h3>
                </div>

                <ul class="list-unstyled components">
                    <p>Admin Name</p>
                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Application Registration</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="#">Register Application</a></li>
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
                            <li><a href="#">Create Case Worker</a></li>
                            <li><a href="#">View Case Workers</a></li>
                            
                        </ul>
                    </li>
                    
                    
                    <li>
                        <a href="#">About</a>
                        </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>

            </nav>
            
            
            
            
            
            
            

            <!-- Page Content Holder -->
            <div id="content">

                <nav  style="background-color:#66C"  class="navbar navbar-expand-lg navbar-dark bg-light">
  <div class="container-fluid">
    <div class="navbar-header">
     <button type="button" id="sidebarCollapse" class="navbar-btn">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
    </div>
    <ul class="nav navbar-nav ">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Application Registration<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Register Application</a></li>
          <li><a href="#">Search Applications</a></li>
        </ul>
      </li>



<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Data Collection
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Collect Data</a></li>
          <li><a href="#">Search Cases</a></li>
        </ul>
      </li>




	  <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Determine Eligibility<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Eligibility Results</a></li>
        </ul>
      </li>




	  <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Correspondence<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Register Application</a></li>
          <li><a href="#">Search Applications</a></li>
        </ul>
      </li>

	  <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Create Case Worker</a></li>
          <li><a href="#">View Case Workers</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>

<!-- 
        jQuery CDN
         <script src="js/jquery-3.3.1.min.js"></script>
         Bootstrap Js CDN
         <script src="js/bootstrap-3.4.0.min.js"></script>
 -->         <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                     $(this).toggleClass('active');
                 });
             });
         </script>
    </body>
</html>
    