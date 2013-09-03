#disable new suggestion submit unless suggestion message has values
$( "#new-suggestion-submit" ).prop( "disabled", true );
$("#suggestion-message").keyup ->
	if $("#suggestion-message").val().length != 0
		$( "#new-suggestion-submit" ).prop( "disabled", false )
	else
		$( "#new-suggestion-submit" ).prop( "disabled", true )



$newSuggestionForm = $('form#new_suggestion')

$newSuggestionForm.bind 'ajax:success', (event, data) ->
	$('.email-error-message').css('display','block').text(data.email) if data.email
	$('.spam-error-message').css('display','block').text(data.spam_answer) 	if data.spam_answer

# 	console.log(data);

# // var validator = $( "#new_suggestion" );
# // validator.element( "#test" );

# //check for valid email address on email field blur
# // $("#suggestion_email").blur(function () {

# // 	if ($("#suggestion-email").val() != ''){

# // 		if( VALID_EMAIL.test( $("#suggestion-email").val() ) != "true" ) {
# // 		 /* do stuff here */ 
# // 		 alert("your email address is invalid");
# // 		}

# // 	}
# // }

# // $("#test").validate({
# //   // rules: {
# //   //   // simple rule, converted to {required:true}
# //   //   name: "required",
# //   //   // compound rule
# //   //   email: {
# //   //     required: true,
# //   //     email: true
# //   //   }
# //  // }
# // });