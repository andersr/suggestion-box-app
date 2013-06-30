class RemoveSuggestionFromSuggestionFields < ActiveRecord::Migration
 def change
  	rename_column :suggestions, :suggestion_message, :message
  	rename_column :suggestions, :anonymous_suggestion, :anonymous
  end
end
