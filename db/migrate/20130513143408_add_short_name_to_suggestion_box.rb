class AddShortNameToSuggestionBox < ActiveRecord::Migration
  def change
    add_column :suggestion_boxes, :short_name, :string
    remove_column :organizations, :short_name
  end
end
