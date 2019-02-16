<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome To RegistrationForm</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Course Registration Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script src="./js/jquery-1.7.1.js"></script>
<script src="./js/app.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <!-- Meta tag Keywords -->
  <link href = "./js/date/jquery-ui.css"
         rel = "stylesheet">
      <script src = "./js/date/jquery-1.10.2.js"></script>
      <script src = "./js/date/jquery-ui.js"></script>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Course Registration Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- Meta tag Keywords -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<!-- //js -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<!-- //web-fonts --> 

</head>
<body>
<div class="background_popup"></div>
<div class="popup_main">
<div class="popup_window"><table width="100%" border="0" align="center" cellspacing="1" cellpadding="1" >
  
  <tr valign="top">
    <td  align="center"><img src="images/right.png" width="200" height="200" /></td>
  </tr>
  <tr>
    <td class="heading1">Registration completed successfully</td>
  </tr>
  <tr>
    <td align="center" class="heading2">Please check your registerd email for email verification</td>
  </tr>
  <tr><td align="center" style="padding-top:10px">
    <a href="#" role="button" class="vt btn btn-info btn-lg  ">OK</a>

  </td></tr>
</table>
</div>
<div class="pclose"><img src="images/close.png" width="50" height="50" /></div>
</div>
<div class="video"> 
	<div class="center-container">
	    <div class="w3ls-agileinfo">
			<h1> Student Registration Form </h1>	
		</div>
		 <div class="bg-agile">
			<h2>Training Course </h2>
			<div class="login-form">	
				<form:form action="regUser" method="POST" modelAttribute="arUser"
		name="userRegForm" id="userRegForm">
					<form:input path="firstName"   id="firstname"  name="firstname" placeholder="FirstName"/>
					<form:input path="lastName"  id="lastname" name="lastname" placeholder="LastName"  />
					<form:input path="username"  id="username" name="username" placeholder="username"  />
					<form:password path="password" id="password" name="password" placeholder="password"   />
					<form:input path="dateOfBirth" id="datepicker" name="dob" placeholder="dob" />
					<input type="email"  id="email" name="email" placeholder="Email"  />
					<div>
					<div class="left-w3-agile">
						<select class="form-control" name="country" id="country">
							<option value="">Choose your country</option>
							<form:select items="${rolesList}" path="role" class="form-control" name="role" id="role" />
						</select>
					</div>
					<div class="right-agileits">
						<select class="form-control" name="state" id="state">
							<option value="">Choose your state</option>
						</select>
					</div>
					<div class="left-w3-agile2">
						<select id="city" name="city" class="form-control">
							<option value="">-city-</option>
						</select>
					</div></div>
					<form:input path="mobileNamber"  name="mobile" id="number" class="phone_number_user"   placeholder="Phone Number" />
					<input type="button" id="submit" value="Submit">
				</form:form>	
			</div>	
		</div>
	<!-- //banner --> 
	 <!--copyright-->
		<div class="copy w3ls">
		    <p>&copy; 2019 Course Registration Form . All Rights Reserved  |  </p>
	    </div>
	<!--//copyright-->
	</div>	
</div>	

</body>
</html>