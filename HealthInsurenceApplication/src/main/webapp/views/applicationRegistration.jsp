<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@include file="dashboard_menu.jsp"%>
<style type="text/css">
* vaildation start * /
.templetError {
	color: red;
	margin-left: 5px;
	position: relative;
	font-size: 16px;
}

label.error {
	display: inline;
}

.chkuser {
	color: green;
	margin-left: 5px;
	position: relative;
	font-size: 20px;
}

label.chkuser {
	display: inline;
}

.chkuser2 {
	color: red;
	margin-left: 5px;
	position: relative;
	font-size: 16px;
}

label.chkuser2 {
	display: inline;
}
/* vaildation end */
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
/*  jquery ready function start*/

$(document).ready(function(){
/* date picker function start  */
    $("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			dateFormat : 'dd-mm-yy',
			maxDate : new Date(),
			minDate:new Date(1950)
		});
		/* date picker function end  */
		
$("#datepicker").change(function(){
var dob=$("#datepicker").val();
var ssnPart1=$("#ssn1").val();
var ssnPart2=$("#ssn2").val();
var ssnPart3=$("#ssn3").val();
 if (!$.isNumeric(ssnPart1)) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn1').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#ssn1').after("<span class='chkuser2'>number only</span>");
				$('#ssn1').focus();
				return false;
			} 
			
else if (ssnPart1.length!= 3) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn1').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn1').focus();
				return false;
			} 
			if (!$.isNumeric(ssnPart2)) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn2').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn2').after("<span class='chkuser2'>number only</span>");
				$('#ssn2').focus();
				return false;
			} 
			
		 else if (ssnPart2.length!=2) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn2').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn2').focus();
				return false;
			} 
			
			 if (!$.isNumeric(ssnPart3)) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn3').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#ssn3').after("<span class='chkuser2'>number only</span>");
				$('#ssn3').focus();
				return false;
			} 
			 else if (ssnPart3.length !=4) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn3').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn3').focus();
				return false;
			} 
