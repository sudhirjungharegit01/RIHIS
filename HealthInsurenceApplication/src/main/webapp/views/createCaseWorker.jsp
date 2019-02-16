<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
/** form validation start */
function formValidator() {
var firstName=$("#firstname").val();
var lastName=$("#lastname").val();
var firstName=$("#firstname").val();
var userName=$("#username").val();
var password=$("#password").val();
var dob=$("#datepicker").val();
var mobile=$("#mobile").val();
var email=$("#email").val();
var userRole=$("#role").val();
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
			 if (dob.length < 1) {
               $("#datepickerid").addClass('form-group has-error has-feedback');
				$('#datepicker').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#datepicker').after("<span class='chkuser2'>DOB  is required</span>");
				$('#datepicker').focus();
				return false;
			} 
	     
	     if (mobile.length < 1) {
               $("#mobileid").addClass('form-group has-error has-feedback');
				$('#mobile').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#mobile').after("<span class='chkuser2'>Mobile number  is required</span>");
				$('#mobile').focus();
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
	     
	     if (userRole.length < 1) {
				$("#rolid").addClass('form-group has-error has-feedback');
				$('#rol').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#rol').after("<span class='chkuser2'>invailed Email  </span>");
				$('#rol').focus();
				return false;
			}	    

         return true;

}

/** form validation end*/

/** submit function start */
$(document).on("click", "#submit", function() {
		var title = $('#title').val();
		var fulName = $('#name').val();
		var gender = $('#radio-one').val();
		var username = $('#username').val();
		var password = $('#password').val();
		var passwordReg=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
		var dob = $('#datepicker').val();
		var email = $('#email').val();
		var emailReg=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/
		var country = $('#country').val();
		var state = $('#state').val();
		var city = $('#city').val();
		var mobile = $('#number').val();
		$('.chkuser').remove();
		$('.chkuser2').remove();
		$("#title").keydown(function() {
			$(".error").remove();
		});
		
		$("#name").keydown(function() {
			$(".error").remove();
		});
		$("#radio-one").keydown(function() {
			$(".error").remove();
		});
		$("#username").keydown(function() {
			$(".error").remove();
		});
		$("#password").keydown(function() {
			$(".error").remove();
		});
		
		$("#datepicker").on("click",function() {
			$(".error").remove();
		});
		$("#datepicker").blur(function(){
			$(".error").remove();
			});
		$("#email").keydown(function() {
			$(".error").remove();
		});
		$("#country").on("change",function() {
			$(".error").remove();
		});
		$("#state").on("change",function() {
			$(".error").remove();
		});
		$("#city").on("change",function() {
			$(".error").remove();
		});
		$("#number").keydown(function() {
			$(".error").remove();
		});
		
		$(".error").remove();
		if (title.length < 1) {
			$('#title').after('<span class="error">Title is required</span>');
			$('#title').focus();
			return;
		} 
		/*else if (title!='Mr.'||title!='Mrs.'||title!='Miss') {
			$('#title').after('<span class="error">Title should be in(Mr. or Mrs. or Miss) formate</span>');
			
		} */
	     
	     if (fulName.length < 1) {
				$('#name').after('<span class="error">FullName is required</span>');
				$('#name').focus();
				return;
			} 
	     
	     if (gender.length < 1) {
				$('#radio-one').after('<span class="error">select the gender </span>');
				$('#radio-one').focus();
				return;
			} 
	     
	     if (username.length < 1) {
				$('#username').after('<span class="error">username is required</span>');
				$('#username').focus();
				return;
			} 
	     else if(username.length<5 ||username.length>15) {
	    	 $('#username').after('<span class="error">username length should be between(5-15) didgit</span>');
	    	 $('#username').focus();	
	    	 return;
	     }
	     
	     if (password.length < 1) {
				$('#password').after('<span class="error">password is required</span>');
				$('#password').focus();
				return;
			} 
	     
	     
	     
	     
	     else if (!password.match(passwordReg)) {
	    	 $('#password').after('<p class="error">password Contain at least 8 character <br>contain at least 1 number <br>contain at least 1 special caharacter(@,%,$) <br>contain at least 1 lowercase character (a-z) <br>contain at least 1 uppercase character (A-Z)</p>');
	    	 return;
	    	 
			} 
	     
	     if (dob.length < 1) {
				$('#datepicker').after('<span class="error">DOB is required</span>');
				$('#datepicker').focus();
				return;
			} 
	     
	     if (email.length < 1) {
				$('#email').after('<span class="error">email is required</span>');
				$('#email').focus();
				return;
			} 
	     else if(!email.match(emailReg)) {
	    	 $('#email').after('<span class="error">Invalid Email</span>');
	    	 $('#email').focus();
	    	 return;
	     }
	     
	     if (country.length < 1) {
				$('#country').after('<span class="error">country is required</span>');
				$('#country').focus();
				return;
			} 
	     
	     if (state.length < 1) {
				$('#state').after('<span class="error">state is required</span>');
				$('#state').focus();
				return;
			} 
	     if (city.length < 1) {
				$('#city').after('<span class="error">city is required</span>');
				$('#city').focus();
				return;
			} 
	     if (mobile.length < 4||mobile.length < 5) {
				$('#number').after('<span class="error">number is required</span>');
				return;
			} 
		 	
	     var frm = $("form").serialize();
			
			$.ajax({
				type : "POST",
				url : "registration.htm",
				data : $('form[name=userRegForm]').serialize(),
				success : function(data) {
					if(data!='Email is not sent Please Chek your Internet Connection'){
					$(".background_popup").css("display", "block");
					$(".popup_main").css("display", "block");}
					else {
						alert(data)
						
					}
					
				}
			})

	})
	
	
	
	/** submit function end */




$(document).ready(function() {

function formValidator() {
alert('ja shri ram')

return false;

}



$('#username').keydown(function(){
      $("#usernameid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
		$('.chkuser').remove();
	})
	
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
	
	$('#firstname').keydown(function(){
      $("#firstnameid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	$('#password').keydown(function(){
		$("#passwordid").removeClass('form-group has-error has-feedback');
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
	
	$('#role').keydown(function(){
		$("#roleid").removeClass('form-group has-error has-feedback');
				    $("span").remove();
		$('.chkuser2').remove();
	})
	/*  chek user name availability function start*/
$("#username").blur( function() {
  
  
  
		var user=$("#username").val();
        if(user.length>0) {
		$.ajax({
			url : 'checkuser',
			data :{'userName': user},
			success : function(result) {
				 $('.chkuser').remove(); 
				$('.chkuser2').remove();
				if(result.length>20) {
				 $("#usernameid").addClass('form-group has-error has-feedback');
				$('#username').after("<span class='glyphicon glyphicon-remove form-control-feedback'></span>");
				    
				$('#username').after('<span class="chkuser2">'+$('#username').val()+" "+result+'</span>');
				$('#username').val('')
				$('#username').focus();
								}
				else {
				    $("#usernameid").addClass('form-group has-success has-feedback');
				$('#username').after("<span class='glyphicon glyphicon-ok form-control-feedback'></span>");
				    
					$('#username').after('<span class="chkuser">'+result+'</span>');
					
				}

			}
		});
        
        }//if
		
	});
/*  chek user name availability function End */




    $("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			dateFormat : 'dd-mm-yy',
			maxDate : new Date(),
			minDate:new Date(1950),
			showAnim : "fold",
			autoSize : true,
			yearRange : "-50:+10",
		});
});
</script>
<div style="margin-left: 20%" class="container">
	<div>

		<div
			style="width: 40%; height: 50%; padding: 40px; border-radius: 25px; border: 2px solid #09C; background-color: rgba(255, 255, 255, 255); box-shadow: 5px 5px 5px #999999">
			<h2 style="color: #F60">Case Worker Registration !</h2>
			<br> <font color='green'>${SUCCESS}</font> <font color='red'>${ERROR}</font>
			<form:form method="post" action="regUser"
				onsubmit="return formValidator()" modelAttribute="arUser">


				<div id="firstnameid" class=" form-group">

					<label class="inpult_lable" for="firstname">FirstName:</label>
					<form:input path="firstName" class="form-control" id="firstname"
						placeholder="Enter FirstName" />
				</div>
				<div id="lastnameid" class=" form-group">
					<label class="inpult_lable" for="lastname">LastName:</label>
					<form:input path="lastName" class="form-control" id="lastname"
						placeholder="Enter LastName" />

				</div>

				<div id="usernameid" class=" form-group">
					<label class="inpult_lable" for="username">UserName:</label>
					<form:input path="userName" class="form-control" id="username"
						placeholder="Enter UserName" />

				</div>
				<div id="passwordid" class=" form-group">
					<label class="inpult_lable" for="password">password:</label>
					<form:password path="password" class="form-control" id="password"
						placeholder="Enter Password" />

				</div>

				<div id="datepickerid" class=" form-group">
					<label class="inpult_lable" for="datepicker">Date of Birth:</label>
					<form:input path="dateOfBirth" id="datepicker" readonly="true"
						class="form-control" placeholder="Enter Date of Birth" />

				</div>

				<div id="mobileid" class=" form-group">
					<label class="inpult_lable" for="mobile">Mobile:</label>
					<form:input path="mobileNamber" class="form-control" id="mobile"
						placeholder="Enter Mobile" />

				</div>

				<div id="emailid" class=" form-group">
					<label class="inpult_lable" for="email">Email:</label>
					<form:input path="email" class="form-control" id="email"
						placeholder="Enter Email" />

				</div>
				<div id="roleid" class=" form-group">
					<label class="inpult_lable" for="role">User Role:</label>
					<form:select path="role" items="${rolesList}" class="form-control"
						id="role" />
				</div>




				<div class="form-group">

					<input type="submit" id="submit" class="btn btn-info btn-block"
						value="submit">

				</div>
				<div class="form-group">

					<button type="reset" class="btn btn-warning btn-block">Cancle</button>

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

