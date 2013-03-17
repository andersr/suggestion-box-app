class RenameSuggestionAnonToAnonSuggestion < ActiveRecord::Migration
  def change
  	rename_column :suggestions, :suggestion_anon, :anonymous_suggestion
  end
end
