// var VALID_EMAIL = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);


//disable new suggestion submit unless suggestion message has values
// $( "#new-suggestion-submit" ).prop( "disabled", true );

// $("#suggestion-message").keyup(function () {

// 	if ($("#suggestion-message").val() == '' || $("#suggestion-message").val() == ' '){

// 		$( "#new-suggestion-submit" ).prop( "disabled", true );
// 	}
// 	else {
// 		//alert("submit is now enabled");

// 		$( "#new-suggestion-submit" ).prop( "disabled", false );

// 	}
// });



// var $newSuggestionForm = $('form#new_suggestion');
// $newSuggestionForm.bind( 'ajax:success', function(event, data) {
// 	// console.log(data);
// 	if (data.email) {
// 		$('.email-error-message').css('display','block').text(data.email);
// 	}

// 	if (data.spam_answer) {
// 		$('.spam-error-message').css('display','block').text(data.spam_answer);
// 	}
// });




// var validator = $( "#new_suggestion" );
// validator.element( "#test" );

//check for valid email address on email field blur
// $("#suggestion_email").blur(function () {

// 	if ($("#suggestion-email").val() != ''){

// 		if( VALID_EMAIL.test( $("#suggestion-email").val() ) != "true" ) {
// 		 /* do stuff here */ 
// 		 alert("your email address is invalid");
// 		}

// 	}
// }

// $("#test").validate({
//   // rules: {
//   //   // simple rule, converted to {required:true}
//   //   name: "required",
//   //   // compound rule
//   //   email: {
//   //     required: true,
//   //     email: true
//   //   }
//  // }
// });