var ssn=(ssnPart1.concat(ssnPart2)).concat(ssnPart3)
$.ajax({
           type:"GET",
           contentType:"application/json",
          data:{"dob":dob,"ssn":ssn},
          url:"${pageContext.request.contextPath}/ssnValidator",
          success:function(data){
          alert("vailed SSN!!")
          },
          error:function(data){
          alert("Sorry! your Enter Details does not exist<br>Please Enter vailed SSN or DOB");
          	$('#datepicker').val("");
          		$('#ssn1').val("");
          			$('#ssn2').val("");
          				$('#ssn3').val("");
          $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn1').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn2').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn3').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn1').focus();
          }
          
})
});
/* error clening block start  */
  $('#firstname').keydown(function(){
      $("#firstnameid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
	$('#lastname').keydown(function(){
      $("#lastnameid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
	$('#surname').keydown(function(){
      $("#surnameid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	$('#password').keydown(function(){
		$("#passwordid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
	$('#ssn1').keydown(function(){
	$('#datepicker').val("");
		$("#ssnid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
	$('#ssn2').keydown(function(){
		$('#datepicker').val("");
		$("#ssnid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
	$('#ssn3').keydown(function(){
		$('#datepicker').val("");
		$("#ssnid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	$('#datepicker').blur(function(){
		$("#datepickerid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
	$('#mobile').keydown(function(){
		$("#mobileid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	$('#email').keydown(function(){
		$("#emailid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	
/* error clening block start  */



		
		});
/* jquery ready function end */

/*  calling webservices start*/

/*  calling webservices start*/


/** form validation start */
function formValidator() {
var firstName=$("#firstname").val();
var lastName=$("#lastname").val();
var surName=$("#surname").val();
var userName=$("#username").val();
var password=$("#password").val();
var dob=$("#datepicker").val();
var mobile=$("#mobile").val();
var email=$("#email").val();
var userRole=$("#role").val();
var ssnPart1=$("#ssn1").val();
var ssnPart2=$("#ssn2").val();
var ssnPart3=$("#ssn3").val();
var passwordReg=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
var emailReg=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/
if (firstName.length < 1) {
               $("#firstnameid").addClass('form-group has-error has-feedback');
				$('#firstname').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#firstname').after("<span class='chkuser2'>FirstName is required</span>");
				$('#firstname').focus();
				return false;
			} 
	     
	     if (lastName.length < 1) {
               $("#lastnameid").addClass('form-group has-error has-feedback');
				$('#lastname').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#lastname').after("<span class='chkuser2'>LastName is required</span>");
				$('#lastname').focus();
				return false;
			} 
			
			 if (surName.length < 1) {
               $("#surnameid").addClass('form-group has-error has-feedback');
				$('#surname').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#surname').after("<span class='chkuser2'>SurName is required</span>");
				$('#surname').focus();
				return false;
			} 
	     
	      if (userName.length < 1) {
               $("#usernameid").addClass('form-group has-error has-feedback');
				$('#username').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#username').after("<span class='chkuser2'>UserName is required</span>");
				$('#username').focus();
				return false;
			} 
			else if(userName.length<5 ||username.length>15) {
	    	 $("#usernameid").addClass('form-group has-error has-feedback');
				$('#username').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#username').after("<span class='chkuser2'>username length should be between(5-15) didgit</span>");
				$('#username').focus();
	    	 return false;
	     }
			
			 if (password.length < 1) {
               $("#passwordid").addClass('form-group has-error has-feedback');
				$('#password').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#password').after("<span class='chkuser2'>password is required</span>");
				$('#password').focus();
				return false;
			} 
			
			else if (!password.match(passwordReg)) {
			$("#passwordid").addClass('form-group has-error has-feedback');
				$('#password').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
   $('#password').after('<p class="chkuser2">password Contain at least 8 character <br>contain at least 1 number <br>contain at least 1 special caharacter(@,%,$) <br>contain at least 1 lowercase character (a-z) <br>contain at least 1 uppercase character (A-Z)</p>');
				$('#password').focus();
	    	  	 return false;
	    	 
			} 
	     if (email.length < 1) {
               $("#emailid").addClass('form-group has-error has-feedback');
				$('#email').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#email').after("<span class='chkuser2'>Email  is required</span>");
				$('#email').focus();
				return false;
			} 
			
			else if(!email.match(emailReg)) {
	    	  $("#emailid").addClass('form-group has-error has-feedback');
				$('#email').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#email').after("<span class='chkuser2'>invailed Email  </span>");
				$('#email').focus();
	    	 return false;
	     }
	      if (mobile.length < 1) {
               $("#mobileid").addClass('form-group has-error has-feedback');
				$('#mobile').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#mobile').after("<span class='chkuser2'>Mobile number  is required</span>");
				$('#mobile').focus();
				return false;
			} 
			
		
			 if (ssnPart1.length < 1) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn1').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn1').focus();
				return false;
			} 
			
				else if (!$.isNumeric(ssnPart1)) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn1').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#ssn1').after("<span class='chkuser2'>number only</span>");
				$('#ssn1').focus();
				return false;
			} 
			
			else if (ssnPart1.length >3) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn1').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#ssn1').focus();
				return false;
			} 
			
			 if (ssnPart2.length < 1) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn2').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn2').focus();
				return false;
			} 
			
				else if (!$.isNumeric(ssnPart2)) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn2').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn2').after("<span class='chkuser2'>number only</span>");
				$('#ssn2').focus();
				return false;
			} 
			
			 else if (ssnPart2.length > 3) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn2').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn2').focus();
				return false;
			} 
			
			 if (ssnPart3.length < 1) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn3').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn3').focus();
				return false;
			} 
			
				else if (!$.isNumeric(ssnPart3)) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn3').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#ssn3').after("<span class='chkuser2'>number only</span>");
				$('#ssn3').focus();
				return false;
			} 
			
			 else if (ssnPart3.length >4) {
               $("#ssnid").addClass('form-group has-error has-feedback');
				$('#ssn3').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				$('#ssn3').focus();
				return false;
			} 
			
	    
	     if (dob.length < 1) {
               $("#datepickerid").addClass('form-group has-error has-feedback');
				$('#datepicker').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#datepicker').after("<span class='chkuser2'>DOB  is required</span>");
				$('#datepicker').focus();
				return false;
			} 
	     
         return true;
}

/** form validation end*/

</script>
<div style="margin-left: 20%" class="container">
	<div>

		<div
			style="width: 40%; height: 50%; padding: 40px; border-radius: 25px; border: 2px solid #09C; background-color: rgba(255, 255, 255, 255); box-shadow: 5px 5px 5px #999999">
			<h2 style="color: #F60">Case User Registration !</h2>
			<br> <font color='green'> ${CASE_REGISTER_SUCCESS}</font> <font color='red'>${CASE_REGISTER_FAIL}</font>
			<form:form method="post" action=""
				onsubmit="return formValidator()" modelAttribute="caseData">


				<div id="firstnameid" class=" form-group">

					<label  for="firstname">FirstName:</label>
					<form:input path="firstName" class="form-control" id="firstname"
						placeholder="Enter FirstName" />
				</div>
				<div id="lastnameid" class=" form-group">
					<label  for="lastname">LastName:</label>
					<form:input path="lastName" class="form-control" id="lastname"
						placeholder="Enter LastName" />

				</div>

				<div id="surnameid" class=" form-group">
					<label  for="surname">SurName:</label>
					<form:input path="surName" class="form-control" id="surname"
						placeholder="Enter SurName" />
				</div>
								<div  id="ssnid" class="form-group row">
					<div class="col-xs-4">
						<label for="ssn1">SSN: </label> <form:input class="form-control" path="ssn_1"
							id="ssn1" placeholder="AAA" maxlength="3"/>
					</div>
					<div class="col-xs-4">
					<label  class="input_label" for="ssn2">&nbsp;</label>
						<form:input class="form-control" id="ssn2" path="ssn_2" placeholder="GG" maxlength="2"/>
					</div>
					<div class="col-xs-4">
					<label class="input_label"  for="ssn3">&nbsp; </label>
						<form:input class="form-control" id="ssn3" path="ssn_3" placeholder="SSSS" maxlength="4"/>
					</div> 
				</div>
 <label class=" control-label" ><font color="#666" data-toggle="tooltip" title="formate of ssn number">SSN Example:721-07-3456</font></label>
				<div id="datepickerid" class=" form-group">
					<label  for="datepicker">Date of Birth:</label>
					<form:input path="dateOfBirth" id="datepicker" readonly="true"
						class="form-control" placeholder="Enter Date of Birth" />
				</div>
				<div id="usernameid" class=" form-group">
					<label  for="username">UserName:</label>
					<form:input path="userName" class="form-control" id="username"
						placeholder="Enter UserName" />

				</div>
				<div id="passwordid" class=" form-group">
					<label  for="password">password:</label>
					<form:password path="password" class="form-control" id="password"
						placeholder="Enter Password" />

				</div>
				<div id="emailid" class=" form-group">
					<label  for="email">Email:</label>
					<form:input path="email" class="form-control" id="email"
						placeholder="Enter Email" />

				</div>
				<div id="mobileid" class=" form-group">
					<label  for="mobile">Mobile:</label>
					<form:input path="mobileNumber" class="form-control" id="mobile"
						placeholder="Enter Mobile" />
				</div>
				<div></div>
				<div class="form-group">
					<input type="submit" id="submit" class="btn btn-success btn-block"
						value="Register"/>
				</div>
			</form:form>
		</div>
	</div>
</div>
</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>

