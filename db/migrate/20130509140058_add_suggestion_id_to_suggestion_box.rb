class AddSuggestionIdToSuggestionBox < ActiveRecord::Migration
  def change
    add_column :suggestion_boxes, :suggestion_id, :integer
  end
end
