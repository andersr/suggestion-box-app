$( "#new-suggestion-submit" ).prop( "disabled", true );

$("#suggestion-message").keyup(function () {

	if ($("#suggestion-message").val() == ''){

		$( "#new-suggestion-submit" ).prop( "disabled", true );
	}
	else {

		$( "#new-suggestion-submit" ).prop( "disabled", false );
	}
});