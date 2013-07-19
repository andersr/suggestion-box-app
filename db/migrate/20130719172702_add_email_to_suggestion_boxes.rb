class AddEmailToSuggestionBoxes < ActiveRecord::Migration
  def change
    add_column :suggestion_boxes, :owner_email, :string
    add_column :suggestion_boxes, :owner_name, :string
  end
end
