//disable new suggestion submit unless suggestion message has values
$( "#new-suggestion-submit" ).prop( "disabled", true );

$("#suggestion-message").keyup(function () {

	if ($("#suggestion-message").val() == '' || $("#suggestion-message").val() == ' '){

		$( "#new-suggestion-submit" ).prop( "disabled", true );
	}
	else {

		$( "#new-suggestion-submit" ).prop( "disabled", false );
	}
});

//check for valid email address on email field blur
//$("#suggestion_email").blur(function () {
	//alert("you just left the email field");
//});
