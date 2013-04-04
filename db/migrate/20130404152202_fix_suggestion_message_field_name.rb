class FixSuggestionMessageFieldName < ActiveRecord::Migration

  def change
    rename_column :suggestions, :message, :suggestion_message
  end
end
