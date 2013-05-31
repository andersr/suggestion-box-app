module SuggestionsHelper
	def build_suggestion
		@suggestion = suggestion_box.suggestions.build
	end
end
