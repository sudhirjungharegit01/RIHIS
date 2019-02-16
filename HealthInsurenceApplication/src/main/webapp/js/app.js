function hidePop() {
	$("#pop1").css("display","none");
	$("#cover").css("display","none");
	$('#username1').val("");
	$('#password').val("");
	$('#username1').focus();
	}

$(document).ready(function() {
	$("#cover").mousemove(function(){
		  hidePop();
		  
		});
	
	/*Login page js start*/
	$("#loginbtn").on("click",function(){
		
		var username = $('#username1').val();
		var password = $('#password').val();
		
		$("#username1").keydown(function() {
			$(".error").remove();
		});
		
		$("#password").keydown(function() {
			$(".error").remove();
		});
		if (username.length < 1) {
			$('#username1').after('<span class="error">username is required</span>');
			$('#username1').focus();
			return;
		} 
     
     if (password.length < 1) {
			$('#password').after('<span class="error">password is required</span>');
			$('#password').focus();
			return;
		} 
   
		$.ajax({
			url : "getlogin.htm",
			data :{'userName': username,
				    'password':password
			},
			
			success : function(data) {
				if(data==0) {
					
					$("#pop1").html("Invailed user name or password");
					$("#cover").css("display","block");
					$("#pop1").css("display","block");
					
				}
				else{
					
				}
				
			}
		})
		
		
		
	})
	
	
	/*Login page js end*/
	
	
	$(".pclose").on("click",function() {
		$(".background_popup").css("display", "none");
	$(".popup_main").css("display", "none");
	})
	$('#username').keypress(function(){
		$('.chkuser2').remove();
		$('.chkuser').remove();
	})
	
	$('#password').keypress(function(){
		$('.chkuser2').remove();
		$('.chkuser').remove();
	})
	$("#username").blur( function() {
		
		var user=$("#username").val();
        if(user.length>0) {
		$.ajax({
			url :'checkuser.htm',
			data :{'userName': user},
			dataType:'json',
			success : function(result) {
				$('.chkuser').remove();
				$('.chkuser2').remove();
				if(result.length>20) {
				$('#username').after('<span class="chkuser2">'+$('#username').val()+" "+result+'</span>');
				$('#username').val('')
				$('#username').focus();
				
				}
				else {
					$('#username').after('<span class="chkuser">'+result+'</span>');
					
				}

			}
		});
        
        }//if
		
	});
	
	
	/** submit function Start */
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
	     
	     /*else if (password.length < 8) {
				$('#password').after('<span class="error">password lenth shuld be 8 char or more</span>');
				$('#password').focus();
				return;
			} */
	     
	     
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

	$(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			showAnim : "fold",
			autoSize : true,
			yearRange : "-50:+10",
			altFormat : "dd-mm-yy",
			dateFormat : 'dd-mm-yy',
			buttonText : "Choose",
		});

	});

	$.ajax({
		url : 'allcountry.htm',
		cache : false,
		dataType : 'json',
		success : function(result) {
			$.each(result, function(key, value) {
				$('<option>').val(key).text(value).appendTo("#country");
			});
		}
	});
});

$(document).on("change", "#country", function() {

	var selctedCntryId = $("#country").val();
	var text = $('#number')
	if ($("#country option:selected").text() != "Choose your country") {
		getCountryCode(selctedCntryId)
	}
	$("#state").find('option').remove();
	$('<option>').val("").text("Choose your state").appendTo("#state");
	text.val("")
	$("#city").find('option').remove();
	$('<option>').val("").text("-city-").appendTo("#city");
	$.ajax({
		url : "countryState.htm",
		data : {
			"countryId" : selctedCntryId
		},
		dataType : 'json',
		success : function(result) {
			$.each(result, function(key, value) {
				$('<option>').val(key).text(value).appendTo("#state");
			});

		}
	});
});

function getCountryCode(cID) {
	$.ajax({
		url : "countryCode.htm",

		data : "countryId=" + cID,
		success : function(result) {

			$('#number').val(result + " ")

		}
	});

}






$(document).on("change", "#state", function() {
	$("#city").find('option').remove();
	$('<option>').val("").text("-city-").appendTo("#city");
	var selctedStateId = $("#state").val();
	$.ajax({
		url : "stateCity.htm",
		data : {
			"stateId" : selctedStateId
		},
		dataType : 'json',
		success : function(result) {
			$.each(result, function(key, value) {
				$('<option>').val(key).text(value).appendTo("#city");
			});
		}
	});
});