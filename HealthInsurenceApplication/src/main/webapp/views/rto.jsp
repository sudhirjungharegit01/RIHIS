<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Collapsible sidebar using Bootstrap 3</title>
  <style type="text/css">
     /*
    DEMO STYLE
*/
@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";


body {
    font-family: 'Poppins', sans-serif;
    background: #fafafa;
}

p {
    font-family: 'Poppins', sans-serif;
    font-size: 1.1em;
    font-weight: 300;
    line-height: 1.7em;
    color: #999;
}

a, a:hover, a:focus {
    color: white;
    text-decoration: none;
    transition: all 0.3s;
}

.navbar {
    padding: 15px 10px;
    background: #fff;
    border: none;
    border-radius: 0;
    margin-bottom: 40px;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
    box-shadow: none;
    outline: none !important;
    border: none;
}

.line {
    width: 100%;
    height: 1px;
    border-bottom: 1px dashed #ddd;
    margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */
.wrapper {
    display: flex;
    align-items: stretch;
    perspective: 1500px;
}

#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #7386D5;
    color: white;
    transition: all 0.6s cubic-bezier(0.945, 0.020, 0.270, 0.665);
    transform-origin: bottom left;
}

#sidebar.active {
    margin-left: -250px;
    transform: rotateY(100deg);
}

#sidebar .sidebar-header {
    padding: 20px;
    background: #6d7fcc;
}

#sidebar ul.components {
    padding: 20px 0;
    border-bottom: 1px solid #47748b;
}

#sidebar ul p {
    color: white;
    padding: 10px;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
    text-decoration: none;
}
#sidebar ul li a:hover {
    color: #7386D5;
    background: #fff;
}

#sidebar ul li.active > a, a[aria-expanded="true"] {
    color: white;
    background: #6d7fcc;
    text-decoration: none;
}


a[data-toggle="collapse"] {
    position: relative;
}

a[aria-expanded="false"]::before, a[aria-expanded="true"]::before {
    content: '\e259';
    display: block;
    position: absolute;
    right: 20px;
    font-family: 'Glyphicons Halflings';
    font-size: 0.6em;
}
a[aria-expanded="true"]::before {
    content: '\e260';
}


ul ul a {
    font-size: 0.9em !important;
    padding-left: 30px !important;
    background: #6d7fcc;
    color:white;
    text-decoration: none;
}

ul.CTAs {
    padding: 20px;
}

ul.CTAs a {
    text-align: center;
    font-size: 0.9em !important;
    display: block;
    border-radius: 5px;
    margin-bottom: 5px;
    text-decoration: none;
}

a.download {
    background: #fff;
    color: #7386D5;
}

a.article, a.article:hover {
    background: #6d7fcc !important;
    color: #fff !important;
    text-decoration: none;
}



/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */
#content {
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}

#sidebarCollapse {
    width: 40px;
    height: 40px;
    background: #f5f5f5;
}

#sidebarCollapse span {
    width: 80%;
    height: 2px;
    margin: 0 auto;
    display: block;
    background: #555;
    transition: all 0.8s cubic-bezier(0.810, -0.330, 0.345, 1.375);
    transition-delay: 0.2s;
}

#sidebarCollapse span:first-of-type {
    transform: rotate(45deg) translate(2px, 2px);
}
#sidebarCollapse span:nth-of-type(2) {
    opacity: 0;
}
#sidebarCollapse span:last-of-type {
    transform: rotate(-45deg) translate(1px, -1px);
}


#sidebarCollapse.active span {
    transform: none;
    opacity: 1;
    margin: 5px auto;
}


/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */
@media (max-width: 768px) {
    #sidebar {
        margin-left: -250px;
        transform: rotateY(90deg);
    }
    #sidebar.active {
        margin-left: 0;
        transform: none;
    }
    #sidebarCollapse span:first-of-type,
    #sidebarCollapse span:nth-of-type(2),
    #sidebarCollapse span:last-of-type {
        transform: none;
        opacity: 1;
        margin: 5px auto;
    }
    #sidebarCollapse.active span {
        margin: 0 auto;
    }
    #sidebarCollapse.active span:first-of-type {
        transform: rotate(45deg) translate(2px, 2px);
    }
    #sidebarCollapse.active span:nth-of-type(2) {
        opacity: 0;
    }
    #sidebarCollapse.active span:last-of-type {
        transform: rotate(-45deg) translate(1px, -1px);
    }

}


.topmenu{
 position:absolute;
 top:0px;
 left:280px;
}
     
  </style>
         <!-- Bootstrap CSS CDN -->
       <!--  <link  type="text/css"  rel="stylesheet"  href="css/bootstrap-3.4.0.min.css"/> -->
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
       
         <!-- <script  type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
         <script  type="text/javascript"  src="js/bootstrap-3.4.0.min.js"></script> -->
         <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         
         
           </head>
    <body>



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
                    
                    
                    
                </ul>

            </nav>
                    <!-- Page Content Holder -->
           
             <div id="content">
                <nav    class="navbar navbar-expand-lg navbar-dark bg-light ">
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
</nav></div>
            </div>

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
            
            
            
            

            
      
    </body>
</html>
    