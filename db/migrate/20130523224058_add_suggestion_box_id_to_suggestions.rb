class AddSuggestionBoxIdToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :suggestion_box_id, :integer
    add_index :suggestions, :suggestion_box_id
  end
end
